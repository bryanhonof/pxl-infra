locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # Example:
    #
    # bryan = {
    #   ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"]
    # }
    # team3 = {
    #   ssh_keys = [ "ssh-ed25519 AAAA…", "ssh-ed25519 AAAA…" ]
    # }
	Group11 = {
	  ssh_keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJwIhKqo5FscNIPvtgKYZDCQYvWRmke1ezipl0IYTjK/ 12200725@5CG21505JN", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIHkB6VO39oyFwiQqZ88GwV11LBheK2ndJ1tKl9rByrE quintenmathijs@MacBook-Air-van-Quinten.local" ]
	}
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
