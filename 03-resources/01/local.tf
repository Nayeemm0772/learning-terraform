resource "local_file" "foo" {
  content  = "foo! this is just a sample!!! :-) "
  filename = "/tmp/foo.bar"
}
