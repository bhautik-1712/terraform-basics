resource "local_file" "deveops" {
	filename = "/test/newpath/firstfile.txt"
	content = "I want to become deveops engineer who knows terraform"
}
resource "random_string" "rand_str" {

  length           = 16
  special          = true
  override_special = "~!$%^*()_+<>:?{}|"
}

output "rand_str" {

  value = random_string.rand_str
}
