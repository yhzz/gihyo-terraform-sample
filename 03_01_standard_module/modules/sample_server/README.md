# Terraform標準構成に従ったサンプルモジュール

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                            | Type     |
| ------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_compute_instance.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_instance) | resource |

## Inputs

| Name                                                                  | Description            | Type     | Default           | Required |
| --------------------------------------------------------------------- | ---------------------- | -------- | ----------------- | :------: |
| <a name="input_server_name"></a> [server\_name](#input\_server\_name) | サンプルサーバのname値 | `string` | `"sample-server"` |    no    |

## Outputs

| Name                                                                                                               | Description                |
| ------------------------------------------------------------------------------------------------------------------ | -------------------------- |
| <a name="output_sample_server_network_ip"></a> [sample\_server\_network\_ip](#output\_sample\_server\_network\_ip) | サンプルサーバのIPアドレス |
<!-- END_TF_DOCS -->
