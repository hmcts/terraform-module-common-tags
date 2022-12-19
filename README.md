# Terraform module to reference common tags

## Tagging policy documentation

https://tools.hmcts.net/confluence/display/DCO/Tagging+v0.4

## Requirements

No requirements.

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_autoShutdown"></a> [autoShutdown](#input\_autoShutdown) | Enable auto shutdown of resource | `bool` | `false` | no |
| <a name="input_builtFrom"></a> [builtFrom](#input\_builtFrom) | Name of the GitHub repository this application is being built from. | `string` | n/a | yes |
| <a name="input_environment"></a> [environment](#input\_environment) | Name of the environment to deploy the resource. | `string` | n/a | yes |
| <a name="input_expiresAfter"></a> [expiresAfter](#input\_expiresAfter) | Expiry date of the resource. Valid format 'YYYY-MM-DD'. | `string` | `"0000-00-00"` | no |
| <a name="input_product"></a> [product](#input\_product) | Name of the product. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_common_tags"></a> [common\_tags](#output\_common\_tags) | Returns a mapping of tags to assign. |
