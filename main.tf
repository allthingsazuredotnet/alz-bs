module "enterprise-scale" {
  source  = "Azure/caf-enterprise-scale/azurerm"
  version = "5.0.3"

  disable_telemetry = true

  default_location = var.default_location
  root_parent_id   = data.azurerm_client_config.core.tenant_id

  deploy_corp_landing_zones    = true
  deploy_management_resources  = false
  deploy_online_landing_zones  = true
  root_id                      = var.root_id
  root_name                    = var.root_name

  providers = {
    azurerm              = azurerm
    azurerm.connectivity = azurerm
    azurerm.management   = azurerm
  }
}
