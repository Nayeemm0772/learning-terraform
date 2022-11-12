

variable "sample" {
  default = ["abc", 123, "annamacharya"]
}


output "sample" {
  value = element(var.sample, 2)
  valuee = element(var.sample, 1)
  valueee = element(var.sample, 0)
}
