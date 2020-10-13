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
if [ -f $LONG_PATH/prompt.sh ]
then
	. $LONG_PATH/prompt.sh
fi



