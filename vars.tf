# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

variable "prefix" {
  default = "kdor"
  description = "The prefix which should be used for all resources in this example"
}

variable "location" {
  default = "East US"
  description = "The Azure Region in which all resources in this example should be created."
}