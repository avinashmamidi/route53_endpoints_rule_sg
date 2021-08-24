module "route53-outbound" {
  source            = "../modules/route53_endpoint_sg"
  name              = var.outbound_name
  allowed_resolvers = var.outbound_allowed_resolvers
  direction         = "outbound"
  vpc_id            = var.outbound_vpc_id
  ip_addresses      = var.outbound_ip_addresses
}

module "route53-inbound" {
  source            = "../modules/route53_endpoint_sg"
  name              = var.inbound_name
  allowed_resolvers = var.inbound_allowed_resolvers
  direction         = "inbound"
  vpc_id            = var.inbound_vpc_id
  ip_addresses      = var.inbound_ip_addresses
}


module "route53-rule" {
  source                  = "../modules/route53_outbound_rule"
  name                    = var.rule_name
  associated_vpcs         = var.rule_associated_vpcs
  forward_domain          = var.forward_domain
  forward_ips             = var.rule_forward_ips
  resolver_endpoint       = module.route53-outbound.endpoint_id
  resource_share_accounts = var.resource_share_accounts
}


//module "route53-outbound" {
//  source            = "../modules/route53_endpoint_sg"
//  name= ""
//  allowed_resolvers = ["192.168.100.10/32", "192.168.100.11/32"]
//  direction         = "outbound"
//  vpc_id            = "vpc-0b1a467e85796eabc"
//
//  ip_addresses      = [
//    {
//      subnet_id = "subnet-05f3a4202f1e7127f"
//    },
//    {
//      subnet_id = "subnet-0075e31df72419f9c"
//    },
//        {
//      subnet_id = "subnet-06308f70ab7b52003"
//    }
//  ]
//}
//
//module "route53-inbound" {
//  source            = "../modules/route53_endpoint_sg"
//  name              = "corporate-vpn"
//  allowed_resolvers = ["192.168.100.10/32"]
//  direction         = "inbound"
//  vpc_id            = "vpc-0b1a467e85796eabc"
//
//  ip_addresses      = [
//    {
//      ip        = "10.0.0.76"
//      subnet_id = "subnet-05f3a4202f1e7127f"
//    },
//    {
//      ip        = "10.0.2.76"
//      subnet_id = "subnet-0075e31df72419f9c"
//    }
//  ]
//}
//
//
//module "route53-rule-ad-corp" {
//  source            = "../modules/route53_outbound_rule"
//  name = ""
//  associated_vpcs   = ["vpc-0b1a467e85796eabc"]
//  forward_domain    = "ad.mycompany.com."
//  forward_ips       = ["192.168.100.10", "192.168.100.11"]
//  resolver_endpoint = module.route53-outbound.endpoint_id
//  resource_share_accounts = []
//}