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
     Devlin = {
        ssh_keys = [
          "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDIuvBoG+nC8PBfVbJw5Ap+3MOfU55WKBXBdUek4UGQfvF1W5jLIvdh6qwmkBh1tk97TxDJQ8lK55JvStgLBetUD3bs8JM5r1a/5gymztG0snGVZsXw4ZHxee1ROCVWqI0x739NHyC8/RBH5qCDIlOMSILLaJATMGBEceoAJK8z4tT5IdE89fNNPSyg8RxGlQfbasEYtn8+KmVsxC3vHakP2RZ4kPbIYiBDNeTOYbnOhMZ9zSa3HLmxoqUlbDwQrl+lwLM8tPPnWLLaeNZpbNXhDHNSxziHvbd2ot4WZhb69q1rfvK1W0A+wk14Y/DZPXJVty1Qgrf9ZP1Kf4qMGqd7WA270RpKxlo5zqbk7pq85XuCfoIPgnDcRSUlWXVPDFV1k9n01HtUg04uYft/bpdNNvT0F3W/+Ff3uppKoBl+CUo5wRWQeODLkq9+x+NZbeJFEbcrD3vZvAL+X51FclxquicMxZYGLPU6+gMZb4+bvbJDbPpgdIq6R57FMfyVpuk= 12300703@5CD322B20B"
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
