variable "repo_name" {}
variable "repo_desc" {}
variable "topics" {}
variable "add_protection" {
  type = bool
}
variable "default_branchs" {
  type    = list
  default = ["stg", "tst"]
}
variable "visibility" {
  type    = string
  default = "private"
}
variable "approval_per_branchs" {}
variable "approval_master_branchs" {}
variable "approvals" {
  type    = list
  default = []
}
variable "teams" {
  type    = list
  default = []
}
variable "teams_perm" {
  type    = list
  default = []
}
variable "collab" {
  type    = list
  default = []
}
variable "collab_perm" {
  type    = list
  default = []
}