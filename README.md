[![Quortex][logo]](https://quortex.io)
# terraform-azurerm-storage
A terraform module for Quortex infrastructure Azure persistent storage layer.

It provides a set of resources necessary to provision the Quortex infrastructure persistent storage on Microsoft Azure.

This module is available on [Terraform Registry][registry_tf_azurerm_storage].

Get all our terraform modules on [Terraform Registry][registry_tf_modules] or on [Github][github_tf_modules] !

## Created resources

This module creates the following resources on Azure:

- a storage account
- a list of storage containers

## Usage example

```hcl
module "storage" {
  source = "quortex/storage/azurerm"

  # Globally used variables.
  subscription_id     = local.subscription_id
  location            = local.resource_group_location
  resource_group_name = local.resource_group_name

  storage_account_name = "quortex"
  storage_containers   = ["mezzanine", "encoded"]
}
```
---

## Related Projects

This project is part of our terraform modules to provision a Quortex infrastructure for Microsoft Azure.

![infra_azure]

Check out these related projects.

- [terraform-azurerm-network][registry_tf_azurerm_network] - A terraform module for Quortex infrastructure network layer.

- [terraform-azurerm-aks-cluster][registry_tf_azurerm_aks_cluster] - A terraform module for Quortex infrastructure AKS cluster layer.

- [terraform-azurerm-load-balancer][registry_tf_azurerm_load_balancer] - A terraform module for Quortex infrastructure Azure load balancing layer.

## Help

**Got a question?**

File a GitHub [issue](https://github.com/quortex/terraform-azurerm-storage/issues) or send us an [email][email].


  [logo]: https://storage.googleapis.com/quortex-assets/logo.webp
  [email]: mailto:info@quortex.io
  [infra_azure]: https://storage.googleapis.com/quortex-assets/infra_azure_001.jpg
  [registry_tf_modules]: https://registry.terraform.io/modules/quortex
  [registry_tf_azurerm_network]: https://registry.terraform.io/modules/quortex/network/azurerm
  [registry_tf_azurerm_aks_cluster]: https://registry.terraform.io/modules/quortex/aks-cluster/azurerm
  [registry_tf_azurerm_load_balancer]: https://registry.terraform.io/modules/quortex/load-balancer/azurerm
  [registry_tf_azurerm_storage]: https://registry.terraform.io/modules/quortex/storage/azurerm
  [github_tf_modules]: https://github.com/quortex?q=terraform-