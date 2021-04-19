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

# A storage account used to store cached segments.
resource "azurerm_storage_account" "quortex" {
  count = length(var.storage_containers) > 0 ? 1 : 0

  name                     = substr(replace(var.storage_account_name, "-", ""), 0, 24)
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.storage_tier
  account_replication_type = var.storage_replication_type
  account_kind             = var.storage_kind

  tags = var.tags
}

# The storage containers for persistence purpose.
resource "azurerm_storage_container" "quortex" {
  for_each = var.storage_containers

  name                  = "${var.storage_account_name}-${each.value}"
  storage_account_name  = azurerm_storage_account.quortex[0].name
  container_access_type = "private"
}
