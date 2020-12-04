# TF-GITHUB-REPO

This is a simple module to create, configure and manage branchs and secutiry to your github repositories

## How to use

The example below will create a repo with just master branch

```terraform
provider "github" {
  token = "Your Github Token"
  #organization = "Your Organization" #for an enterprise account
  version = "3.0.0"
}

module "repos" {
  source                  = "github.com/krismorte/tf-github-repo?ref=v1.00"
  repo_name               = "my-repo"
  repo_desc               = "test repo example"
  default_branchs         = [""]
  add_protection          = false
  topics                  = ["test"]
  approval_per_branchs    = ""
  approval_master_branchs = ""
  approvals               = [""]
  teams                   = [""]
  collab                  = [""]
  collab_perm             = [""]
}

```

Below all the parameters for the module

| Parameter | Type  | Description  | 
|---|---|---|
| repo_name | String | Repository name  |
| repo_desc | String | Repository Description  |
| topics  | String | Github topics  |
| add_protection | Bool | To add or not branch protection |
| default_branchs | list(String) | List of deafult branchs besides master |
| visibility | String | public,internal, private |
| approval_per_branchs | Number | Necessary approvals at the default_branchs |
| approval_master_branchs | Number | Necessary approvals at the master |
| approvals | list(String) | Team with approvals power on the master |
| teams | list(String) | Team with some permission on the repo |
| teams_perm | list(String) | Team permission follow the order of the teams parameter |
| collab | list(String) | Collaborator with some permission on the repo |
| collab_perm | list(String) | Collaborator permission follow the order of the collab parameter |

## TO DO

My personal backlog on this module

| Action | Status |
|---|---|
| fix list with empty value required | -- |
| approval_per_branchs has to be list| -- |
| define which parameter has to be requered or not| -- |