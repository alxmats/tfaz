variable "vnet_name" {
  type    = string
  default = "myvnet"
}

variable "address_space" {
  type    = list(any)
  default = ["10.0.0.0/16"]
}

