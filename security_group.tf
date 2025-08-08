resource "tencentcloud_security_group" "moodle_sg" {
  name        = "moodle-sg"
  description = "Security group for Moodle server"
  vpc_id     = tencentcloud_vpc.moodle_vpc.id
}

resource "tencentcloud_security_group_rule" "allow_http" {
    security_group_id = tencentcloud_security_group.moodle_sg.id
    protocol          = "TCP"
    port              = "80"
    cidr_block        = "0.0.0/0"
    type              = "ingress"
    priority          = 1
}

resource "tencentcloud_security_group_rule" "allow_https" {
    security_group_id = tencentcloud_security_group.moodle_sg.id
    protocol          = "TCP"
    port              = "443"
    cidr_block        = "0.0.0/0"
    type              = "ingress"
    priority          = 2
}

resource "tencentcloud_security_group_rule" "allow_ssh" {
    security_group_id = tencentcloud_security_group.moodle_sg.id
    protocol          = "TCP"
    port              = "22"
    cidr_block        = "0.0.0/0"
    type              = "ingress"
    priority          = 3
}

resource "tencentcloud_security_group_rule" "allow_db" {
    security_group_id = tencentcloud_security_group.moodle_sg.id
    protocol          = "TCP"
    port              = "3306"
    cidr_block        = "0.0.0/0"
    type              = "ingress"
    priority          = 4
}