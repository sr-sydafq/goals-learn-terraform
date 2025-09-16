# Goals: Learn Terraform

This repository is dedicated to my journey of learning Terraform, an open-source infrastructure as code (IaC) tool. Here, I experiment with Terraform configurations, modules, and best practices to build, change, and version infrastructure safely and efficiently.

## Why Terraform?
Terraform allows you to define both cloud and on-prem resources using declarative configuration files. It supports multiple providers (AWS, Azure, GCP, etc.) and enables reproducible infrastructure deployments.

---

## Terraform Cheatsheet

### Basic Syntax
```hcl
# Resource definition
resource "<PROVIDER>_<TYPE>" "<NAME>" {
  # arguments
}

# Variable
variable "<NAME>" {
  type    = string
  default = "value"
}

# Output
output "<NAME>" {
  value = <EXPRESSION>
}
```

### Common Commands
```
terraform init      # Initialize working directory
terraform plan      # Show execution plan
terraform apply     # Apply changes
terraform destroy   # Destroy managed infrastructure
terraform fmt       # Format code
terraform validate  # Validate configuration
terraform state     # Inspect state
```

### Key Concepts
- **Providers**: Plugins to interact with cloud or other APIs
- **Resources**: Infrastructure objects (VMs, networks, etc.)
- **Data Sources**: Fetch data from providers
- **Variables**: Parameterize configs
- **Outputs**: Export values after apply
- **Modules**: Reusable configuration blocks
- **State**: Tracks resources managed by Terraform

### Useful Links
- [Terraform Docs](https://www.terraform.io/docs)
- [Terraform Registry](https://registry.terraform.io/)
- [HashiCorp Learn](https://learn.hashicorp.com/terraform)
- [Terraform GitHub](https://github.com/hashicorp/terraform)

### Tips & Best Practices
- Use variables for flexibility
- Store state files securely (use remote backends)
- Use modules for reusable code
- Format and validate code regularly
- Version control your configs
- Never commit secrets or sensitive data

---
