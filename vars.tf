variable "auth_url" {
  description = "The authentication URL for Huawei Cloud."
  type        = string
}

variable "region" {
  description = "The region for Huawei Cloud."
  type        = string
}

variable "access_key" {
  description = "The access key for Huawei Cloud."
  type        = string
}

variable "secret_key" {
  description = "The secret key for Huawei Cloud."
  type        = string
}

variable "project_name" {
  description = "The project name for Huawei Cloud."
  type        = string
}

variable "vpc_id" {
  description = "The ID of the existing VPC."
  type        = string
}

variable "subnet_id" {
  description = "The ID of the existing subnet."
  type        = string
}

variable "cluster_name" {
  description = "The name of the CCE cluster."
  type        = string
  default     = "my-cce-cluster"
}

variable "cluster_type" {
  description = "The type of the CCE cluster."
  type        = string
  default     = "VirtualMachine"
}

variable "flavor_id" {
  description = "The flavor ID for the CCE cluster."
  type        = string
  default     = "cce.s1.small"
}

variable "container_network_cidr" {
  description = "The CIDR block for the container network."
  type        = string
  default     = "172.16.0.0/16"
}

variable "node_count" {
  description = "The number of nodes in the cluster."
  type        = number
  default     = 3
}

variable "node_flavor_id" {
  description = "The flavor ID for the nodes."
  type        = string
  default     = "s3.large.2"
}

variable "node_os" {
  description = "The OS for the nodes."
  type        = string
  default     = "EulerOS 2.2"
}

variable "key_pair" {
  description = "The key pair for the nodes."
  type        = string
}

variable "root_volume_size" {
  description = "The size of the root volume for the nodes."
  type        = number
  default     = 40
}

variable "data_volume_size" {
  description = "The size of the data volume for the nodes."
  type        = number
  default     = 100
}

variable "availability_zone" {
  description = "The availability zone for the nodes."
  type        = string
  default     = "az1"
}

variable "bandwidth_size" {
  description = "The bandwidth size for the public IP of the nodes."
  type        = number
  default     = 10
}
