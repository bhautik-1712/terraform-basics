resource "local_file" "devops" {
        source = "/new/first-variable.txt"
        content = "This is first file for terraform variables"
}
resource "local_file" "devops-var" {
	source = var.filename
	content = var.content

}
