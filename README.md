![terraform](/uploads/e621a27747c6da9c9b665c24dceeac3f/terraform.png)
# AWS TransitVPC
This project uses Terraform with AWS to create the infrastructure required for a TransitVPC.
Included in the final architecture is 4 Palo Alto firewalls and 2 Cisco CSR1000v routers. 
This project utilizes a "terra-services" type model with multiple state files within multiple S3 buckets to allow components such as ec2 and vpc to operate independently giving more freedom adn less risk of potentially destroying the wrong resources.
Because of this model the provisioning of the infrastructure must happen in a specific set of steps. Listed below is the overall outline of these steps.

## Versioning

[SemVer](http://semver.org/) will be used for versioning

## All Built With

* [PyCharm Professional](https://www.jetbrains.com/pycharm/) - IDE Used
* [Terraform](https://www.terraform.io/) - Hashicorp Terraform
* [AWS](https://aws.amazon.com/) - Cloud Provider

## Authors
- castironclay
