/**
 * Copyright 2020 Quortex
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

output "storage_account_id" {
  value       = length(azurerm_storage_account.quortex) > 0 ? azurerm_storage_account.quortex[0].id : ""
  description = "The storage account id."
}

output "storage_account_name" {
  value       = length(azurerm_storage_account.quortex) > 0 ? azurerm_storage_account.quortex[0].name : ""
  description = "The storage account name."
}

output "storage_containers" {
  value       = { for k, v in azurerm_storage_container.quortex : k => v.name }
  description = "A map of storage containers names for storage_containers variables provided."
}

output "storage_connection_string" {
  value       = length(azurerm_storage_account.quortex) == 1 ? azurerm_storage_account.quortex[0].primary_connection_string : null
  description = "The primary connection string for the storage account."
  sensitive   = true
}

output "storage_access_key" {
  value       = length(azurerm_storage_account.quortex) == 1 ? azurerm_storage_account.quortex[0].primary_access_key : null
  description = "The primary access key for the storage account."
  sensitive   = true
}
