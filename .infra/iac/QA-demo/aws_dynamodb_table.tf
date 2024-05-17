module "aws_dynamodb_table" {
  #source = "../../../modules/for-testing/aws_dynamodb_table"
  source = "git::https://github.com/TaviscaSolutions/central-iac//modules/for-testing/aws_dynamodb_table?ref=clr-test-utility"
  for_each = var.aws_dynamodb_table
  name = each.value["name"]
  hash_key = each.value["hash_key"]
  attribute = each.value["attribute"]
  billing_mode = try(each.value["billing_mode"], null)
  range_key = try(each.value["range_key"], null)
  read_capacity = try(each.value["read_capacity"], null)
  write_capacity = try(each.value["write_capacity"], null)
  stream_enabled = try(each.value["stream_enabled"], null)
  stream_view_type = try(each.value["stream_view_type"], null)
  table_class = try(each.value["table_class"], null)
  deletion_protection_enabled = try(each.value["deletion_protection_enabled"], null)
  ttl = try(each.value["ttl"], [])
  point_in_time_recovery = try(each.value["point_in_time_recovery"], [])
  global_secondary_index = try(each.value["global_secondary_index"], [])
  local_secondary_index = try(each.value["local_secondary_index"], [])
  replica = try(each.value["replica"], [])
  server_side_encryption = try(each.value["server_side_encryption"], [])
}