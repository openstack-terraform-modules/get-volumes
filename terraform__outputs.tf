output deployment {
    value = local.deployment
}
output inventory_file_path {
    value = lookup(
        data.external.get-volumes.result,
        "inventory_file_path",
        "NOT FOUND ERROR"
    )
}

output cluster_prefix {
    value = var.cluster_prefix
}

output volume_name {
    value = var.volume_name
}