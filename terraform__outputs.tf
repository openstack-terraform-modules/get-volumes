output outputs {
    value = {
        for k, v in data.external.get-volumes : k => v
    }
}