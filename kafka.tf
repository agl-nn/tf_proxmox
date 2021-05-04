resource "proxmox_vm_qemu" "kafka" {
  for_each = local.kafka
  agent = var.agent
  clone = var.clone
  cores = 2
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
    size         = "20G"
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
    macaddr   = each.value["macaddr"]
    model     = "virtio"
    queues    = 0
    rate      = 0
    tag       = 63
  }
}
output "instance_ip_addr_for_kafka" {
    value = toset([
    for ip in proxmox_vm_qemu.kafka : [ip.name, ip.ssh_host]
  ])
}
