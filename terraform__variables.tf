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

variable group_prefix {
    type = string
}