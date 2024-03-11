# CI/CD Pipeline Documentation: Automating VM Deployment and Apache Installation with Ansible

## Introduction

The purpose of this documentation is to outline the steps taken to automate the deployment of a Virtual Machine (VM) and install Apache using Ansible within a Continuous Integration/Continuous Deployment (CI/CD) pipeline. By leveraging Ansible, we aim to streamline the process and ensure consistent and repeatable infrastructure deployment. Below are the encountered errors and the steps taken to resolve them.

## Encountered Errors and Resolutions

### Error 1: Failed to parse my_azure_rm.yaml with auto plugin
### Error 2: Failed to parse my_azure_rm.yaml with yaml plugin
### Error 3: Failed to parse my_azure_rm.yaml with ini plugin
### Error 4: Failed to parse my_azure_rm.yaml with azure_rm plugin
### Error 5: Unable to parse my_azure_rm.yaml as an inventory source
### Error 6: No inventory was parsed, only implicit localhost is available
### Error 7: Could not match supplied host pattern, ignoring: web-server



**Resolution:**
- Confirm that the specified host pattern in the playbook corresponds to valid entries in the inventory file.

## Setup Instructions

Follow these steps to set up the necessary prerequisites and configure Ansible:

1. Install Azure CLI: [Installation Guide](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli)
2. Install Ansible: `pip install ansible`
3. Install Python and Pip.
4. Install Ansible Requirements from GitHub: `pip install -r https://raw.githubusercontent.com/ansible-collections/azure/dev/requirements-azure.txt`
5. Install Azure Collection: `ansible-galaxy collection install azure.azcollection:1.11.0`
6. Install sshpass: `sudo apt-get install sshpass`
7. Configure Ansible Settings in `ansible.cfg`:
   [defaults]
   inventory = ./my_azure_rm.yaml
   host_key_checking = false

   [inventory]
   enable_plugins = host_list, script, auto, yaml, ini, toml, azure_rm

8. Create Azure Credentials File at ~/.azure/credentials:
    ## If running the playbook locally:

    [default]
    subscription_id=******
    client_id=******
    secret=*******
    tenant=*****
    cloud_environment=AzureCloud

    ## If using CI/CD pipeline, use environment variables:
    env:
    ARM_CLIENT_ID: ${{ secrets.ARM_CLIENT_ID }}
    ARM_CLIENT_SECRET: ${{ secrets.ARM_CLIENT_SECRET }}
    ARM_SUBSCRIPTION_ID: ${{ secrets.ARM_SUBSCRIPTION_ID }}
    ARM_TENANT_ID: ${{ secrets.ARM_TENANT_ID }}

    
Make sure to replace `/path/to/my_azure_rm.yaml` with the correct path to your inventory file. Additionally, include any specific details or adjustments needed based on your environment.


## Conclusion
    By following these setup instructions and addressing the encountered errors, you should be able to automate VM deployment and Apache installation successfully using Ansible within your CI/CD pipeline or when running the playbook locally.
