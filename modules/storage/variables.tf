#####################################################
# VPC Block Storage Parameters
# Copyright 2020 IBM
#####################################################

variable "is_provision" {
  description = "Disable this to read the existing block storage"
  type        = bool
  default     = true
}

variable "name" {
  description = "Name of the Volume"
  type        = string
}

variable "location" {
  description = "Volume Zone"
  type        = string
}

variable "volume_profile" {
  description = "The profile to use for this volume"
  type        = string
  default     = null
}

#####################################################
# Optional Parameters
#####################################################


variable "resource_group_id" {
  description = "Resource group ID"
  type        = string
  default     = null
}

variable "iops" {
  description = "The total i/o operations per sec for the storage. This value is required for custom volume_profile only."
  type        = number
  default     = null
}

variable "size" {
  description = "The capacity of the volume in gigabytes"
  type        = number
  default     = null
}

variable "encryption" {
  description = "The encryption key to use for encrypting this volume"
  type        = string
  default     = null
}

variable "delete_all_snapshots" {
  description = "Deletes all snapshots created from this volume"
  type        = bool
  default     = null
}

variable "tags" {
  description = "List of Tags for the volume"
  type        = list(string)
  default     = null
}