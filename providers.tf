#
# Provider Configuration
#

provider "aws" {
  region  = "ap-south-1"
  access_key = "AKIA35DVZJK54VG55TNH"
  secret_key = "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"

}

# Using these data sources allows the configuration to be
# generic for any region.
data "aws_region" "current" {}

data "aws_availability_zones" "available" {}

# Not required: currently used in conjuction with using
# icanhazip.com to determine local workstation external IP
# to open EC2 Security Group access to the Kubernetes cluster.
# See workstation-external-ip.tf for additional information.
provider "http" {}
