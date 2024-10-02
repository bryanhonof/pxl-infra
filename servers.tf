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
    team-interactive-devices = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIANqWnQLgp7HX+FTgKNn3TBAPL//vO8cHGnNsqGIFArK",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILO0JUzYFZw3BGSNSwWbcm2W0yi/UdosTr1/70ji6E3R",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPn9WJRAAWcB5HS1DKNej2H2kCfzDAlt7k90K/59P/Sk",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIO4AjwqPqDOsot89hPrGqj8P6GXlXZP1P/JcOov1VGIX",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMDu2VdroRSdGoDyVhGW626ePZaLQCwa7m1khXq4odfI",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCeeLJHS0gOnry/rOxJb3Q6oNW+zrtF8jBFSvvJnE68HGMGxxUZJol2TgeC3eL3jyZtHFgPSyTvg4HoTisY4KCOlVgN/ApFaKA62fd+cXRr6hRMMONGy9kuHwoWJSvI6bPTzPHAycHcXeBNYN23LeqK2ah0a2sNrgSqloxibMcFoQcLpENGVuD0ZVYrPpe9gewI42nidVKQcvWU7GlZBq5kq0rBGR6KNoZXzQogj/o4ifJlbeUQj5XzqR609+RiByz3ozsKseMsul+K1GPyxpWsLVVP2KE6ffWruyloExyk241ElKndUovVWZrnK9xNs8RKF/ZmruOcsNOyNYWnGmFMltJf0Y8MdLN9gKfssprGjiIe+1q0W97IuvOFQ7r6q45y5Xuo4SAAeSzjaDhiRA4NCHVwBOGCoC6dTtrQk1wqvuyUTHRR+zFFJg3RFkl/ILvMc8UdV196/Z7UFmlVaBuPzXpLSAsHNU5w+5o1fc84HchyG6YjURScI7RvfOc8dQU=",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDfDqNj+D4In7VCLGLFgjpa6pw97hhEv2WBhFTNELCfcFyiOzyQMuXewe4Xt7aie+erhKUHkbit1hAx7xLOcVv7rpfmvi1BCyOjFNpTTPVMkrRM5e49qyDyIm6TWqH1gI746IZ4zju6wkHQ7NCJcTm9phO7bF7zOQ2EGDCp06tW5tKmE6XrR+5+I/DK36U5yqCOMwbX4+DzF14Z36Rm1hzVF5xQZqwd5B/605jC4XL8KRQh2T3+Lyjh2X7i1HH/BzSFAlfdOoLfM7ORs+sYPD+xei4ISyASr4iopLqZQxbKmUtq3BHBe/NGUDVMCY5JDB7jYbigt2rV3hGL7lfu7mbyWz/m5pVln8GFBBwn9Xau03Cp9xi5VP1Gdwi0WyWJVvDkc0MSEV8WSea+Ndyhxp3ZqO2pkvBD6bdnMDXV58YnCVvm6Xzu7aPEvGAG6qjuRCfCRfZ4Dq5Yj0XZEkVlX3fVN3xraAyNdgd3Nx00GOjM83hnDms6WN7nVj3ctceLYeHSqHzCstTJ891JYX70m/RSg7Uf0XNn2Ti3DdAkQI5wSYlXtarGESlNSUvTuBMn9a63l4WlqHG1cC9G5809/qGAqTPvhyrHgUoxNh9ax5H4djg9mFY3wqJ/4bV/Yk16f3RHu6iv/TaEbEuhITlRf2rDz+6pzg1EqUNTCPZewEoLJQ==",
      ]
    }
    team-measurement = {
      ssh_keys = [
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOqrPVkvGWeMpVz4a/jyUiKhkOcMi7UjVaRjoTCSTB8A",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIIrvcSz2EnQieZyeUOm7aiQN+WCng1uH8fp2Nt/BrAuo",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHZuoIwLhSLkChxOWJZqb+YpLMoE1ql0OHrLCh2fq14O",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDH4eaG4TqmUlmQIO3EeMmYdxsHx9HGUDxjhlRkHpfhleez7/Kg+30gY/wuFkoY4cbtpdgU0cflZ+oJPbXOBOGl+l9uwUlHVFk81z5lA46/fQAGEE/xCo0H0/DCS6OABq3n2N3uDziZC1rUhJXBb0M4qDKhPGgXncr1hxqpTUrf3PpYtHOtBZFUFE5R8D+/UKPpWhy6qxln2EGb0UDe7Meh1rur72BRlvvmFxlR13orEc+491R9ryETkS/OJw+98a2cvWTL228piGlyE9lM62cOf+h56S6bqwmHHaJ66AIf+eBTaoyMAEMZEnZ4xLDlmdefDd9Vh84S5GS0jQziyolRVDBXbXXQe+kYllJcHZEz2MYwvViJ0n8GnRvZDdP6Y2WSzJSz3wOE8vxnBOlILP3ukS4IFFcDZ/tbViqQ9dScjYv9QcmJXmWBke77yUiyfhKvTxUrWQBHAPGGA2a4UvD94OcsyET8QUHUvoLD20GwvWsa2L/RolcZIp7cXXOQULs=",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC0vshuNKK/FMW8vouPThCQUQWOmhAaqEwBGDe3GfWphpEdMID1v2gbNSb4lirJqUG5/nmNgnf/GXS9+tx6FcXi4VJb8lDawSp/uk9U5hGGQYcJ4F1KpEX2yZaSiMPX4bjdHHdwN4rpgkKFiC8WEkc6l54gRrCHUoMd0yaMwj3KGiyRYikrRuMmtPNedH6w92T5JsG18iTrvaZY02Q2XWdCaON5BnB3vmeGmPbvt5AwsxHIipJnsg75hR2L4Za+boDbPHloufFMnfx7zzKnchhkGcCV1Jcwzsw8a809TivVmuMs5L1ZZJgK7lXSS6AsTgn6B7tI6RyIpbIatyUxPnWelPJk2p3RRDHKQ915aPv/q0s7/62CVNyxxFI3fnk3DaWi5FWNt/iv4igVrzjpUNFRo/mKW+Y9n7cl8EY2GgpyOtbo5C8FREmC+SIVKKFqmV2/XOI3AJg5b+g/Kw4lGTh6HeFaMGxMOUsJvQkO+4evVWbt2DXVUGdL5AN0RETe/9U=",
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCl/aHn1/mcjEjEfvy1cCdBLNgDV1/3p9L0/oT1DNZqmwy2cGt9MmB/gpVXncZUPF5iNDDPEzSJXTarAAmzIlWziux65gxiXOMjFVggP64C4p1XF6S7QVAZsQ0mzcbNjxlNaicCWnFQSZ6SBtr5YYlAVLryYhrHBm+1zUCO9sH0FYYL6GuO4MDTj6MntKbRcjecVjV4qb8Oa6nXd5jTAwlP5X0Zeo6mR8gmU0IMqIBkS6K2n4BIKVvcsM+z78CKzUSFj+7Sp5NK6tnJgpZqX1LI8fu+GG/V4fzqhCjx0UJNh3EwKzWgAJrrOK91ERookVQYamANjzCxE31O0vXYJArS5lA1JlT+K/8WGy53kaHG3rc+3yFGfTWTbCXUoe4anvsWh54nUiyoUOoB8R3AgRtfLPwFSfpz0Cmi0tyfTEBtIwCaOIRBXXydzLvLLb14u0P2/Szw0bfje5+sbikCMxFoMQLNPFXvcSsqkw3HVjbtc4bpj/A1C+FlYJOgFOT/gGG0EstqaP2evsR4/2gvNN3lqn/p11l7dX08/HEWKqIP21A6pM+V0jlWDyIfN3FPrnu7iPYp/2ybBAugvybfiQLIiEagx97ZJ0bDNnppFphfzBvBTbta6ryiO2j4Mrm5VcBqL6B/h7PclBmF09eIUn2kiJN/YdWzVpFPHD5FQCUzUQ==",
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIEzP9TCeapVQiX94sYfOAOaikH/yPyHcimDQwd0hFhxj"
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
