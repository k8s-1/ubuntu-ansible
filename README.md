# wsl
WSL2 config automation


## Requirements
Install WSL2, via PowerShell:
```pwsh
wsl --list                      # currently installed
wsl --list --online             # available
wsl --install -d <DISTRO>       # install
wsl --unregister -d <DISTRO>    # remove wsl installation
```


## Manual Steps

### ssh / git
```
cd ~/.ssh
ssh-keygen -t ed25519
chmod 600 *
```

### auth
Configure github OAUTH token -> https://github.com/settings/tokens

Configure ~/.token.enc with environment variables, e.g.
```
export VARIABLE=
export JIRA_API_TOKEN=
```

Configure ~/.sops/keys.txt and copy the public key into ./roles/security/files/token
```
age-keygen | tee ~/.sops/keys.txt && chmod 600 ~/.sops/keys.txt
```

### run main.yaml
```
./run.sh
```

## version control browser bookmarks
```
cp browser/*.html /mnt/c/Users/<USER>/Downloads/
```
import in browser settings -> bookmarks manager (ctrl + shift + o)
