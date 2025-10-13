# MIGRATION TO TERRAFORM & DRIFT DETECTION

https://youtu.be/-4IMy5ihiiU

provider "aws"{
region = "us-east-1"
}

import {
  id= "i-0573763e5312afd6"

   to= aws_instance.example
}

# step 1-  first execute Terraform plan by bellow given command

# $ terraform plan -generate-config-out=generated_resource.tf   and it will create one file name "generated_resource.tf" 
Copy all data from "generated_resource.tf" file and replace the import {} and remove the filr "generated_resource.tf"

# remove IPV6 configuration(two lines) settings

# if i will run the terraform plan then it will show the message it add one resource.

# Next task to generate terraform.tfstate file

# Command : $ terraform immport aws_instance.example -i-0573763e5312afd6

# Once it will complite this command and it will automatically add terraform.tfstate

# once you will run command:-  $ terraform plan 

# Message will show no changes in resource



