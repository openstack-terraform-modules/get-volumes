output outputs {
    #value = {
    #    for k, v in data.external.get-volumes : k => v
    #}
    value = {
        volumes = jsondecode(lookup(
            data.external.get-volumes.result,
            "volumes",
            "{\"error\":\"NOT FOUND ERROR\"}"
        ))
    }
}