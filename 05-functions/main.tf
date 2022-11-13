output "sample" {
  value = element(var.sample, 0)
}

variable "sample" {
  default = ["abc", 123]
}

variable "sample1" {
  default = {
    orange = {
      name  = "Orange"
      count = 10
    }
    apple = {
      name  = "Apple"
      count = 100
    }
  }
}


output "sample1" {
  value = lookup(lookup(var.sample1, "apple", null), "count", 0)
}

variable "list" {
  default = ["a","b","c"]
}

output "list" {
  value = [ for s in var.list : upper(s)]
}

variable "map" {
  default = {
    b = "blue"
    g = "green"
    y = "yellow"
  }
}

output "map"{
  value = [ for k, v in var.map : "Color code is - ${k} and color is - ${v} "]
}