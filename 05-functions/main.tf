output "sample" {
  value = element(var.sample, 1)
}

variable "sample" {
  default = ["abc", 123]
}