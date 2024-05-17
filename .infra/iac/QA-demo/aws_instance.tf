module "ec2" {
  source = "git::https://github.com/TaviscaSolutions/central-iac//modules/for-testing/aws_instance?ref=clr-test-utility"
  #source = "../../../modules/for-testing/aws_instance"
  for_each = var.aws_instance
  ami = each.value["ami"]
  instance_type = each.value["instance_type"]
  cpu_core_count = try(each.value["cpu_core_count"], null)
  cpu_threads_per_core = try(each.value["cpu_threads_per_core"], null)
  hibernation = try(each.value["hibernation"], null)
  user_data = try(each.value["user_data"], null)
  user_data_base64 = try(each.value["user_data_base64"], null)
  user_data_replace_on_change = try(each.value["user_data_replace_on_change"], null)
  availability_zone = try(each.value["availability_zone"], null)
  root_block_device = try(each.value["root_block_device"], [])
  secondary_private_ips = try(each.value["secondary_private_ips"], null)
  ebs_optimized = try(each.value["ebs_optimized"], null)
  enclave_options_enabled = try(each.value["enclave_options_enabled"], null)
  subnet_id = try(each.value["subnet_id"], null)
  vpc_security_group_ids = try(each.value["vpc_security_group_ids"], null)
  key_name = try(each.value["key_name"], null)
  monitoring = try(each.value["monitoring"], null)
  get_password_data = try(each.value["get_password_data"], null)
  iam_instance_profile = try(each.value["iam_instance_profile"], null)
  associate_public_ip_address = try(each.value["associate_public_ip_address"], null)
  private_ip = try(each.value["private_ip"], null)
  capacity_reservation_specification = try(each.value["capacity_reservation_specification"], [])
  cpu_options = try(each.value["cpu_options"], [])
  private_dns_name_options = try(each.value["private_dns_name_options"], [])
  metadata_options = try(each.value["metadata_options"], [])
  ebs_block_device = try(each.value["ebs_block_device"], [])
  ephemeral_block_device = try(each.value["ephemeral_block_device"], [])
  network_interface = try(each.value["network_interface"], [])
  launch_template = try(each.value["launch_template"], [])
  maintenance_options = try(each.value["maintenance_options"], [])
  enclave_options = try(each.value["enclave_options"], [])
  credit_specification = try(each.value["credit_specification"], [])
}