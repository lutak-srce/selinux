class selinux::setroubleshoot {
  case $facts['os']['name'] {
    centos: { include selinux::setroubleshoot::centos }
  }
}
