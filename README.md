
# Terraform module to reference common tags.

## Tagging policy documentation

https://tools.hmcts.net/confluence/display/DCO/Tagging+v0.4

## Requirements

No requirements.

## Providers

No provider.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| application | Enter name of the application that Utilizes this resource. | `string` | n/a | yes |
| builtFrom | Enter name of the GitHub repository this application is being build from. | `string` | n/a | yes |
| businessArea | Enter name of the business area this application belong to. | `string` | n/a | yes |
| environment | Enter name of the environment to deploy the resource. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| common\_tag | Returns a mapping of tags to assign. |
