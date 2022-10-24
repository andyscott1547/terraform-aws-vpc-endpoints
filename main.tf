# main.tf

resource "aws_security_group" "allow_vpc_endpoint" {
  name        = var.sg_name
  description = "Allow traffic to vpc endpoints"
  vpc_id      = var.vpc_id
  tags = {
    Name = var.sg_name
  }
}

resource "aws_security_group_rule" "allow_vpc_endpoint" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = var.allowed_cidr_blocks
  security_group_id = aws_security_group.allow_vpc_endpoint.id
  description       = "Allow 443 traffic to vpc endpoints"
}

resource "aws_vpc_endpoint" "interface" {
  for_each            = local.interface_endpoints
  service_name        = each.key
  vpc_id              = var.vpc_id
  private_dns_enabled = var.private_dns_enabled
  subnet_ids          = var.subnet_ids
  security_group_ids  = [aws_security_group.allow_vpc_endpoint.id]
  tags = {
    Name = each.key
    PHZ  = each.value
  }
  vpc_endpoint_type = "Interface"
}

resource "aws_route53_zone" "interface_phz" {
  for_each = var.private_dns_enabled ? {} : local.interface_endpoints
  name     = each.value
  vpc {
    vpc_id = var.vpc_id
  }
  tags = {
    vpce = true
  }
  lifecycle {
    ignore_changes = [
      vpc,
    ]
  }
}

resource "aws_route53_record" "dev_ns" {
  for_each = var.private_dns_enabled ? {} : local.interface_endpoints
  zone_id  = aws_route53_zone.interface_phz[each.key].zone_id
  name     = each.value
  type     = "A"
  alias {
    name                   = aws_vpc_endpoint.interface[each.key].dns_entry[0].dns_name
    zone_id                = aws_vpc_endpoint.interface[each.key].dns_entry[0].hosted_zone_id
    evaluate_target_health = true
  }
}

resource "aws_vpc_endpoint" "gateway" {
  for_each          = local.gateway_endpoints
  service_name      = each.key
  vpc_id            = var.vpc_id
  vpc_endpoint_type = "Gateway"
  route_table_ids   = var.route_table_ids
  tags = {
    Name = each.key
  }
}