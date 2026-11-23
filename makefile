dev-init:
	git pull
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config="path=roboshop-terraform/dev/terraform.tfstate" -reconfigure	
dev-plan:
	terraform plan -var-file=./environments/dev/main.tfvars -out=tfplan	
dev-apply: dev-init 
	terraform apply tfplan	-auto-approve
dev-destroy:dev-init
	terraform destroy -var-file=./environments/dev/main.tfvars -auto-approve
prod-init:
	rm -rf .terraform/terraform.tfstate
	terraform init -backend-config="path=roboshop-terraform/prod/terraform.tfstate" -reconfigure
prod-plan:
	terraform plan -var-file=./environments/prod/main.tfvars -out=tfplan
prod-apply:prod-init
	terraform apply tfplan -auto-approve	
prod-destroy:prod-init
	terraform destroy -var-file=./environments/prod/main.tfvars -auto-approve
