output inventory_file_path {
    value = lookup(
        data.external.get-volumes.result,
        "inventory_file_path",
        "NOT FOUND ERROR"
    )
}