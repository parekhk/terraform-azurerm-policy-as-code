locals {
  tag_policy = [
    "require_resource_group_tags_customer",
    "require_resource_group_tags_speedtype",
    "inherit_resource_group_tags_modify_customer",
    "inherit_resource_group_tags_modify_speedtype",
  ]
}

##################
# Naming
##################



module "naming_convetion" {
  source              = "..//modules/definition"
  for_each            = toset([for p in fileset(path.cwd, "../policies/naming/*.json") : trimsuffix(basename(p), ".json")])
  policy_name         = each.key
  policy_category     = "Naming"
  management_group_id = data.azurerm_management_group.org.id
}

# ##################
# # Tags
# ##################

# module "tagging_requirement" {
#   source              = "..//modules/definition"
#   for_each            = toset(local.tag_policy)
#   policy_name         = each.value
#   policy_category     = "Tags"
#   management_group_id = data.azurerm_management_group.org.id
# }




