# terraform-polkadot-do-k8s

[![open-issues](https://img.shields.io/github/issues-raw/insight-w3f/terraform-polkadot-do-k8s?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-do-k8s/issues)
[![open-pr](https://img.shields.io/github/issues-pr-raw/insight-w3f/terraform-polkadot-do-k8s?style=for-the-badge)](https://github.com/insight-w3f/terraform-polkadot-do-k8s/pulls)
[![build-status](https://img.shields.io/circleci/build/gh/insight-w3f/terraform-polkadot-do-k8s?style=for-the-badge)](https://circleci.com/gh/insight-w3f/terraform-polkadot-do-k8s)


## Features

This module...

## Terraform Versions

For Terraform v0.12.0+

## Usage

```
module "this" {
    source = "github.com/insight-w3f/terraform-polkadot-do-k8s"

}
```
## Examples

- [defaults](https://github.com/insight-w3f/terraform-polkadot-do-k8s/tree/master/examples/defaults)

## Known  Issues
No issue is creating limit on this module.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| digitalocean | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| cluster\_autoscale | Do you want the cluster's worker pool to autoscale? | `bool` | `false` | no |
| cluster\_autoscale\_max\_workers | Maximum number of workers in worker pool | `number` | `1` | no |
| cluster\_autoscale\_min\_workers | Minimum number of workers in worker pool | `number` | `1` | no |
| cluster\_name | Name of the k8s cluster | `string` | `"cluster"` | no |
| do\_k8s\_version | Version of k8s to use - run `doctl kubernetes options versions` to find latest | `string` | `"1.16.6-do.2"` | no |
| environment | The environment | `string` | `""` | no |
| namespace | The namespace to deploy into | `string` | `""` | no |
| network\_name | The network name, ie kusama / mainnet | `string` | `""` | no |
| num\_workers | Number of workers for worker pool | `number` | `1` | no |
| owner | Owner of the infrastructure | `string` | `""` | no |
| stage | The stage of the deployment | `string` | `""` | no |
| worker\_instance\_type | Instance type for workers | `string` | `"s-2vcpu-4gb"` | no |
| zone | The DO zone to deploy in | `string` | `"nyc1"` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster\_ca\_cert | The base64 encoded public certificate for the cluster's certificate authority |
| cluster\_client\_certificate | The base64 encoded public certificate used by clients to access the cluster |
| cluster\_client\_key | The base64 encoded private key used by clients to access the cluster |
| cluster\_subnet | The range of IP addresses in the overlay network of the Kubernetes cluster |
| endpoint | The base URL of the API server on the Kubernetes master node |
| id | A unique ID that can be used to identify and reference a Kubernetes cluster |
| kube\_config | The full contents of the Kubernetes cluster's kubeconfig file |
| public\_ip | The public IPv4 address of the Kubernetes master node |
| service\_subnet | The range of assignable IP addresses for services running in the Kubernetes cluster |
| token | The cluster access token |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Testing
This module has been packaged with terratest tests

To run them:

1. Install Go
2. Run `make test-init` from the root of this repo
3. Run `make test` again from root

## Authors

Module managed by [Richard Mah](https://github.com/shinyfoil)

## Credits

- [Anton Babenko](https://github.com/antonbabenko)

## License

Apache 2 Licensed. See LICENSE for full details.