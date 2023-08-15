locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # bryan = {
    #   ssh_keys = [
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"
    #   ]
    # }
    Thibe = {
      ssh_keys = [
        "SHA256:fv6PYIMthlswa0GPJebDQFyP+dZvLUwAMxEOQDnRpqg gebruiker@DESKTOP-BEAVFHB"
      ]
    }
    Oliwier = {
          ssh_keys = [
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIT7FdCTfgPdsQnBm/hRZtNFaaPCV7lPfse3EOn1lxsW oliwier@DESKTOP-DPCILQ3"
            "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGf+kcf1x/2nxnmIlbeqO5wqdCFN9tK/FZqzFUM1ginQ oliwi@olilaptop"
          ]
        }
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
