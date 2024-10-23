output inventory_file_path {
    value = {
        inventory_file_path = lookup(
            data.external.get-volumes.result,
            "inventory_file_path",
            "NOT FOUND ERROR"
        )
    }
}