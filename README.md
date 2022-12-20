# terraform-module-common-tags 

A Terraform module to reference common tags.
## [Tagging policy documentation](https://tools.hmcts.net/confluence/display/DCO/Tagging+v0.4)

## Usage

This example shows usage of the module by passing only required  values.

```terraform
module "ctags" {
  source      = "git::https://github.com/hmcts/terraform-module-common-tags.git?ref=master"
  environment = var.environment
  product     = var.product
  builtFrom   = var.builtFrom
  }
```

This example shows you how to add  `expiresAfter` tag with a specific expiry date. `expiresAfter` tag only applies to sbox environment. 

```terraform
module "ctags" {
  source      = "git::https://github.com/hmcts/terraform-module-common-tags.git?ref=master"
  environment = var.environment
  product     = var.product
  builtFrom   = var.builtFrom
  expiresAfter = "2023-01-01" #YYYY-MM-DD
}
```

This example shows you how to add  `expiresAfter` tag to `never` expire. 

```terraform
module "ctags" {
  source      = "git::https://github.com/hmcts/terraform-module-common-tags.git?ref=master"
  environment = var.environment
  product     = var.product
  builtFrom   = var.builtFrom
  expiresAfter = "3000-01-01" # never expire
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoShutdown"></a> [autoShutdown](#input\_autoShutdown) | Enable auto shutdown of resource | `bool` | `false` | no |
| <a name="input_builtFrom"></a> [builtFrom](#input\_builtFrom) | Name of the GitHub repository this application is being built from. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment to deploy the resource. | `string` | n/a | yes |

=======
| <a name="input_expiresAfter"></a> [expiresAfter](#input\_expiresAfter) | Expiry date of the resource. Valid format 'YYYY-MM-DD'. | `string` | `"0000-00-00"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | Returns a mapping of tags to assign. |

<!-- END_TF_DOCS -->


