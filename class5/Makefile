bo:
	terraform apply -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve

do:
	terraform destroy -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve


build-ireland:
	terraform apply -var-file envs/regions/eu-west-1/ireland.tfvars  -auto-approve

destroy-ireland:
	terraform destroy -var-file envs/regions/eu-west-1/ireland.tfvars  -auto-approve

all:
	terraform apply -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve
	terraform apply -var-file envs/regions/eu-west-1/ireland.tfvars  -auto-approve

dall:
	terraform destroy -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve
	terraform destroy -var-file envs/regions/eu-west-1/ireland.tfvars  -auto-approve
