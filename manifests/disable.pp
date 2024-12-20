#######################################
# selinux module - disable.pp
# Puzzle ITC - haerry+puppet(at)puzzle.ch
# GPLv3
#######################################

# disable selinux stuff
class selinux::disable {
  case $facts['os']['name'] {
    default: {}
    centos: { include selinux::disable::centos }
  }
}
