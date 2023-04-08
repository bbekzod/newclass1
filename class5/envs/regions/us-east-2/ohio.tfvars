public_key = "~/.ssh/id_rsa.pub"
region     = "us-east-2"
key_name1  = "state-demo1-key"
key_name2  = "state-demo2-key"


tags = {
  Name    = "Demo"
  Team    = "Devops"
  Quarter = 2
  Billing = "cycle"
}

vpc_cidr_block = "10.0.0.0/16"
public_subnet_1_cidr_block = "10.0.1.0/24"
public_subnet_2_cidr_block = "10.0.2.0/24"
public_subnet_3_cidr_block = "10.0.3.0/24"