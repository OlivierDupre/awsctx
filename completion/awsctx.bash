_aws_contexts()
{
  local curr_arg;
  curr_arg=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "- $(awsall)" -- $curr_arg ) );
}

complete -F _aws_contexts awsctx