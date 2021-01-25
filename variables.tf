# Define variables
variable "aws_access_key" {
 type = string
}

variable "aws_secret_key" {
 type = string
}

variable "region" {
type = string
default = "us-east-1"
}

variable "instancetype" {
 type = string
 default = "t2.micro"
}

variable "tags" {
  type = list
  default = ["Jenkins-Master","Jenkins-Agent-1","Jenkins-Agent-2"]
}
