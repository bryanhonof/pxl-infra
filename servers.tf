locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # Example:
    #
     Team_8 = {
       ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"]
     }
    # team3 = {
    #   ssh_keys = [ "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHTJ+5h4G7ykWeM45wOAQJKC4Yv2s9gCG42Rdpf3y8v/ your_email@example.com", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEn9SMHqvBfZKlGXWqK+RsFmj0A/rjNV5MYFgqkek/sz felix@Legion_Felix" ]
    # }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
