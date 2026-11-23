dev-init:
	terraform init -backend-config="path=terraform.tfstate" -reconfigure	
dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars -out=tfplan	
dev-apply:
	terraform apply tfplan	
prod-init:
	terraform init -backend-config="path=terraform.tfstate" -reconfigure
prod-plan:
	terraform plan -var-file=./environments/prod/main.tfvars -out=tfplan
prod-apply:
	terraform apply tfplan	
	