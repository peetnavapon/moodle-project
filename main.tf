provider {
    tencentcloud {
        secret_id  = var.tencent_cloud_secret_id
        secret_key = var.tencent_cloud_secret_key
        region     = var.tencent_cloud_region
    }
}

resource "tencentcloud_cdb_instance" "moodle_db" {
    instance_name = "moodle-db"
    engine        = "MySQL"
    engine_version = "5.7"
    instance_type = "CDB_S1.SMALL8"
    storage_size  = 20
    password      = var.tencent_db_password
    vpc_id        = var.tencent_vpc_id
    subnet_id     = var.tencent_subnet_id
}