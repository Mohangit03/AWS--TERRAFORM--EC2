# AWS--TERRAFORM--EC2  


# Create an EC2 instance with Terraform
In this section, we'll write the code to create an EC2 instance. We'll review how to set up the main.tf file to create an EC2 instance and the variable files to ensure the instance is repeatable across any environment.
# Prerequisites:
•	AWS account.
•	AWS Identify and Access Management (IAM) credentials and programmatic access. The IAM credentials that you need for EC2.
•	setting up AWS credentials locally with aws configure in the AWS Command Line Interface (CLI). 
•	a VPC configured for EC2. 
•	a code or text editor.

# Create the main.tf file
Open your text/code editor and create a new directory. Make a file called main.tf. When setting up the main.tf file, you will create and use the Terraform AWS provider a plugin that enables Terraform to communicate with the AWS platform and the EC2 instance.
First, add the provider code to ensure you use the AWS provider.
Next, set up your Terraform resource, which describes an infrastructure object, for the EC2 instance.  This will create the instance. Define the instance type and configure the network.
•	The network interface ID to attach to the EC2 instance from the VPC.
•	The Amazon Machine Image of an instance. In the code snippet below, the AMI defaults to Ubuntu.
•	The size of the instance. In the code snippet below, the instance type defaults to a t2 Micro instance size.

 # Create the EC2

To deploy the EC2 environment, ensure you're in the Terraform module/directory in which you write the Terraform code, and run the following commands:
•	terraform init. Initializes the environment and pulls down the AWS provider.
•	terraform plan. Creates an execution plan for the environment and confirm no bugs are found.
•	terraform apply --auto-approve. Creates and automatically approves the environment.


# Clean up the environment

To destroy all Terraform environments, ensure that you're in the Terraform module/directory that you used to create the EC2 instance and run terraform destroy

