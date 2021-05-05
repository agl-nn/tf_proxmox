variable "ssh-keys" {
  default = <<EOF
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDunb7JRKmSRo4sCysv/RiF3u+Iuq3x4GohHfr0R23i4jUwTn+uJq4LSYWaccXYHD+rY8QTaOX3K/OFuyKbfgT3ZTuJsPaDbFIlWD/cwQIkT6XwH6KGrrKsxY3dWzM7MH7uNVEuw0TaHZDCdkwVijJzTf37f8UAXlfMPE2WwOJox65sWUSngZQ4cgcicBwmN6Fb2v9fSJMkV6OC7XjwZmwkUbD+U6DAvY8Z3rJEA305437TMnRENP1qOUDr8SoX7ITJPPaqF2pOLyCNl6sM+Rs/YpULtrYhJFb1eR7TaMrWPznOU2KPXyuDciDRA0/Cw85WAJHlj49aeo0xMhPKXIQZueRyiM09COBZvwluIV5x1RzW/o8jtUv0GbEjukfL3mUlPZNawfAfY6qnYq3AjgNyK2kL7gWFUjbpQVayLKwPDxoYS/34kjdP1Vy9kcJlkveb74qbFIkmBE2s05WPLOxXmYv0oc2dk2O/btxlucqoWOhVQDO6j/RrebkfnPL1uuqc5o+viyrMpzqjzleR/uySBXhjW4IIwGr4xE7CXm2RHsS556qTvoW334ks8eD99mOoPj3iyK8Yu9sVffIx+jt0oFOwgSS48AFmw+/9aSBblampZiWxjfzLuZu1j63mpC/1SqIYjlQb7Q3T2HWcWifjxvH+3DNfbe1nc0Tnij6XHw== Andrey Nastagunin (netris-gitlab.qligent.ru)
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDH1YHqoltcZRFMulXmiO3MXNGuIQrIBfsyNmYMxuOkrdvSuE9WKTgPPf94ezeFwXQQQWqEO/O3ipCCfgN3UljDslIgEsbstlhEZPVWKzzJrwZwqswdMG6CpK2llwTNn7qO6gav/90fCXvNx5+F6AshYniPG/GVp5DVrngPc8ymNbMvyc6vjMg0tKHs7ZkGRVRmPNXXdu3oDPlu2KIM8+tQOZsVcOu+ma30jm+fzDx3MHBY7xTYMCLLMAZQ9iBnl5HndR8habZWRJEUBtHpBRpD2cCIKAlQbTvMTCwCQA7z41Hd+5yOzNU8taz1xeVOVrcoVxgwGitjKtojaDxWOm1h David Kazantsev (netris-gitlab.qligent.ru)
    ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDtXjkQC7sW8q7gpZ+js8YCHORoDt5seDwEAwuER8Wma03dWugs/vy8Ei12MI1DR5s0+RCTA40IrZX/kidZV8BEbg0vJ4aSBkvIVG63Ea21RlxA6jQRKnwbRje44S2/WYE93g6RaijwgxKqlc9a96Qdho76aUIuPlJxpIzIcdLOwFa6VruGnPDnjtO0Ws588Q1c5aYie+9peXBivW1C3rzUVD7+nVlR0MTvSQEX0etsurZ//GKXP94oJZ9Mt9t8LTvBw3Eo9JQojVmyKX6Yi1cdsqgtV3hfpGOjT7RPVvYO5VVYXK2H8ji41sdk3M1IiBpOdG0dwWb6HCMPWDrOQ1U5 Aleksandr Lobin (netris-gitlab.qligent.ru)
  EOF
}

variable "agent" {
  default = 1
}
variable "os_type" {
  default = "cloud-init"
}
variable "target_node" {
  default = "pn-1-agl"
}
variable "ipconfig0" {
  default = "ip=dhcp"
}
variable "clone" {
  default = "centos7-template-cloud-init-no-lvm-20210428"
}
variable "bootdisk" {
  default = "scsi0"
}
variable "cpu_type" {
  default = "kvm64"
}
variable "disk_type" {
  default = "scsi"
}
