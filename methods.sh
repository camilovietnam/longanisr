##################################
### 	Useful methods		######
##################################

function show_error() {
	if [[ -z $1 ]]
	then
		$1 = 'Error'
	fi 

	echo "$RED${BOLD}[✘] $1$RESET"
}

function show_success() {
	if [[ -z $1 ]]
	then
		$1 = 'Success'
	fi 

	echo "$GREEN${BOLD}[✓] $1$RESET"	
}

function new_mysql() {

	# fail if not given 2 arguments
	if [[ $# -lt 2 ]]
	then
		show_error "Usage: newmysql <port> <name>"
		return 1
	fi

	port=$1
	name=$2

	if [[ ! -d "/home/israel/docker/mysql_data/$name" ]]
	then
		mkdir /home/israel/docker/mysql_data/$name
		show_success "Created directory $name"
	else
		show_success "Using existing directory $name"
	fi

	docker run --detach \
	-p $port:3306 \
	-e MYSQL_ROOT_PASSWORD=123 \
	-e MYSQL_ROOT_HOST=% \
	--name $name \
	--mount type=bind,source=/home/israel/docker/mysql_data/$name,target=/var/lib/mysql \
	mysql \
	&& show_success "Successfully deployed on port $1"
}

function clone_repo() {
    # Fail if no repository name was given
    if [[ -z $1 ]]
    then
    	show_error "You need to provide a repository name."
    	return
    fi

    git clone "https://github.com/camilovietnam/$1"
}


function album(){
	clear
	RANGE=485
	number=$RANDOM
	let "number %= $RANGE"
	echo -ne "Listen to album on page."
	for counter in $(seq 1 3); do
		sleep 0.5
		echo -ne '.'
	done

	echo "$GREEN$BOLD$number"
}

function docker_stop_and_remove() {
	if [[ -z $1 ]]; then
		show_error "Please provide a container name"
		return 1
	fi

	docker stop $1 && docker rm $1
}

docker_build_and_run() {
	clear

    # Fail if no container name was given
    if [[ -z $1 ]]
    then
    	show_error "You need to provide a container name."
    	return
    fi

    # Read directory or default to .
    if [[ -z $2 ]]
    then
    	DIR="."
    else
    	DIR=$2
    fi

    
    docker build -t $1 $DIR 

    if [ $? -eq 0 ]
    then 
    	show_success "Container was built!"
    	echo "${DIM}[✓] Running container...$RESET"
    	echo $RESET
    	docker run $1
    else
    	show_error "Build failed!"
    fi
}

## Stop all docker containers
docker_stop_all_containers() {
	clear
	read -p "Stop all containers? [Y/N]" -n 1 -r
	echo
	if [[ $REPLY =~ ^[YyaA]$ ]]
	then
		CONTAINERS=$(docker ps -q)
		[ ! -z "$CONTAINERS" ] && docker stop "$CONTAINERS" || echo "No containers running."
	fi
}

## Remove all docker containers
docker_rem_all_containers() {
	clear
	read -p "Remove all containers? [Y/N]" -n 1 -r
	echo
	if [[ $REPLY =~ ^[YyaA]$ ]]
	then
		CONTAINERS=$(docker ps -aq)
		if [[ ! -z "$CONTAINERS" ]]
		then
			docker rm `docker ps -aq`
		else
			echo "No containers found."
		fi
	fi

}

## Remove docker images by name
docker_rem_image() {
	clear
	if [[ -z "$1" ]]
	then
		show_error "Please provide an image name or ID"
	else
		docker rmi "$@"
	fi
}

function parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function raw2png() {
	for filename in *.CR2 ; do 
		dcraw -c -w "$filename" | pnmtopng > "$filename.png";
	done   
}

function run_checkstyle() {
    # FILES=$(git diff --cached --name-only --diff-filter=ACMR HEAD | grep -E "\.php|\.js|\.css")
    FILES=$(git diff --cached --name-only --diff-filter=ACMR HEAD)

    if [ -z "$FILES" ]
    then
    	echo "No files to check";
    else
    	phpcs --standard=psr2 --colors -p --report=full -n --no-cache $FILES
    fi    
}

function serve_jp() {
	sed -i "s/APP_LOCALE=en/APP_LOCALE=jp/" .env
	serve
}

function serve_en() {
	sed -i "s/APP_LOCALE=jp/APP_LOCALE=en/" .env
	serve
}