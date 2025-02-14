provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "grupo_recursos_affi" {
  name     = var.grupo_recursos_affi
  location = "East US"
}

resource "azurerm_storage_account" "cuenta_almacenamiento_affi" {
  name                     = var.cuenta_almacenamiento_blob
  resource_group_name      = azurerm_resource_group.grupo_recursos_affi.name
  location                 = azurerm_resource_group.grupo_recursos_affi.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "contenedor_blob_affi" {
  name                  = var.contenedor_blob
  storage_account_name  = azurerm_storage_account.cuenta_almacenamiento_affi.name
  container_access_type = "private"
}

resource "azurerm_storage_blob" "blob_index_affi" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.cuenta_almacenamiento_affi.name
  storage_container_name = azurerm_storage_container.contenedor_blob_affi.name
  type                   = "Block"
  source                 = "${path.module}/index.html"       # Ruta al archivo local que se cargará
}
