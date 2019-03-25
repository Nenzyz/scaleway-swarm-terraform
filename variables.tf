variable "ubuntu_version" {
  default = "Ubuntu Bionic"
  description = <<EOT

For arm, choose from:
  - Ubuntu Xenial

For x86_64, choose from:
  - Ubuntu Xenial
  - Ubuntu Bionic

Notes:
  - kubernetes only has xenial packages for debian
  - currently arm is not working with ubuntu bionic (kubeadm init hangs)

EOT
}

variable "docker_version" {
  default     = "18.06"
  description = <<EOT

Specify the docker version either as

  - Simplified 5 characters name such as:
    - 17.03
    - 18.06

  - The exact release name such as:
    - 17.03.0~ce-0~ubuntu-xenial
    - 18.06.0~ce~3-0~ubuntu

EOT
}

variable "arch" {
  default     = "x86_64"
  description = "Values: arm arm64 x86_64"
}

variable "region" {
  default     = "par1"
  description = "Values: par1 ams1"
}

variable "server_type" {
  default     = "START1-S"
  description = "Use ARM64-2GB for arm64 and START1-S for x86_64"
}

variable "server_type_node" {
  default     = "START1-S"
  description = "Use ARM64-2GB for arm64 and START1-S for x86_64"
}

variable "nodes" {
  default = 2
}

variable "docker_api_ip" {
  default = "127.0.0.1"
}

variable "ip_admin" {
  type        = "list"
  default     = ["0.0.0.0/0"]
  description = "IP access to services"
}

variable "private_key" {
  type        = "string"
  default     = "~/.ssh/id_rsa"
  description = "The path to your private key"
}

variable "container_log_max_size" {
  default     = "100Mi"
  description = "The maximum file size for container logs, k8s 1.12+ only"
}