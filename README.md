# Terraform module to reference common tags

## Tagging policy documentation

https://tools.hmcts.net/confluence/display/DCO/Tagging+v0.4

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application | Name of the application, e.g. 'probate', 'divorce', use 'core' for platform infrastructure | `string` | n/a | yes |
| builtFrom | Name of the GitHub repository this application is being built from. | `string` | n/a | yes |
| businessArea | Name of the business area this application belongs to, one of CFT / Crime / Cross-Cutting. | `string` | n/a | yes |
| environment | Name of the environment to deploy the resource | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| common\_tags | Returns a mapping of tags to assign. |

