########################################
#####       This is the main       #####
#####       Shell script           #####
#####	    v1.0 2020/10           #####
########################################

### Change this to the location of your config files
LONG_PATH=$HOME/.long

### Invoke necessary variables
if [ -f $LONG_PATH/variables.sh ]
then
	. $LONG_PATH/variables.sh
fi

### Invoke the aliases
if [ -f $LONG_PATH/aliases.sh ]
then
	. $LONG_PATH/aliases.sh
fi

### Invoke helper methods
if [ -f $LONG_PATH/methods.sh ]
then
	. $LONG_PATH/methods.sh
fi

### Change prompt
host_prompt="\[\e[0;93m\]★\[\e[m\]"
user_prompt="\[\e[0;93m\]\u\[\e[m\]"
dir_prompt="\[\e[0;92m\]\w\[\e[m\]"
git_prompt=" \[\e[0;91m\]$(parse_git_branch)\[\e[m\]"

PS1="$host_prompt$user_prompt [$dir_prompt]$git_prompt $>"