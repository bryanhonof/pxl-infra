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
	group11 = {
	  ssh_keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJwIhKqo5FscNIPvtgKYZDCQYvWRmke1ezipl0IYTjK/ 12200725@5CG21505JN", 
			   "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIHkB6VO39oyFwiQqZ88GwV11LBheK2ndJ1tKl9rByrE quintenmathijs@MacBook-Air-van-Quinten.local", 
			   "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDnEXkoj0Y0eQ1WzJowv5CHuHtq70lNc1ilnDeu1Z1NC gebruiker@DESKTOP-BEAVFHB",
			   "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH5d076vjVFqbmn8SjjKIS0iE+93JXc0gv1wJLoHKT52 juske_b8h9c6i@WINDOWS-FNT2MOJ"
			 ]
    }
	}
    team14 = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHxeiGtm/IHEAjC9mCGiw4JlYb3PVjMspiiKTMlGa5BC Jelle Claes@LAPTOP-4JCU1859", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+XlEVqXtXgcKqXswuHY/fCjWC5KyCX/8mqURWDwJqZ dries@LAPTOP-US63MDS9"]
    }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
