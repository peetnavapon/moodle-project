resource "tencentcloud_vpc" "moodle_vpc" {
    name = "moodle-vpc"
    cidr_block = "10.0.0/16"
}

resource "tencentcloud_subnet" "moodle_subnet" {
    vpc_id = tencentcloud_vpc.moodle_vpc.id
    name = "moodle-subnet"
    cidr_block  = "10.0.0/24"
    available_zone = var.available_zone
}