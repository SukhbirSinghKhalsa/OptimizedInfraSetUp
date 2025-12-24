# OptimizedInfraSetUp
- Uses Terraform, Github Actions, Azure Cloud Resouces, Networking
- In terraform utilized for_each, map, object, modules

## File Structure
```bash
├───.github
│   └───workflows
├───azure_devops_trigger
│   ├───.pipelines
│   ├───environment
│   │   └───sandbox
│   └───module
│       ├───compute
│       ├───networking
│       ├───public_ip
│       ├───resource_group
│       ├───sql_database
│       └───sql_server
└───github_actions_trigger
    ├───environments
    │   └───sandbox
    └───modules
        ├───10_aks
        ├───11_mssql_server
        ├───12_mssql_database
        ├───1_resource_groups
        ├───2_storage_accounts
        ├───3_public_ip
        ├───4_key_vault
        ├───5_kv_secret
        ├───6_vnet
        ├───7_nsg
        ├───8_vm
        └───9_acr
```