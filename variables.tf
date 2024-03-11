variable "resource_group" {
  type        = string
  description = " (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "  (Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
}

variable "virtual_network_name" {
  type = string
  description = "(Required) The name of the virtual network. Changing this forces a new resource to be created."
}

variable "address_space" {
  type = list(string)
  description = "(Required) The address space that is used the virtual network. You can supply more than one address space."
}

variable "subnet_name" {
  type = string
  description = "(Required) The name of the subnet. Changing this forces a new resource to be created."
}

variable "address_prefixes" {
  type = list(string)
  description = "(Required) The address prefixes to use for the subnet."
}

variable "public_ip_name" {
  type = string
  description = "(Required) Specifies the name of the Public IP. Changing this forces a new Public IP to be created."
}

variable "allocation_method" {
  type = string
  description = "(Required) Defines the allocation method for this IP address. Possible values are Static or Dynamic."
}

variable "nic" {
  type = string
  description = " (Required) The name of the Network Interface. Changing this forces a new resource to be created."
}

variable "ip_configuration_name" {
  type = string
  description = " (Required) One or more ip_configuration blocks as defined below."
}

variable "private_ip_address_allocation" {
  type = string
  description = "(Required) The allocation method used for the Private IP Address. Possible values are Dynamic and Static."
}

variable "vm_name" {
  type = string
  description = " (Required) The name of the Linux Virtual Machine. Changing this forces a new resource to be created"
}

variable "vm_size" {
  type = string
  description = "(Required) The SKU which should be used for this Virtual Machine, such as Standard_F2."
}

variable "admin_username" {
  type = string
  description = "(Required) The username of the local administrator used for the Virtual Machine. Changing this forces a new resource to be created."
}

variable "admin_password" {
  type = string
  description = " (Optional) The Password which should be used for the local-administrator on this Virtual Machine. Changing this forces a new resource to be created."
}
