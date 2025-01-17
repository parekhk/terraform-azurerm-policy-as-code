##################
# Built-In Initiative
##################
data "azurerm_policy_set_definition" "configure_az_monitor_and_security_vm_initiative" {
  display_name = "[Preview]: Configure machines to automatically install the Azure Monitor and Azure Security agents on virtual machines"
}


##################
# Built-In Assignment
##################
module "org_mg_configure_az_monitor_and_security_vm_initiative" {
  source               = "..//modules/set_assignment"
  initiative           = data.azurerm_policy_set_definition.configure_az_monitor_and_security_vm_initiative
  assignment_name      = "configure_az_monitor"
  assignment_scope     = data.azurerm_management_group.org.id
  skip_remediation     = var.skip_remediation
  skip_role_assignment = var.skip_role_assignment

  # built-ins that deploy/modify require role-definitions to be present
  role_definition_ids = [
    data.azurerm_role_definition.vm_contributor.id
  ]
}
