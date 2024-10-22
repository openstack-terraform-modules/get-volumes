output outputs {
    #value = {
    #    for k, v in data.external.get-volumes : k => v
    #}
    value = {
        volumes = lookup(
            data.external.get-volumes.result,
            "volumes",
            "NOT FOUND ERROR"
        )
    }
}