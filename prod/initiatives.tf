locals {
  tag_policy_initiative = [
    "require_resource_group_tags_customer",
    "require_resource_group_tags_speedtype",
    "inherit_resource_group_tags_modify_customer",
    "inherit_resource_group_tags_modify_speedtype",
  ]
}

##################
# Naming: Naming Convention
##################
module "platform_namingconvention_initiative" {
  source                  = "..//modules/initiative"
  initiative_name         = "umwazini_naming_convention"
  initiative_display_name = "[Naming]: Naming Convention Initiative"
  initiative_description  = "Collection of policies that adhere to naming convention of resources"
  initiative_category     = "Naming"
  merge_effects           = false # will not merge "effect" parameters
  management_group_id     = data.azurerm_management_group.org.id

  # Populate member_definitions with a for loop (not explicit)
  member_definitions = [for mon in module.naming_convetion : mon.definition]
}

# module "tagging_intiative" {
#   source                  = "..//modules/initiative"
#   initiative_name         = "ummazini_tagging"
#   initiative_display_name = "[Tags]: Tagging Requirement Initiative"
#   initiative_description  = "Collection of Tag policy Requriement on resources"
#   initiative_category     = "Tags"
#   merge_effects           = false
#   management_group_id     = data.azurerm_management_group.org.id

#   member_definitions = [
#     for tp in module.tagging_requirement :
#       tp.definition
#   ]
# }

