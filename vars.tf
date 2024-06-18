variable "region" {
  description = "Region for Huawei Cloud"
  type        = string
  default     = "la-mexico-city-2"  # Asegúrate de que la región sea correcta
}

variable "access_key" {
  description = "Access Key for Huawei Cloud"
  type        = string
}

variable "secret_key" {
  description = "Secret Key for Huawei Cloud"
  type        = string
}

# Define otras variables según sea necesario
