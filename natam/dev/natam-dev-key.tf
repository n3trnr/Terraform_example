
resource "aws_key_pair" "natam-dev-key" {
  key_name   = "natam-dev-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDogbNC76N25iOmfuwCMcwUycGjG4uKQxfD92iWPKDiCXOHcw7Rqyt7HtXCbfqE/+KtnV0yQWebU9fHC6BRADXC5gqJWfl27kdC7Xwt9UKG+fTMDOs8EbG+YLnoKq4wDIb16cMy2lAf7rDGG0a+cLXMxbNpnpdQ6SWszNW6Pr0Vm5GU5uNnfnvcqUp6cQXNmqnYHjZ6PGSTQ8IdjPHNHWL9TouPnxT9f4JiyIoUQVSOhBLfaaXE9WHWRDn8xF0Vk3KGt1J6hzhXTMCseGZ+neT2YQdAM4gsgsXd8tgK4jdVUmkx4Js35BnLshTbKtBqe1uVUpXUqzVMbMDFEuI0xAl/ refine@terraform"
	
	tags = {
			Name = "natam-dev-key"
			}

}
