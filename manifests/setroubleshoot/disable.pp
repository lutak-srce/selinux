class selinux::setroubleshoot::disable {
  case $facts['os']['name'] {
    default: {}
    centos: { include selinux::setroubleshoot::disable::centos }
  }
}
