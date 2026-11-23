module "ec2" {

    for_each = var.instances #we are using for_each because we have a map of instances and we want to create multiple instances based on the map
    source = "./modules/ec2" # need to use source because we are using a module and we need to specify the path of the module
    ami = var.ami 
    instance_type = each.value["instance_type"]
    name = each.key
    environment = var.environment
    zone_id = var.zone_id
    zone_name = var.zone_name
}