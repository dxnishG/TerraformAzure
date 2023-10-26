PS C:\TerraformAzureProject> terraform init -reconfigure

Initializing the backend...

Successfully configured the backend "azurerm"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Reusing previous version of azure/azapi from the dependency lock file
- Reusing previous version of hashicorp/azurerm from the dependency lock file
- Reusing previous version of hashicorp/random from the dependency lock file
- Using previously-installed azure/azapi v1.9.0
- Using previously-installed hashicorp/azurerm v2.99.0
- Using previously-installed hashicorp/random v3.5.1

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS C:\TerraformAzureProject> terraform plan -out main.tfplan

Terraform used the selected providers to generate the following execution plan. Resource actions are
indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # azurerm_linux_virtual_machine.my_terraform_vm will be created
  + resource "azurerm_linux_virtual_machine" "my_terraform_vm" {
      + admin_username                  = "azureadmin"
      + allow_extension_operations      = true
      + computer_name                   = "hostname"
      + disable_password_authentication = true
      + extensions_time_budget          = "PT1H30M"
      + id                              = (known after apply)
      + location                        = "southeastasia"
      + max_bid_price                   = -1
      + name                            = "VM-1"
      + network_interface_ids           = (known after apply)
      + patch_mode                      = "ImageDefault"
      + platform_fault_domain           = -1
      + priority                        = "Regular"
      + private_ip_address              = (known after apply)
      + private_ip_addresses            = (known after apply)
      + provision_vm_agent              = true
      + public_ip_address               = (known after apply)
      + public_ip_addresses             = (known after apply)
      + resource_group_name             = (known after apply)
      + size                            = "Standard_DS1_v2"
      + virtual_machine_id              = (known after apply)
      + zone                            = (known after apply)

      + admin_ssh_key {
          + public_key = <<-EOT
                ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC2u11Wg2dXScCtSelDmuxhGezsVN9q5ssEzP1ArGfBaoW6Pe+ODWSJuVTR2p/aQ6Na41WqOD8YogM6iQVF8p8owzmn4oM4XzJfz4E0mdnztMfALttd+CUV8CX6f2k2OUJt1jVRHTVWnlSh33d12wQ2wsNGEKHX9olxyFQhICyENeCL7qh9LbqClp80x/4Ttydhz5e/y0ZPUnnheU0c1fV7iUHHC1yOQrX+RlpWsMpMiPX4RuP98y7pn5N1+cvh+VM3Oxo4prWO17Q/6epQhV7K9KbsFC3fETe1KLHEb2v6WmGLp0oRr2cJN6QuHyieYNuCMENmMJtsATrUZsRgBT4iOyyk8XWOWMNZdLBq81ThNHHrb+16MChwe2LEPvKvFFkm47CKOHmGPO+mKKH1flOZNnDBR8rxgUiyf9BlfkIv5dgDeSCyT2nvYAuCMCtrHvPVoM0Z3GhXyU4n19hnJGtxh2iMAEujwFNZ0vhmdUeoR/+qf7OkuWCWaFR2Mq5Q3o0= danish@DESKTOP-RJ2SAD8
            EOT
          + username   = "azureadmin"
        }

      + boot_diagnostics {
          + storage_account_uri = (known after apply)
        }

      + os_disk {
          + caching                   = "ReadWrite"
          + disk_size_gb              = (known after apply)
          + name                      = "Disk"
          + storage_account_type      = "Premium_LRS"
          + write_accelerator_enabled = false
        }

      + source_image_reference {
          + offer     = "0001-com-ubuntu-server-jammy"
          + publisher = "Canonical"
          + sku       = "22_04-lts-gen2"
          + version   = "latest"
        }
    }

  # azurerm_network_interface.my_terraform_nic will be created
  + resource "azurerm_network_interface" "my_terraform_nic" {
      + applied_dns_servers           = (known after apply)
      + dns_servers                   = (known after apply)
      + enable_accelerated_networking = false
      + enable_ip_forwarding          = false
      + id                            = (known after apply)
      + internal_dns_name_label       = (known after apply)
      + internal_domain_name_suffix   = (known after apply)
      + location                      = "southeastasia"
      + mac_address                   = (known after apply)
      + name                          = "NIC-1"
      + private_ip_address            = (known after apply)
      + private_ip_addresses          = (known after apply)
      + resource_group_name           = (known after apply)
      + virtual_machine_id            = (known after apply)

      + ip_configuration {
          + gateway_load_balancer_frontend_ip_configuration_id = (known after apply)
          + name                                               = "nic_configuration-1"
          + primary                                            = (known after apply)
          + private_ip_address                                 = (known after apply)
          + private_ip_address_allocation                      = "Dynamic"
          + private_ip_address_version                         = "IPv4"
          + public_ip_address_id                               = (known after apply)
          + subnet_id                                          = (known after apply)
        }
    }

  # azurerm_network_interface_security_group_association.example will be created
  + resource "azurerm_network_interface_security_group_association" "example" {
      + id                        = (known after apply)
      + network_interface_id      = (known after apply)
      + network_security_group_id = (known after apply)
    }

  # azurerm_network_security_group.my_terraform_nsg will be created
  + resource "azurerm_network_security_group" "my_terraform_nsg" {
      + id                  = (known after apply)
      + location            = "southeastasia"
      + name                = "NetworkSecurityGroup-1"
      + resource_group_name = (known after apply)
      + security_rule       = [
          + {
              + access                                     = "Allow"
              + description                                = ""
              + destination_address_prefix                 = "*"
              + destination_address_prefixes               = []
              + destination_application_security_group_ids = []
              + destination_port_range                     = "22"
              + destination_port_ranges                    = []
              + direction                                  = "Inbound"
              + name                                       = "SSH"
              + priority                                   = 1001
              + protocol                                   = "Tcp"
              + source_address_prefix                      = "*"
              + source_address_prefixes                    = []
              + source_application_security_group_ids      = []
              + source_port_range                          = "*"
              + source_port_ranges                         = []
            },
        ]
    }

  # azurerm_public_ip.my_terraform_public_ip will be created
  + resource "azurerm_public_ip" "my_terraform_public_ip" {
      + allocation_method       = "Dynamic"
      + availability_zone       = (known after apply)
      + fqdn                    = (known after apply)
      + id                      = (known after apply)
      + idle_timeout_in_minutes = 4
      + ip_address              = (known after apply)
      + ip_version              = "IPv4"
      + location                = "southeastasia"
      + name                    = "PublicIP-1"
      + resource_group_name     = (known after apply)
      + sku                     = "Basic"
      + sku_tier                = "Regional"
      + zones                   = (known after apply)
    }

  # azurerm_resource_group.rg will be created
  + resource "azurerm_resource_group" "rg" {
      + id       = (known after apply)
      + location = "southeastasia"
      + name     = (known after apply)
    }

  # azurerm_storage_account.my_storage_account will be created
  + resource "azurerm_storage_account" "my_storage_account" {
      + access_tier                       = (known after apply)
      + account_kind                      = "StorageV2"
      + account_replication_type          = "LRS"
      + account_tier                      = "Standard"
      + allow_blob_public_access          = false
      + enable_https_traffic_only         = true
      + id                                = (known after apply)
      + infrastructure_encryption_enabled = false
      + is_hns_enabled                    = false
      + large_file_share_enabled          = (known after apply)
      + location                          = "southeastasia"
      + min_tls_version                   = "TLS1_0"
      + name                              = (known after apply)
      + nfsv3_enabled                     = false
      + primary_access_key                = (sensitive value)
      + primary_blob_connection_string    = (sensitive value)
      + primary_blob_endpoint             = (known after apply)
      + primary_blob_host                 = (known after apply)
      + primary_connection_string         = (sensitive value)
      + primary_dfs_endpoint              = (known after apply)
      + primary_dfs_host                  = (known after apply)
      + primary_file_endpoint             = (known after apply)
      + primary_file_host                 = (known after apply)
      + primary_location                  = (known after apply)
      + primary_queue_endpoint            = (known after apply)
      + primary_queue_host                = (known after apply)
      + primary_table_endpoint            = (known after apply)
      + primary_table_host                = (known after apply)
      + primary_web_endpoint              = (known after apply)
      + primary_web_host                  = (known after apply)
      + queue_encryption_key_type         = "Service"
      + resource_group_name               = (known after apply)
      + secondary_access_key              = (sensitive value)
      + secondary_blob_connection_string  = (sensitive value)
      + secondary_blob_endpoint           = (known after apply)
      + secondary_blob_host               = (known after apply)
      + secondary_connection_string       = (sensitive value)
      + secondary_dfs_endpoint            = (known after apply)
      + secondary_dfs_host                = (known after apply)
      + secondary_file_endpoint           = (known after apply)
      + secondary_file_host               = (known after apply)
      + secondary_location                = (known after apply)
      + secondary_queue_endpoint          = (known after apply)
      + secondary_queue_host              = (known after apply)
      + secondary_table_endpoint          = (known after apply)
      + secondary_table_host              = (known after apply)
      + secondary_web_endpoint            = (known after apply)
      + secondary_web_host                = (known after apply)
      + shared_access_key_enabled         = true
      + table_encryption_key_type         = "Service"
    }

  # azurerm_subnet.my_terraform_subnet will be created
  + resource "azurerm_subnet" "my_terraform_subnet" {
      + address_prefix                                 = (known after apply)
      + address_prefixes                               = [
          + "10.0.1.0/24",
        ]
      + enforce_private_link_endpoint_network_policies = false
      + enforce_private_link_service_network_policies  = false
      + id                                             = (known after apply)
      + name                                           = "Subnet-1"
      + resource_group_name                            = (known after apply)
      + virtual_network_name                           = "Vnet-1"
    }

  # azurerm_virtual_network.my_terraform_network will be created
  + resource "azurerm_virtual_network" "my_terraform_network" {
      + address_space         = [
          + "10.0.0.0/16",
        ]
      + dns_servers           = (known after apply)
      + guid                  = (known after apply)
      + id                    = (known after apply)
      + location              = "southeastasia"
      + name                  = "Vnet-1"
      + resource_group_name   = (known after apply)
      + subnet                = (known after apply)
      + vm_protection_enabled = false
    }

  # random_id.random_id will be created
  + resource "random_id" "random_id" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 8
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
      + keepers     = {
          + "resource_group" = (known after apply)
        }
    }

  # random_pet.rg_name will be created
  + resource "random_pet" "rg_name" {
      + id        = (known after apply)
      + length    = 2
      + prefix    = "Terraform-rg"
      + separator = "-"
    }

