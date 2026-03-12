## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.14 |
| <a name="requirement_btp"></a> [btp](#requirement\_btp) | >= 1.20.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_btp"></a> [btp](#provider\_btp) | 1.20.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [btp_subaccount_role_collection_assignment.this](https://registry.terraform.io/providers/SAP/btp/latest/docs/resources/subaccount_role_collection_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_default_origin_id"></a> [default\_origin\_id](#input\_default\_origin\_id) | The default origin ID used when no specific origin ID is provided in a role collection assignment. | `string` | `null` | no |
| <a name="input_role_collection_assignments"></a> [role\_collection\_assignments](#input\_role\_collection\_assignments) | List of role collection assignments. Each entry defines a role collection and the groups to assign to it. | <pre>list(object({<br/>    role_collection_name = string<br/>    origin_id            = optional(string)<br/>    group_names          = list(string)<br/>  }))</pre> | n/a | yes |
| <a name="input_subaccount_id"></a> [subaccount\_id](#input\_subaccount\_id) | The ID of the subaccount. | `string` | n/a | yes |

## Outputs

No outputs.
