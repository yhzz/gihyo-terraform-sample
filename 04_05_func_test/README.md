<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 4.11.0  |

## Modules

No modules.

## Resources

| Name                                                                                                                            | Type     |
| ------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_compute_instance.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name                                                                  | Description            | Type     | Default | Required |
| --------------------------------------------------------------------- | ---------------------- | -------- | ------- | :------: |
| <a name="input_env"></a> [env](#input\_env)                           | 環境名の略称           | `string` | n/a     |   yes    |
| <a name="input_unique_name"></a> [unique\_name](#input\_unique\_name) | サンプルサーバの固有名 | `string` | n/a     |   yes    |

## Outputs

| Name                                                                                           | Description |
| ---------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_sample_server_name"></a> [sample\_server\_name](#output\_sample\_server\_name) | サーバ名    |
<!-- END_TF_DOCS -->
