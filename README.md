# Terraform

> Will create multiple set of scripts for clarity.
> Version details:
>    - OS: Win10 Home
>    - Terraform: v0.14.3
>    - Packer: 1.6.6
>    - Ruby: ruby 2.7.2p137 (2020-10-01 revision 5445e04352) [x64-mingw32]
>    - AWS: aws-cli/2.1.13 Python/3.7.9 Windows/10 exe/AMD64 prompt/off

## Installation information
  - Need AWS account with admin access
  - Terraform
  - Packer
    - Used to create httpd, logrotate and other utilities
  - Ruby
    - this will be used to destroy ami using script
  - AWS Cli SDK
  - Note: To create custom KMS Key refer my another module as 
    -  https://github.com/svermaji/terraform
  - Before start below config need to be applied
    - AWS region and credentials need to be set
    - Copy certificates in the cert folder
    - Copy credentials in the ec2-to-s3 folder

## iam 
This folder contains terraform sample scripts that
  - creates roles, users (not using for security reasons)
  - creates the instance using ssh
  - creates the groups
  - ami
  - ec2 etc

## infra 
This folder contains terraform sample scripts that
  - ec2 instances get created based on newly created packer ami
  - make ec2 public and connect with the public subnet so user can ssh without any inbound rule modification

## packer-scripts
This folder contains terraform sample scripts that
  - creates ami
  - configure httpd, logrotate and other software update
  - script to destroy ami

## batch
This folder contains 
  - batch files that are used as shortcuts to run
      - terraform command  
      - packer command  
      - ruby command  
