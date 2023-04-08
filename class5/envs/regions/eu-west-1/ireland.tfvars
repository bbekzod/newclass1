public_key = "~/.ssh/id_rsa.pub"
region     = "eu-west-1"
key_name1  = "state-demo1-key"
key_name2  = "state-demo2-key"


tags = {
  Name    = "Demo"
  Team    = "Devops"
  Quarter = 2
  Billing = "cycle"
}

vpc_cidr_block = "172.16.0.0/16"
public_subnet_1_cidr_block = "172.16.1.0/24"
public_subnet_2_cidr_block = "172.16.2.0/24"
public_subnet_3_cidr_block = "172.16.3.0/24"