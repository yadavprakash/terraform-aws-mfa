# Terraform Infrastructure as Code (IaC) - aws mfa Module

## Table of Contents
- [Introduction](#introduction)
- [Usage](#usage)
- [Module Inputs](#module-inputs)
- [Module Outputs](#module-outputs)
- [Authors](#authors)
- [License](#license)

## Introduction
This Terraform module creates structured mfa for aws resources with specific attributes.

## Usage

- Use the module by referencing its source and providing the required variables.

```hcl
module "mfa" {
  source      = "git::https://github.com/opsstation/terraform-aws-mfa.git?ref=v1.0.0"
  name        = "mfa1"
  environment = "test"
  users       = []
  groups      = []

}

```
Please ensure you specify the correct 'source' path for the module.

## Module Inputs

- `name`: The name of the application.
- `environment`: The environment (e.g., "test", "production").
- `label_order`: Label order, e.g. `name`,`application`.
- `enabled`: Flag to control the mfa creation.
- `managedby`:  ManagedBy, eg 'opsstation'.
- `floating_ip` : Boolean to control whether floating IPs should be created.

## Module Outputs
- This module currently does not provide any outputs.

# Examples
For detailed examples on how to use this module, please refer to the '[example](https://github.com/opsstation/terraform-aws-mfa/tree/master/example)' directory within this repository.

## Authors
Your Name
Replace '[License Name]' and '[Your Name]' with the appropriate license and your information. Feel free to expand this README with additional details or usage instructions as needed for your specific use case.

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/opsstation/terraform-aws-mfa/blob/master/LICENSE) file for details.



<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.7.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.31.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.31.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_labels"></a> [labels](#module\_labels) | git::https://github.com/opsstation/terraform-aws-labels.git | v1.0.0 |

## Resources

| Name | Type |
|------|------|
| [aws_iam_group_policy_attachment.assign_force_mfa_policy_to_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.enable_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_user_policy_attachment.assign_force_mfa_policy_to_users](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_policy_attachment) | resource |
| [aws_iam_policy_document.enable_mfa](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environment"></a> [environment](#input\_environment) | Environment (e.g. `prod`, `dev`, `staging`). | `string` | `""` | no |
| <a name="input_groups"></a> [groups](#input\_groups) | enable MFA for the members in these groups | `list(string)` | `[]` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | Label order, e.g. `name`,`application`. | `list(any)` | <pre>[<br>  "name",<br>  "environment"<br>]</pre> | no |
| <a name="input_managedby"></a> [managedby](#input\_managedby) | ManagedBy, eg 'opsstation'. | `string` | `"opsstation"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `test` or `mfa`). | `string` | n/a | yes |
| <a name="input_path"></a> [path](#input\_path) | The path of the policy in MFA. | `string` | `"/"` | no |
| <a name="input_repository"></a> [repository](#input\_repository) | Terraform current module repo | `string` | `"https://github.com/opsstation/terraform-aws-mfa"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. map(`BusinessUnit`,`XYZ`). | `map(any)` | `{}` | no |
| <a name="input_users"></a> [users](#input\_users) | enable MFA for these users | `list(string)` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_iam-arn"></a> [iam-arn](#output\_iam-arn) | The ARN (Amazon Resource Name) of the IAM policy with MFA (Multi-Factor Authentication) enabled. |
| <a name="output_tags_all"></a> [tags\_all](#output\_tags\_all) | All tags associated with the IAM policy with MFA enabled. |
<!-- END_TF_DOCS -->