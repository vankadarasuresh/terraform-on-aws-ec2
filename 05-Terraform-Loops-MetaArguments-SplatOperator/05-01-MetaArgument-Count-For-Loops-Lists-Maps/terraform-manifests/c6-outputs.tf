# Terraform Output Values
/* Concepts Covered
1. For Loop with List
2. For Loop with Map
3. For Loop with Map Advanced
4. Legacy Splat Operator (latest) - Returns List
5. Latest Generalized Splat Operator - Returns the List
*/

# Output - For Loop with List

output "For_Loop_With_List" {
  description = "For_Loop_With_List"
  value = [for instance in aws_instance.myec2vm: instance.public_ip]
}


# Output - For Loop with Map

output "For_Loop_with_MAP" {
  description = "For Loop with Map"
  value = {for instance in aws_instance.myec2vm: instance.id => instance.public_dns} 
}




# Output - For Loop with Map Advanced

output "For_Loop_with_map_advanced" {
  description = "For_Loop_with_map_advanced"
  value = {for c, instance in aws_instance.myec2vm: c => instance.public_dns}

}


# Output Legacy Splat Operator (Legacy) - Returns the List
/*
output "legacy_splat_instance_publicdns" {
  description = "Legacy Splat Operator"
  value = aws_instance.myec2vm.*.public_dns
}
*/

output "legacy_splat" {
  description = "legacy_splat"
  value = aws_instance.myec2vm.*.public_dns
  #value = aws_instance.myec2vm.*.public_ip
}

# Output Latest Generalized Splat Operator - Returns the List

output "new_Splat" {
  description = "new_Splat"
  value = aws_instance.myec2vm[*].public_dns
  
}
