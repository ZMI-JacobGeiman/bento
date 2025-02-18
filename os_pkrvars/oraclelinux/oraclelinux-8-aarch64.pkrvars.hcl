os_name                 = "oraclelinux"
os_version              = "8.10"
os_arch                 = "aarch64"
iso_url                 = "isos/OracleLinux-R8-U10-aarch64-dvd.iso"
iso_checksum            = "file:https://linux.oracle.com/security/gpg/checksum/OracleLinux-R8-U10-Server-aarch64.checksum"
parallels_guest_os_type = "centos"
vbox_guest_os_type      = "Oracle_arm64"
vbox_boot_wait          = "17s"
vbox_iso_interface      = "virtio"
vbox_hard_drive_interface = "virtio"
vbox_firmware_option    = "efi"
vbox_gfx_controller     = "vboxsvga"
vboxmanage              = [
  [
    "modifyvm",
    "{{.Name}}",
    "--audio",
    "none",
    "--nat-localhostreachable1",
    "on",
    "--usbxhci",
    "on",
    "--usbehci",
    "off",
    "--graphicscontroller",
    "QemuRamFB",
  ]
]
vmware_guest_os_type    = "arm-other-64"
boot_command            = ["<wait><up>e<wait><down><down><end><wait> inst.text inst.ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/rhel/8ks.cfg <leftCtrlOn>x<leftCtrlOff>"]
