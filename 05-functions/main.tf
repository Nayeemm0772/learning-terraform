

variable "sample" {
  default = ["abc", 123, "annamacharya"]
}


output "sample" {
  value = element(var.sample, 2)
  value2 = element(var.sample, 1)
  value3 = element(var.sample, 0)
}
