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

variable "location" {
  type        = string
  description = "The location where the resources should be created."
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group in which to create resources."
}

variable "storage_account_name" {
  type        = string
  description = "The storage account name. Storage account name can only consist of lowercase letters and numbers, and must be between 3 and 24 characters long"
  default     = ""
}

variable "storage_containers" {
  type        = set(string)
  description = "A set of private storage containers. Each storage container name will be prefixed by storage_account_name to ensure the uniqueness of the container name."
  default     = []
}

variable "storage_kind" {
  type        = string
  description = "Defines the Kind of account. Valid options are BlobStorage, BlockBlobStorage, FileStorage, Storage and StorageV2. Changing this forces a new resource to be created."
  default     = "StorageV2"
}

variable "storage_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account. Valid options are Standard and Premium. For FileStorage accounts only Premium is valid. Changing this forces a new resource to be created."
  default     = "Standard"
}

variable "storage_replication_type" {
  type        = string
  description = "Defines the type of replication to use for this storage account. Valid options are LRS, GRS, RAGRS and ZRS."
  default     = "RAGRS"
}

variable "tags" {
  type        = map(any)
  description = "Tags to apply to resources. A list of key->value pairs."
  default     = {}
}

variable "last_access_time_enabled" {
  type        = bool
  description = "Is the last access time based tracking enabled?"
  default     = false
}

variable "allow_nested_items_to_be_public" {
  type        = bool
  description = "(Optional) Allow or disallow nested items within this Account to opt into being public"
  default     = true
}

variable "min_tls_version" {
  type        = string
  description = "(Optional) The minimum supported TLS version for the storage account. Possible values are TLS1_0, TLS1_1, and TLS1_2"
  default     = "TLS1_2"
}
