```sh
terraform init -backend=true \
    -backend-config="bucket=tfstate-891377404175" \
    -backend-config="key=dev/04-backend-cli/terraform.tfstate" \
    -backend-config="region=us-east-1" \
    -backend-config="dynamodb_table=tflock-tfstate-891377404175" \
    -reconfigure