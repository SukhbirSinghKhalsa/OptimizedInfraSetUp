# OptimizedInfraSetUp
- Uses Terraform, Github Actions, Azure Cloud Resouces, Networking
- In terraform utilized for_each, map, object, modules
## File Structure
```bash
│   azure-pipelines.yml
│   inittemplate.yaml
│   
├───environment
│   └───sandbox
│           main.tf
│           provider.tf
│           terraform.tfvars
│           variables.tf
│
└───module
    ├───compute
    │       data.tf
    │       main.tf
    │       variables.tf
    │       
    ├───networking
    │       main.tf
    │       variables.tf
    │
    ├───public_ip
    │       main.tf
    │       variables.tf
    │
    ├───resource_group
    │       main.tf
    │       variables.tf
    │
    ├───sql_database
    │       data.tf
    │       main.tf
    │       variables.tf
    │
    └───sql_server
            main.tf
            variables.tf
```
