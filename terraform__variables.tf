variable deployment {
    type = object({
      id = string
      uuid = string
      tenant_name = string
      domain_name = string
    })
}

variable cluster_prefix {
    type = string
}
variable volume_name {
    type = string
}
//variable OS_CLOUD {
//    type = string
//}