module "ec2" {
  source = "git::https://github.com/TaviscaSolutions/central-iac//modules/for-testing/aws_instance?ref=clr-test-utility"
  for_each = var.aws_instance
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  capacity_reservation_specification = each.value["capacity_reservation_specification"]
  cpu_options = each.value["cpu_options"]
  credit_specification = each.value["credit_specification"]
  key_name = each.value["key_name"]
  vpc_security_group_ids = each.value["vpc_security_group_ids"]
  metadata_options = each.value["metadata_options"]
  private_dns_name_options = each.value["private_dns_name_options"]
  subnet_id = each.value["subnet_id"]
  root_block_device = each.value["root_block_device"]
}