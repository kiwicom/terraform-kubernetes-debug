# Terraform Kubernetes Debug

A terraform module for deploying [kw-debug-container](https://gitlab.skypicker.com/platform/kw-debug) to Kubernetes.

## Usage

```hcl
module "debug" {
  source  = "kiwicom/debug/kubernetes"
  version = "~> 3.0.0"
}
```
