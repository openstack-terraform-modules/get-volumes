# get-volumes

```hcl
module deployment {
    source = "git::https://github.com/openstack-terraform-modules/deployment.git"
    deployment_file_path = abspath("../../deployment.json")
}

module get-volumes {
    source = "git::https://github.com/openstack-terraform-modules/get-volumes.git"
    deployment = module.deployment.outputs
}

output inventory_file_path {
    value = module.get-volumes.inventory_file_path
}
```
