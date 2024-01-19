## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kubectl"></a> [kubectl](#requirement\_kubectl) | 1.14.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubectl"></a> [kubectl](#provider\_kubectl) | 1.14.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubectl_manifest.manifest](https://registry.terraform.io/providers/gavinbunney/kubectl/1.14.0/docs/resources/manifest) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_manifest"></a> [manifest](#input\_manifest) | The manifest YAML to apply to kubernetes, only one K8s resource object is supported | `string` | `"apiVersion: apps/v1\nkind: Deployment\nmetadata:\n  labels:\n    app: nginx\n  name: nginx\n  namespace: default\nspec:\n  replicas: 2\n  selector:\n    matchLabels:\n      app: nginx\n  strategy: {}\n  template:\n    metadata:\n      labels:\n        app: nginx\n    spec:\n      containers:\n      - image: nginx\n        name: nginx\n        resources: {}\n"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_manifest"></a> [manifest](#output\_manifest) | n/a |
