locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # Example:
    #
    teamAwesome = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"]
    }
    # team3 = {
    #   ssh_keys = [ "ssh-ed25519 AAAA…", "ssh-ed25519 AAAA…" ]
    # }
	team14 = {
		ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHxeiGtm/IHEAjC9mCGiw4JlYb3PVjMspiiKTMlGa5BC Jelle Claes@LAPTOP-4JCU1859" , "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+XlEVqXtXgcKqXswuHY/fCjWC5KyCX/8mqURWDwJqZ dries@LAPTOP-US63MDS9" ]
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
