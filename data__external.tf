
data external get-volumes {
    #
    # https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external
    #
    program = [
        "/usr/bin/env", "-S", "pkgx", "+jq^1.7", "+bash^5", "bash",
        "${path.module}/scripts/get-volumes.pkgx"
    ]

    query = {
        deployment_uuid = local.deployment_uuid
        cluster_prefix = local.cluster_prefix
        group_prefix = local.group_prefix
    }
}