output outputs {
    #value = {
    #    for k, v in data.external.get-volumes : k => v
    #}
    value = data.external.get-volumes.result
}