Plan: 11 to add, 0 to change, 0 to destroy.

─────────────────────────────────────────────────────────────────────────────────────────────────────────── 

Saved the plan to: main.tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "main.tfplan"
PS C:\TerraformAzureProject> terraform apply main.tfplan
random_pet.rg_name: Creating...
random_pet.rg_name: Creation complete after 0s [id=Terraform-rg-skilled-maggot]
azurerm_resource_group.rg: Creating...
azurerm_resource_group.rg: Creation complete after 0s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot]
azurerm_public_ip.my_terraform_public_ip: Creating...
azurerm_virtual_network.my_terraform_network: Creating...
azurerm_network_security_group.my_terraform_nsg: Creating...
random_id.random_id: Creating...
random_id.random_id: Creation complete after 0s [id=F-NRlmZH7Ls]
azurerm_storage_account.my_storage_account: Creating...
azurerm_public_ip.my_terraform_public_ip: Creation complete after 2s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/publicIPAddresses/PublicIP-1]
azurerm_network_security_group.my_terraform_nsg: Creation complete after 2s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/networkSecurityGroups/NetworkSecurityGroup-1]
azurerm_virtual_network.my_terraform_network: Creation complete after 4s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/virtualNetworks/Vnet-1]
azurerm_subnet.my_terraform_subnet: Creating...
azurerm_subnet.my_terraform_subnet: Creation complete after 4s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/virtualNetworks/Vnet-1/subnets/Subnet-1]
azurerm_network_interface.my_terraform_nic: Creating...
azurerm_network_interface.my_terraform_nic: Creation complete after 1s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/networkInterfaces/NIC-1]
azurerm_network_interface_security_group_association.example: Creating...
azurerm_storage_account.my_storage_account: Still creating... [10s elapsed]
azurerm_network_interface_security_group_association.example: Creation complete after 2s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/networkInterfaces/NIC-1|/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Network/networkSecurityGroups/NetworkSecurityGroup-1]
azurerm_storage_account.my_storage_account: Still creating... [20s elapsed]
azurerm_storage_account.my_storage_account: Creation complete after 26s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Storage/storageAccounts/diag17e351966647ecbb]
azurerm_linux_virtual_machine.my_terraform_vm: Creating...
azurerm_linux_virtual_machine.my_terraform_vm: Still creating... [10s elapsed]
azurerm_linux_virtual_machine.my_terraform_vm: Creation complete after 17s [id=/subscriptions/9d93ef6e-f53f-4de8-ab35-59d6d5548b62/resourceGroups/Terraform-rg-skilled-maggot/providers/Microsoft.Compute/virtualMachines/VM-1]

Apply complete! Resources: 11 added, 0 changed, 0 destroyed.