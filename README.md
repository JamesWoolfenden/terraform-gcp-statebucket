# terraform-gcp-statebucket

[![Build Status](https://github.com/JamesWoolfenden/terraform-gcp-statebucket//workflows/Verify%20and%20Bump/badge.svg?branch=master)](https://github.com/JamesWoolfenden/terraform-gcp-statebucket)
[![Latest Release](https://img.shields.io/github/release/JamesWoolfenden/terraform-gcp-statebucket.svg)](https://github.com/JamesWoolfenden/terraform-gcp-statebucket/releases/latest)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
[![pre-commit](https://img.shields.io/badge/checkov-verified-brightgreen)](https://www.checkov.io/)

Terraform module to provision a secure terraform state bucket for team use of IAC.

---

It's 100% Open Source and licensed under the [APACHE2](LICENSE).

## Usage

Include this repository as a module in your existing terraform code:

```hcl
module "statebucket" {
source      = "JamesWoolfenden/statebucket/gcp"
version     = "0.0.4"
common_tags = var.common_tags
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| google | n/a |
| local | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| common\_tags | This is a map type for applying tags on resources | `map` | n/a | yes |
| kms\_key | Which key to encrypt with | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| bucket\_domain\_name | The Url of the statebucket |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Information

When working with Terraform as part of a team, instead of a local **terrraform.tfstate** file, a shared remote state store is required, for GCP this is the google_storage_bucket.
But if we want to automate everything via Terraform? Traditionally we would have to create the initial bucket by hand via the console or by the cli and the resource unmanaged.
The module and example solves the issue of creating a state bucket in Terraform using Terraform itself.

## But how

The Makefile in folder _examples\examplesA_ has a number of tasks, one specifically to create the initial bucket:

```make
make first
```

This makes the lock DB table, the state (google_storage_bucket) bucket, fills out and creates the remote_state.tf file and then copies the state from the local disk to the bucket.PHEW. The State of the bucket is now managed along with any future resources.

On the second and subsequent runs you use:

```make
make build
```

If this is your first time using some of the apis you might needs to enable them:
<https://console.developers.google.com/apis/api/cloudresourcemanager.googleapis.com/overview?>

## Related Projects

Check out these related projects.

- [terraform-aws-s3](https://github.com/jameswoolfenden/terraform-aws-s3) - S3 buckets

## Help

**Got a question?**

File a GitHub [issue](https://github.com/JamesWoolfenden/terraform-gcp-statebucket/issues).

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/JamesWoolfenden/terraform-gcp-statebucket/issues) to report any bugs or file feature requests.

## Copyrights

Copyright © 2019-2019 James Woolfenden

## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

See [LICENSE](LICENSE) for full details.

Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements. See the NOTICE file
distributed with this work for additional information
regarding copyright ownership. The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at

<https://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied. See the License for the
specific language governing permissions and limitations
under the License.

### Contributors

[![James Woolfenden][jameswoolfenden_avatar]][jameswoolfenden_homepage]<br/>[James Woolfenden][jameswoolfenden_homepage] |

[jameswoolfenden_homepage]: https://github.com/jameswoolfenden
[jameswoolfenden_avatar]: https://github.com/jameswoolfenden.png?size=150
[logo]: https://gist.githubusercontent.com/JamesWoolfenden/5c457434351e9fe732ca22b78fdd7d5e/raw/15933294ae2b00f5dba6557d2be88f4b4da21201/slalom-logo.png
[website]: https://slalom.com
[github]: https://github.com/jameswoolfenden
[linkedin]: https://www.linkedin.com/in/jameswoolfenden/
[twitter]: https://twitter.com/JimWoolfenden
[share_twitter]: https://twitter.com/intent/tweet/?text=terraform-gcp-statebucket&url=https://github.com/JamesWoolfenden/terraform-gcp-statebucket
[share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=terraform-gcp-statebucket&url=https://github.com/JamesWoolfenden/terraform-gcp-statebucket
[share_reddit]: https://reddit.com/submit/?url=https://github.com/JamesWoolfenden/terraform-gcp-statebucket
[share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/JamesWoolfenden/terraform-gcp-statebucket
[share_email]: mailto:?subject=terraform-gcp-statebucket&body=https://github.com/JamesWoolfenden/terraform-gcp-statebucket
