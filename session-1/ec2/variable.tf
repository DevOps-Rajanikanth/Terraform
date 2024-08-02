
variable "instance_type" {
  default = "t2.small"
}

variable "inbound-from-port" {
  default = 0
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
}

variable "sg-group-name" {
  default = "roboshop-all-aws"
}
variable "sg-group-description" {
  default = "Allow TLS inbound traffic"
}
