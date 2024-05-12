variable "subnet_ids" {}
variable "cluster_name" {}
variable "eks_version" {}
variable "ami_type" {}

variable "desired_size" {
  description = "The desired number of worker nodes."
  type        = number
  default     = 2
}
# Variable for worker nodes min size
variable "min_size" {
  description = "The minimum number of worker nodes."
  type        = number
  default     = 1
}

# variable for Worker nodes max size
variable "max_size" {
  description = "The maximum number of worker nodes."
  type        = number
  default     = 8
}

# variable for instance types
variable "instance_types" {
  type    = list(string)
  default = ["t3.small", "t3.medium", "t3.large"]
}

# Variable for worker nodes capacity type
variable "capacity_type" {
 type = string
 description = "a variable for your worker nodes capacity type"
 default = "ON_DEMAND"
}

# Variable disk size for Worker Nodes
variable "disk_size" {
    type = string
    description = "Disk size for your Worker Nodes"
    default = "50"
}

# variable for max unavailable nodes
variable "max_unavailable" {
  type = string
  description = "max unavailable nodes for your worker nodes"
  default = 1
}
