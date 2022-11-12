

variable "sample" {
  default = ["abc", 123, "annamacharya"]
}


output "sample" {
  value = element(var.sample, 2)
}

output "sample2" {
  value = element(var.sample, 1)
}


output "sample3" {
  value = element(var.sample, 0)
}


