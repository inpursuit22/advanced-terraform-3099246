### VARIABLES
variable "project-id" {
  type = string
}

variable "region" {
  type = string
  default = "us-central1"
}

variable "zone" {
  type = string
  default = "us-central1-a"
}

variable "subnet-name" {
  type = string
  default = "subnet1"
}

variable "subnet-cidr" {
  type = string
  default = "10.127.0.0/20"
}

variable "private_google_access" {
  type = bool
  default = true
}

variable "firewall-ports" {
  type = list
  default = ["80", "8080", "1000-2000", "22"]
}

variable "compute-source-tags" {
    type = list
    default = ["web"]
}

variable "target_environment" {
  default = "DEV"
}

variable "environment_list" {
  type = list(string)
  default = ["DEV","QA","STAGE","PROD"]
}

variable "environment_map" {
  type = map(string)
  default = {
    "DEV" = "dev",
    "QA" = "qa",
    "STAGE" = "stage",
    "PROD" = "prod"
  }
}

variable "environment_machine_type" {
  type = map(string)
  default = {
    "DEV" = "f1-micro",
    "QA" = "f1-micro",
    "STAGE" = "f1-micro",
    "PROD" = "f1-micro"
  }
}

variable "environment_instance_settings" {
  type = map(object({machine_type=string, tags=list(string)}))
  default = {
    "DEV" = {
      machine_type = "f1-micro"
      tags = ["dev"]
    },
   "QA" = {
      machine_type = "f1-micro"
      tags = ["qa"]
    },
    "STAGE" = {
      machine_type = "f1-micro"
      tags = ["stage"]
    },
    "PROD" = {
      machine_type = "f1-micro"
      tags = ["prod"]
    }
  }
}
