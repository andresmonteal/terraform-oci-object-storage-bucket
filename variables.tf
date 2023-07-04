// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

variable "tenancy_ocid" {
  description = "(Required) (Updatable) The OCID of the root compartment."
  type        = string
  default     = null
}

variable "compartment_id" {
  description = "compartment id where to create all resources"
  type        = string
  default     = null
}

variable "compartment" {
  description = "compartment name where to create all resources"
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the bucket. Avoid entering confidential information."
  type        = string
}

variable "namespace" {
  description = "(Required) The Object Storage namespace used for the request."
  type        = string
  default     = null
}

variable "access_type" {
  description = "(Optional) (Updatable) The type of public access enabled on this bucket."
  type        = string
  default     = "NoPublicAccess"
}

variable "versioning" {
  description = "(Optional) (Updatable) Set the versioning status on the bucket."
  type        = string
  default     = "Enabled"
}

variable "freeform_tags" {
  description = "(Optional) (Updatable) Free-form tags for this resource. Each tag is a simple key-value pair with no predefined name, type, or namespace."
  type        = map(any)
  default     = null
}

variable "defined_tags" {
  description = "(Optional) (Updatable) Defined tags for this resource. Each key is predefined and scoped to a namespace."
  type        = map(any)
  default     = null
}