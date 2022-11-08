
# Custom Policy Definition Library
Compile time: 11/01/2022 14:43:26 UTC
Example custom definitions located in the local library

## Categories
- [Naming](#Naming)

# Definitions



---

## Naming

### 📜 [naming_convention_virtual_machine](./Naming/naming_convention_virtual_machine.json)
| Title | Description |
| ----- | ----------- |
| Name                | umwazpolicy_naming_convention_virtual_machine |
| DisplayName         | Naming Convention : [VirtualMachine] |
| Description         | Adhere to naming convention as per enterprise standards. Name follows this pattern <Organization prefix>,<resoruce prefix><i=unquename>   |
| Version             |  |
| Effect              | [parameters('effect')] |

#### 🧮 ~ Parameters
| Name | Description | Default Value | Allowed Values |
| ---- | ----------- | ------------- | -------------- |
| effect | The effect determines what happens when the policy rule is evaluated to match | Audit | Audit Disabled Deny AuditIfNotExist |

<br>

<br>

### 📜 [naming_convention_storage](./Naming/naming_convention_storage.json)
| Title | Description |
| ----- | ----------- |
| Name                | umwazpolicy_naming_convention_storage |
| DisplayName         | Naming Convention : [Storage] |
| Description         | Adhere to naming convention as per enterprise standards. Name follows this pattern <Organization prefix>,<resoruce prefix><i=unquename>   |
| Version             |  |
| Effect              | [parameters('effect')] |

#### 🧮 ~ Parameters
| Name | Description | Default Value | Allowed Values |
| ---- | ----------- | ------------- | -------------- |
| effect | The effect determines what happens when the policy rule is evaluated to match | Audit | Audit Disabled Deny AuditIfNotExist |

<br>

<br>

### 📜 [naming_convention_resource_group](./Naming/naming_convention_resource_group.json)
| Title | Description |
| ----- | ----------- |
| Name                | umwazpolicy_naming_convention_resourcegroup |
| DisplayName         | Naming Convention : [ResourceGroup] |
| Description         | Adhere to naming convention as per enterprise standards. Name follows this pattern <Organization prefix>,<resoruce prefix><i=unquename>   |
| Version             |  |
| Effect              | [parameters('effect')] |

#### 🧮 ~ Parameters
| Name | Description | Default Value | Allowed Values |
| ---- | ----------- | ------------- | -------------- |
| effect | The effect determines what happens when the policy rule is evaluated to match | Audit | Audit Disabled Deny AuditIfNotExist |

<br>

<br>

### 📜 [naming_convention_org_prefix](./Naming/naming_convention_org_prefix.json)
| Title | Description |
| ----- | ----------- |
| Name                | umwazpolicy_naming_convention_virtual_machine |
| DisplayName         | Naming Convention : [OrgPrefix - Azure Resources] |
| Description         | Adhere to naming convention as per enterprise standards.Checkign for Enterprise prefix <Organization prefix>,<resoruce prefix><i=unquename>   |
| Version             |  |
| Effect              | [parameters('effect')] |

#### 🧮 ~ Parameters
| Name | Description | Default Value | Allowed Values |
| ---- | ----------- | ------------- | -------------- |
| effect | The effect determines what happens when the policy rule is evaluated to match | Audit | Audit Disabled Deny AuditIfNotExist |

<br>

<br>

### 📜 [naming_convention_name_not_allowed](./Naming/naming_convention_name_not_allowed.json)
| Title | Description |
| ----- | ----------- |
| Name                | umwazpolicy_naming_convention_name_not_allowed |
| DisplayName         | Naming Convention : [Restricted Name - AzureResources] |
| Description         | Restrict resource name where it inlcudes umms or umass   |
| Version             |  |
| Effect              | [parameters('effect')] |

#### 🧮 ~ Parameters
| Name | Description | Default Value | Allowed Values |
| ---- | ----------- | ------------- | -------------- |
| effect | The effect determines what happens when the policy rule is evaluated to match | Audit | Audit Disabled Deny AuditIfNotExist |

<br>

<br>

