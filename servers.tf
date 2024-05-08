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
    Laye = {
    	ssh_key = [
		"ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCnk//AEh5iMnkfdiEvht0lAqqyzbMCQ0PxUfNUEQOcGrzIzCu9aZfFIP4hhBztEyZCHiBCD2KEv1Bg6gAzRfycgQl/fv9i6SDBwJ0h9zvNT26g90izjroO4PSUP/PrQ5v1AfVJPhGxDWlj6sI11WBTDBO8651Nl0NlIVBxT47DKPpKhMELFAP4oK4O9p0EMOBFebyCTnM9kwyhwFgqg3gtGz8mZ9+WImXOggC4kohIBQTbWw97tlzmxo86BUzjkRpr8xSa6jhWOOSaRCcmLr5B9dKcQFlZRvpxHMES0W4NnL2HssNCZPb2YST3KHnBWW75DNR3nOCWLE+D6wsFAppZfSyj5H6aDo6EywY3O96xeIGg+sknwnSlyLBJ3DRKCXN/saVduDZRrU3UrN1Psudd9USR4INTQr1caBalWGt4P9P3c2Z/vQYScuViEMaq+Bst+rIRzZprpsNHwI7tZ/d5FP6CO7Dt5fS0HMmj0IKf9bBZktzirsQRyHymXp8bH1lmWm/JaKcx5yW7a1BkghPC3vaUfxnHA9MN5Fl+fHcWwWM2Ujzq+Ua+3bvaRRc8OsSF6CTrpsNWwPM/118kvPiFSuGa6YvK6JXypW0Wr/kcQUr+EJTF7cFPG47+Qsul0KeoAyKLjnO83W5QxCxtPhyhE0zqlFkG2p/f1OLFMhzGNw== layson_sali@LaysonSali"
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
  }
}

module "student_servers" {
  for_each     = local.students
  source       = "./modules/student_server"
  student_name = each.key
  ssh_keys     = each.value.ssh_keys
}
