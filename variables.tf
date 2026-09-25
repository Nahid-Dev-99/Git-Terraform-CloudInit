variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t3.micro"
}

locals {
  instance_ami = "ami-0224ce6f9504665ee"
}

