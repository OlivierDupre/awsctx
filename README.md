# awsctx
Very simple and basic script to switch faster between contexts in AWS CLI.

## Usage
```bash
$ awsall
Lists all available profiles.

$ awsctx 
Shows current profile.

$ awsctx $PROFILE_NAME
Switches AWS CLI to $PROFILE_NAME

$ aws configure --profile $PROFILE_NAME
Creates the profile $PROFILE_NAME for AWS CLI usage
```
See [AWS CLI Configure multiple profiles](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html#cli-quick-configuration-multi-profiles) for more informations on how to create multiple profiles.

## Installation
### Linux
* For bash:
```
git clone https://github.com/OlivierDupre/awsctx.git ~/.awsctx
COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
ln -sf ~/.awsctx/completion/awsctx.bash $COMPDIR/awsctx
cat << FOE >> ~/.bashrc

# awsctx
source ~/.awsctx/.awsctx
FOE
```

## Thanks to...
* Freely inspired by [kubectx](https://kubectx.dev/) and the very good job done by [@ahmetb](https://github.com/ahmetb).
* Using `trim` functions defined by [@NOYB](https://stackoverflow.com/users/5145161/noyb) on [Stackoverflow](https://stackoverflow.com/a/43725798/2003148)