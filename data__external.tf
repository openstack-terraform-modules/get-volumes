data external get-volumes {
        program = [
        "/usr/bin/env", "-S", "pkgx", "+openstack^7.2", "+jq^1.7", "+bash^5", "bash",
        "${path.module}/scripts/get-volumes.pkgx"
    ]
}

data external filter-volumes {
    #
    # https://registry.terraform.io/providers/hashicorp/external/latest/docs/data-sources/external
    #
    program = [
        "/usr/bin/env", "-S", "pkgx", "+openstack^7.2", "+jq^1.7", "+bash^5", "bash",
        "${path.module}/scripts/filter-volumes.pkgx"
    ]

    query = {
        deployment_uuid = local.deployment.uuid
        cluster_prefix = local.cluster_prefix
        group_prefix = local.group_prefix
    }
}