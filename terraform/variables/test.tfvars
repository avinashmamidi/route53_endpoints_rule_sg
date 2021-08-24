# Outbound Params
outbound_name               = "outbound_test_endpoint"
outbound_allowed_resolvers  = ["192.168.100.10/32", "192.168.100.11/32"]
outbound_vpc_id             = "vpc-0b1a467e85"
outbound_ip_addresses       = [
                                  {
                                    subnet_id = "subnet-05f3a4202f"
                                  },
                                  {
                                    subnet_id = "subnet-0075e31df724"
                                  },
                                      {
                                    subnet_id = "subnet-06308f70ab7"
                                  }
                                ]

# Inbound Params
inbound_name                 =  "inbound_test_endpoint"
inbound_allowed_resolvers    =  ["192.168.100.10/32"]
inbound_vpc_id               =  "vpc-0b1a467e857"
inbound_ip_addresses         =  [
                                    {
                                      ip        = "10.0.0.76"
                                      subnet_id = "subnet-05f3a4202f1"
                                    },
                                    {
                                      ip        = "10.0.2.76"
                                      subnet_id = "subnet-0075e31df72"
                                    }
                                  ]

# Outbound Rule Params
rule_name                     =  "outbount_rule_name"
rule_associated_vpcs          =  ["vpc-0b1a467e857"]
forward_domain                =  "ad.mycompany.com."
rule_forward_ips              =  ["192.168.100.10", "192.168.100.11"]
resource_share_accounts       =  ["12345", "67890"]
