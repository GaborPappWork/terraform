variable "AWS_ACCES_KEY" {}
variable "AWS_SECRET_KEY" {}
variable "AWS_REGION" {
	default =  "eu-west-1"
}
variable "AMIS" {
	type = "map"
	default = {
		eu-west-1="ami-a8d2d7ce"
	}

}