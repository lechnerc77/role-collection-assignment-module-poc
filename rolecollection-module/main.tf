locals {
  assignments = {
    for entry in flatten([
      for rc in var.role_collection_assignments : [
        for group in rc.group_names : {
          role_collection_name = rc.role_collection_name
          group_name           = group
          origin_id            = coalesce(rc.origin_id, var.default_origin_id)
          key                  = "${replace(rc.role_collection_name, " ", "_")}__${replace(group, " ", "_")}__${replace(coalesce(rc.origin_id, var.default_origin_id, "default"), ".", "_")}"
        }
      ]
    ]) : entry.key => entry
  }
}

resource "btp_subaccount_role_collection_assignment" "this" {
  for_each = local.assignments

  subaccount_id        = var.subaccount_id
  role_collection_name = each.value.role_collection_name
  group_name           = each.value.group_name
  origin               = each.value.origin_id
}
