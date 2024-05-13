
provider "aws" {
    region = "us-east-1"
    default_tags {
        tags = merge(var.mandatory_tags, { ResourceGroup = "${var.mandatory_tags.Product}-${var.mandatory_tags.AppName}"})
    }
}
