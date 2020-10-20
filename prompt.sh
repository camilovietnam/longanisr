##########################################
#####       This is the prompt       #####
#####      for different shells      #####
##########################################

if [ -n "$ZSH_VERSION" ]; then
   # We are in ZSH
   lol='nada' # we need at least one line
elif [ -n "$BASH_VERSION" ]; then
    # We are in BASH
   host_prompt="\[\e[0;93m\]★\[\e[m\]"
   user_prompt="\[\e[0;93m\]\u\[\e[m\]"
   dir_prompt="\[\e[0;92m\]\w\[\e[m\]"
   git_prompt=" \[\e[0;91m\]$(parse_git_branch)\[\e[m\]"

   PS1="$host_prompt$user_prompt [$dir_prompt]$git_prompt $>"
fi
