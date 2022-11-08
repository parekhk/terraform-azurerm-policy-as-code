
##################
# Naming
##################
module "org_mg_platform_namingconvention_initiative" {
  source               = "..//modules/set_assignment"
  initiative           = module.platform_namingconvention_initiative
  assignment_scope     = data.azurerm_management_group.org.id
  skip_remediation     = true
  skip_role_assignment = true

  # role_definition_ids = [
  #   data.azurerm_role_definition.contributor.id # using explicit roles
  # ]

  non_compliance_messages = {
    "NamingConventionResourceGroup" = "Invalid ResourceGroup Name"
    "NamingConventionStorage" = "Invalid Storage Account Name"
    "NamingConventionVirtualMachine" = "Invalid Virtual Machine Name"
    "NamingConventionNameNotAllowed" = "Restricted Name  umass, umms"
    "NamingConventionOrgPrefix" = "Resource Name should start with organization prefix "

    
  }

  assignment_parameters = {

    effect_NamingConventionResourceGroup   = "Audit"
    effect_NamingConventionStorage   = "Audit"
    effect_NamingConventionVirtualMachine   = "Audit"
    effect_NamingConventionNameNotAllowed = "Deny"
    effect_NamingConventionOrgPrefix = "Audit"

  }
}

