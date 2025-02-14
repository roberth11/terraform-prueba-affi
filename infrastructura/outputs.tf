# Salidas para obtener información sobre los recursos creados

output "id_cuenta_almacenamiento" {
  value       = azurerm_storage_account.cuenta_almacenamiento_affi.id
}

output "url_contenedor_blob" {
  value       = azurerm_storage_container.contenedor_blob_affi.url
}
