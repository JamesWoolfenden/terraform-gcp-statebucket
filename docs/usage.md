## Usage

When working with Terraform as part of a team, instead of a local terrraform.tfstate file, a shared remote state store is required, for GCP this is the google_storage_bucket.
But if we want to automate everything via Terraform? Traditionally we would have to create the initial bucket by hand via the console or by the cli and the resource unmanaged. 
The module and example solves the issue of creating a state bucket in Terraform using Terrraform itself.

## But how?
The Makefile in folder *examples\examplesA* has a number of tasks, one specifically to create the initial bucket:
```
make first
```
This makes the lock DB table, the state (google_storage_bucket) bucket, fills out and creates the remote_state.tf file and then copies the state from the local disk to the bucket.PHEW. The State of the bucket is now managed along with any future resources.

On the second and subsequent runs you use:
```
make build
``` 