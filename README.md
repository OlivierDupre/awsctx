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
# COMPDIR='/usr/share/bash-completion/completions'
COMPDIR=$(pkg-config --variable=completionsdir bash-completion)
ln -sf ~/.awsctx/completion/awsctx.bash $COMPDIR/awsctx
nb_definitions=`grep awsctx ~/.bashrc | wc -l`
if [ $nb_definitions -eq 0 ]; then
cat << FOE >> ~/.bashrc

# awsctx
source ~/.awsctx/.awsctx
FOE
fi

nb_definitions=`grep trim ~/.bashrc | wc -l`
if [ $nb_definitions -eq 0 ]; then
cat << FOE >> ~/.bashrc
function trim
{
echo "$1" | xargs
}
FOE
fi

```

* For zsh:

``` zsh
git clone https://github.com/OlivierDupre/awsctx.git ~/.awx

mkdir -p ~/.zsh/completion
ln -s ~/.awx/completion/awx.zsh ~/.zsh/completion/_awx.zsh

nb_definitions=`grep completion ~/.zshrc | wc -l`
if [ $nb_definitions -eq 0 ]; then
cat << FOE >> ~/.zshrc

fpath=(~/.zsh/completion $fpath)
FOE
fi

mv ~/.awx/.awsctx ~/.zsh/.awsctx

nb_definitions=`grep 'Always source files' ~/.zshrc | wc -l`
if [ $nb_definitions -eq 0 ]; then
cat << FOE >> ~/.zshrc

# Always source files in ~/.zsh
[[ -d ~/.zsh ]] && for f (~/.zsh/*(.)) { [[ -f $f ]] && source $f } && for f (/~/.zsh/.*(.)) { [[ -f $f ]] && source $f }
FOE
fi

```

## Thanks to...
* Freely inspired by [kubectx](https://kubectx.dev/) and the very good job done by [@ahmetb](https://github.com/ahmetb).
* Using `trim` functions defined by [@NOYB](https://stackoverflow.com/users/5145161/noyb) on [Stackoverflow](https://stackoverflow.com/a/43725798/2003148)