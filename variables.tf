variable "project_service_account_access_list_entries" {
  description = <<EOT
Map of project_service_account_access_list_entries, attributes below
Required:
    - client_id
    - project_id
Optional:
    - cidr_block
    - ip_address
EOT

  type = map(object({
    client_id  = string
    project_id = string
    cidr_block = optional(string)
    ip_address = optional(string)
  }))
}

