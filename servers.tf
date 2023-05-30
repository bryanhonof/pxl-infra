locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # Example:
    #
    team1 = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIL3qsSbrUxgzZJIVRr5LTNQhEyvyhScahfeuEm3LKQbw kobed@Beta", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBohO6ZHavw3wg0sMRQ+Lsx9zcEs4YzLLbutYlZ0730b thoma@Thomas-laptop","ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIAjiUSbeD13PfDykNJn7GUEO5pNBtrRdkmv5D7qP792O ceyha@MSI","ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGLSOfOk9jAUlRE9s5RzI0AoCwNmDrPWiswxsO9nUPte chonkah@chonkah-HP-ProBook-6570b"]
    }
    team8 = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHTJ+5h4G7ykWeM45wOAQJKC4Yv2s9gCG42Rdpf3y8v/ your_email@example.com", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEn9SMHqvBfZKlGXWqK+RsFmj0A/rjNV5MYFgqkek/sz felix@Legion_Felix"]
    }
    group11 = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJwIhKqo5FscNIPvtgKYZDCQYvWRmke1ezipl0IYTjK/ 12200725@5CG21505JN",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIHkB6VO39oyFwiQqZ88GwV11LBheK2ndJ1tKl9rByrE quintenmathijs@MacBook-Air-van-Quinten.local",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDnEXkoj0Y0eQ1WzJowv5CHuHtq70lNc1ilnDeu1Z1NC gebruiker@DESKTOP-BEAVFHB",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIH5d076vjVFqbmn8SjjKIS0iE+93JXc0gv1wJLoHKT52 juske_b8h9c6i@WINDOWS-FNT2MOJ",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d"
      ]
    }
    team14 = {
      ssh_keys = ["ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHxeiGtm/IHEAjC9mCGiw4JlYb3PVjMspiiKTMlGa5BC Jelle Claes@LAPTOP-4JCU1859", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIF+XlEVqXtXgcKqXswuHY/fCjWC5KyCX/8mqURWDwJqZ dries@LAPTOP-US63MDS9", "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKCjRJPQlFQylNyCNjbyLBOt0Vsc2HNWFqNLXM87ei+Z 12202925@Booker-5CD"
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
