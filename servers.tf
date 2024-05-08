locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # bryan = {
    #   ssh_keys = [
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"
    #   ]


    bryan = {
      ssh_keys = [
        "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP",
      ]
    }
    Robert = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIANqWnQLgp7HX+FTgKNn3TBAPL//vO8cHGnNsqGIFArK jansenrobert4@gmail.com",
      ]
    }
    axel = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO4AjwqPqDOsot89hPrGqj8P6GXlXZP1P/JcOov1VGIX Axel.colson@student.pxl.be",
      ]
    }
    quinten = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILe8frS9W779nR/TVBTc1giVLt2bwfTYnfqMt7D2qozB 12300247@student.pxl.be",
      ]
    }
    Runar = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBKgm5n+eS/QiGrUHD6i2zFJRsfdEJtzhgJXLggQjuEz runar@runar"
      ]
    }
    Christophe = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ/TzK2ORvoOQXWLWnQQcHoEuDY7PUlp051mwiaQpzeQ pandora@gmail.com",

      ]
    }
    Bjarni = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMDu2VdroRSdGoDyVhGW626ePZaLQCwa7m1khXq4odfI 12302152@student.pxl.be",
      ]
    }
       Laye = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDWpFoGZK7MC+nw5fW9Q5yJzix4Hkl32QG79gG+w531XUdb3OfR4uu6ew+pZ2z47Kf7A4PGR+PrMim8FKW4BVZUyn9Gcg3Fc0/vy5viIeNoXDwZlHbp8YkgPbzyQ609Soez5GpqrcUzhAVlK2YzYbm+a7gsnMzbDToDYSRZt/WWKKZukT08UHKjr0/fBl2KYAonYpL2jmjpCaZ5mmBVTWAy21P8ou/MuyAYtVKTo6wrEYNRIPngy5kMld5i44+FXqwmN4xnK/qGvNlQy/
        n9S4y2bIKxboQxG6xEIP+ENU43QndpclqRn8pGaBECSh/ieLNKTyxOftzp082mhyUhsRd15U5SdwGRcgwRJRwIhOtyOjHHWVF++E0K6OoUxbUAM2QcgZPj/3BMmJk85Uj/aWkYKBfhVp0m73mwuQ9UM2SdtbgEd7MisKq6AAeasf4NIUk= konel@Layson",
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
