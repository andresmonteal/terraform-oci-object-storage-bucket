// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

########################
# Vault Secret
########################

locals {
  default_freeform_tags = {
    terraformed = "Please do not edit manually"
    module      = "oracle-terraform-oci-object-storage-bucket"
  }
  merged_freeform_tags = merge(var.freeform_tags, local.default_freeform_tags)
  compartment_id       = try(data.oci_identity_compartments.compartment[0].compartments[0].id, var.compartment_id)
}

resource "oci_objectstorage_bucket" "main" {
  #Required
  compartment_id = local.compartment_id
  name           = var.name
  namespace      = var.namespace

  #Optional
  access_type   = var.access_type
  freeform_tags = local.merged_freeform_tags
  versioning    = var.versioning

  timeouts {
    create = "20m"
    update = "20m"
    delete = "20m"
  }
}