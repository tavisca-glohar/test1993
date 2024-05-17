module "role" {
    #source = "../../../modules/for-testing/aws_iam_role"
    source = "git::https://github.com/TaviscaSolutions/central-iac//modules/for-testing/aws_iam_role?ref=clr-test-utility"
    for_each = var.aws_iam_role
    name = try(each.value["name"], null)
    assume_role_policy = each.value["assume_role_policy"]
    inline_policy = try(each.value["inline_policy"], [])
    description = try(each.value["description"], null)
    force_detach_policies = try(each.value["force_detach_policies"], false)
    managed_policy_arns = try(each.value["managed_policy_arns"], [])
    max_session_duration = try(each.value["max_session_duration"], null)
    #name_prefix = try(each.value["name_prefix"], null)
    path = try(each.value["path"], null)
    permissions_boundary = try(each.value["permissions_boundary"], null)
}