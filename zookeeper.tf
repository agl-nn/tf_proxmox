resource "proxmox_vm_qemu" "zookeeper" {
  for_each = local.zookeeper
  agent = var.agent
  clone = var.clone
  cores = 1
  sockets = 1
  memory = 2048
  os_type = var.os_type
  target_node = var.target_node
  sshkeys = var.ssh-keys
  ipconfig0 = var.ipconfig0
  name = each.key
  cpu = var.cpu_type
  bootdisk = var.bootdisk
  vmid = each.value["vmid"]
  disk {
    size         = "15G"
    storage      = each.value["storage_root"]
    type         = "scsi"
  }
    disk {
    size         = "20G"
    storage      = each.value["storage_root"]
    type         = var.disk_type
  }
  network {
    bridge    = "vmbr0"
    firewall  = true
    link_down = false
    model     = "virtio"
    queues    = 0
    rate      = 0
    tag       = 63
  }
}
output "instance_ip_addr_for_zookeeper" {
    value = toset([
    for ip in proxmox_vm_qemu.zookeeper : [ip.name, ip.ssh_host]
  ])
}
