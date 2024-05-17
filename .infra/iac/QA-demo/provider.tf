
provider "aws" {
    region = "us-east-1"
    default_tags {
        tags = {
            AppName = "test"
            Backup = "no"
            DataClassification = "internal"
            InfraOwner = "poap2"
            Product = "cw"
            BusinessUnit = "poap2"
            Environment = "travel.poc"
        }
    }
}
