resource "mongodbatlas_project_service_account_access_list_entry" "project_service_account_access_list_entries" {
  for_each = var.project_service_account_access_list_entries

  client_id  = each.value.client_id
  project_id = each.value.project_id
  cidr_block = each.value.cidr_block
  ip_address = each.value.ip_address
}

