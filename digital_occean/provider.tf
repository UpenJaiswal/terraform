variable "do_taken" {}
variable "pub_key" {}
variable "pvt_key" {}
variable "ssh_fingerprint" {}

provider "digitalocean"  {
   token = "${var.do_taken}"
  }
