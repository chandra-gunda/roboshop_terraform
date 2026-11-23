instances = {
    frontend ={
        instance_type = "t3 .small"
    }
    mysql = {
        instance_type = "t3.small"
    }
    mongodb = {
        instance_type = "t3.small"
    }
    redis = {
        instance_type = "t3.small"
    }
    rabbitmq = {
        instance_type = "t3.small"
    }
    cart = {
        instance_type = "t3.small"
    }
    catalogue = {
        instance_type = "t3.small"
    }
    user = {
        instance_type = "t3.small"
    }
    shipping = {
        instance_type = "t3.small"
    }
    payment = {
        instance_type = "t3.small"
    }

}
environment = "prod"
ami = "ami-0c55b159cbfafe1f0"
region = "us-east-1"
zone_id = "getzoneid from route53"
zone_name = "getzone name from route53"