#Makefile

.PHONY: all

all: init plan


lock:
	@$(TERRAFORM) apply -target module.statebucket.aws_dynamodb_table.dynamodb-state-lock -auto-approve


first: terraform/init lock
	@$(TERRAFORM) apply -target module.statebucket.google_storage_bucket.statebucket -auto-approve
	@$(TERRAFORM) apply -target module.statebucket.local_file.remote_state -auto-approve
	@$(TERRAFORM) init -force-copy
