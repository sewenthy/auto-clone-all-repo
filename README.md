# Auto Clone All Personal/Organizational Repos

## Author
Sewen Thy  
sewenthy@gmail.com  

## Description
Quick and dirty tool for cloning repos from your personal GitHub account or organization.  Needed it when I re-installed my OS.  

The script needs your organization/username and token to run.  

It iterates the repos in the organization/personal page using a GitHub API and then using `grep` and `awk` to get a usable clone URL along with embedding the token so that you don't need to authenticate for all the downloads.  

## Usage

Positional arguments:
$1 can be "orgs" or "users"
$2 can be your username or your organization name
$3 is your username
$4 is your token

### Example:
``` bash
# from personal repo
$ clone_all_from_org.sh users sewenthy sewenthy <TOKEN>

# from organization account repo
$ clone_all_from_org.sh orgs <ORGNAME> sewenthy <TOKEN>
```
