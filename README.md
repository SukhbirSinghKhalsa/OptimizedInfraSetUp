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
        ├───resource_groups
        └───storage_accounts
```