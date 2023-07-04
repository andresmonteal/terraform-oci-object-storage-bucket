// Copyright (c) 2018, 2021, Oracle and/or its affiliates.

module "bucket" {
  source = "../"

  for_each = var.buckets

  tenancy_ocid = var.tenancy_ocid
  compartment  = each.value["compartment"]
  name         = each.key
  namespace    = lookup(each.value, "namespace", null)
  defined_tags = lookup(each.value, "defined_tags", {})
}