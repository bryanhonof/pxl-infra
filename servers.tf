locals {
  students = {
    # The map of student to create a server for, and their associated ssh keys.
    # NOTE: It's possible to enter the name of your team, instead of your own.
    # To add a new server, copy & paste the following code snippet _within_ the
    # "students" map. Check you formatting, as Terraform will error on this.
    #
    # bryan = { # Name of the server, will create a DNS record `server-of-bryan.pxl.bjth.xyz`
    #   ssh_keys = [ # Example of using multiple public SSH keys, can also just be one
    #     "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIuAcOS6oFayeYpmbe8xDPGKJels0OWq0NzrZxWCLX7d", # <- Don't miss the comma
    #     "sk-ssh-ed25519@openssh.com AAAAGnNrLXNzaC1lZDI1NTE5QG9wZW5zc2guY29tAAAAIMV/QrTO9+A0I2VCknmL56pEI+1Ekw6/9s6613NLPxTZAAAACHNzaDpmbG94 bryanhonof@Bryans-MBP"
    #   ]
    #
    Anish = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIrvcSz2EnQieZyeUOm7aiQN+WCng1uH8fp2Nt/BrAuo Anish.Pun@student.pxl.be",
      ]
    }
    Runar = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGLkl2lwL2wKM32WsatawJpa7icTlS0TPASbPphYvG/X runar@RunarW11",
      ]
    }
    Bowen = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHZuoIwLhSLkChxOWJZqb+YpLMoE1ql0OHrLCh2fq14O bowen.liang@student.pxl.be",
      ]
    }
    Emiel = {
      ssh_keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDFqlip9Nx0tmqMhAEGys/kzGEN4+pzhE3bUtV4u0XCO3KNWIpdJafngou0rzoTyI278Bm/oALJvRGtkXT9X3n+NWCWBvDWbW7rudvmnlIbaomT94LskdVBHI/Rs/XSnOx+U/4698d37M5v/SKOP9X0/whL4WMjDE84lqEeMHNyWSYMeJ7b8MxQoY3h7aN2up0m5nxYRkYpqcoNDOicHEzU1+kf4HNa1JOo+1pT69tD6kfgy8i7dGr4A+eROWKfvDCq57MQaI3g20fTlwNZoXw5sKsfpVUYU4B6pvCUKkneGaCaC0fNQNoJlniUwqq/9wU8L+WM9eBTXa6LFmt2Ll6tvdJIkZhdlta1ffyNnEshlA+yr9o/d3PAki7xvKEJOKmrKbr+rvTvEft/0WiRWvv+F5KsGMQPMBE1KgfpNP63aNXVUbKJaoSfX2DxFyPTKZefqp+zHkD+Nl9UNJiYZChqICzMaugpB2yFnF74p6y7un5bQuJBKxGci+FLzluNo5c= empel06@5CD322B26V",
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
