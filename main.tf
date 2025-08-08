provider {
    tencentcloud {
        secret_id  = var.secret_id
        secret_key = var.secret_key
        region     = var.cloud_region
    }
}

resource "tencentcloud_cdb_instance" "moodle_db" {
    instance_name = "moodle-db"
    engine        = "MySQL"
    engine_version = "5.7"
    instance_type = "CDB_S1.SMALL8"
    storage_size  = 20
    password      = var.db_password
    vpc_id        = var.vpc_id
    subnet_id     = var.subnet_id
}
