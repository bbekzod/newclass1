bo:
	terraform workpace new ohio || terraform workspace select ohio && terraform init && terraform apply -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve

do:
	terraform workpace new ohio || terraform workspace select ohio && terraform init && terraform destroy -var-file envs/regions/us-east-2/ohio.tfvars  -auto-approve


build-ireland:
	terraform workspace new ireland 	|| terraform workspace select ireland  && terraform init &&    		terraform  apply   -var-file envs/regions/eu-west-1/ireland.tfvars --auto-approve

destroy-ireland:
	terraform workspace new ireland 	|| terraform workspace select ireland  && terraform init &&  		terraform  destroy   -var-file envs/regions/eu-west-1/ireland.tfvars --auto-approve

all:
	make bo && make build-ireland


destroy-all:
	make do && make destroy-ireland 