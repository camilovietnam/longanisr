#######################
### Configuration     #
#######################
text_editor="nano"

#########################################
#####     General Shell aliases      ####
#########################################
alias ..='cd ..'
alias ~='cd ~'
alias c='clear'
alias cls='clear'
alias cd..='cd ..'
alias eee='$text_editor $LONG_PATH/aliases.sh && . $LONG_PATH/aliases.sh'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'
alias pid='ps aux | grep -v grep | grep'
alias pls='sudo'
alias rm='rm -vi'
alias rrr='. $LONG_PATH/main.sh'
alias sys='systemctl'
alias vol='alsamixer'
alias x='exit'

#########################################
#####     General Linux aliases      ####
#########################################
alias addrepo='sudo add-apt-repository'
alias aptget='sudo apt-get'
alias editkeys='$text_editor ~/.xbindkeysrc'
alias editgovernor='sudo $texteditor /etc/default/tlp'
alias eng='setxkbmap us'
alias esp='setxkbmap es'
alias egovernor='sudo $texteditor /etc/default/tlp'
alias governor='cat /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor'
alias i3config='$texteditor ~/.config/i3/config'
alias i3conf='$texteditor ~/.config/i3/config'
alias install='sudo apt-get install'
alias mswap='xmodmap -e "pointer = 3 2 1"'
alias off='shutdown -h now'
alias paux='ps aux | grep -v grep | grep'
alias reboot='shutdown -r now'
alias restartaudio='sudo killall -9 pulseaudio && pulseaudio -D'
alias swapmouse='xmodmap -e "pointer = 3 2 1"'
alias uninstall='sudo apt remove --purge'
alias update='sudo apt-get update'
alias upgrade='sudo apt-get upgrade'
alias upgrades='apt list --upgradeable'


#########################################
#####     Directory aliases          ####
#########################################
alias dockerfolder='cd ~/docker'
alias desktop='cd ~/Desktop'
alias erase='cd ~/erase'
alias home='cd ~'
alias html='cd /var/www/html'
alias r09='cd ~/Desktop/r09'
alias www='cd /var/www/'

#########################################
#####   Software Specific aliases    ####
#########################################

# Git
alias clone='clone_repo'
alias g='git'
alias gfu='git fetch upstream'
alias gfo='git fetch origin'
alias gpull='git pull'
alias gs='git status'
alias gc='git commit'
alias gbranches='git branch -a'
alias gnb='git checkout -b'
alias gnewbranch='git checkout -b'
alias grmbranch='git branch -d'
alias gd='git diff'
alias gss='git stash save'
alias gsp='git stash pop'
alias gsl='git stash list'
alias ga='git add'
alias gaa='git add -A'
alias stash='git stash'

# Cloud SSH
alias awstesting='ssh -i ~/aws/keys/testing.pem ec2-user@awstesting'
alias awstoeic='ssh -i ~/aws/keys/toeic.pem ec2-user@awstoeic'
alias awskiwi='ssh -i ~/aws/keys/kiwi.pem ec2-user@awskiwi'

# PHPStorm, PHPUnit, CStyle
alias testdox='./vendor/bin/phpunit --testdox'
alias cstylefull='phpcs --standard=psr2 --colors -p --report=full -n --no-cache app tests'
alias checkstyle='ga . && run_checkstyle'
alias checkstylefull='phpcs --standard=psr2 --colors -p --report=full -n --no-cache app tests'
alias dseed='dumpseed'
alias dumpseed='composer dump-autoload && mseed'

# Laravel 
alias enss='serve_en'
alias ess='serve_en'
alias cstyle='ga . && run_checkstyle'
alias jpss='serve_jp'
alias jss='serve_jp'
alias migrate='php artisan migrate'
alias mfresh='pa migrate:fresh'
alias migseed='pa migrate:fresh && pa db:seed'
alias mseed='pa migrate:fresh && pa db:seed'
alias pa='php artisan'
alias paserve='php artisan serve'
alias paseed='php artisan db:seed'
alias phpunit='./vendor/bin/phpunit'
alias punit='phpunit'
alias qli='clear && echo "Listening..." && php artisan queue:listen --tries=3'
alias rcache='php artisan route:cache'
alias routes='php artisan route:list'
alias seed='pa db:seed'
alias serve='clear && php artisan serve'
alias tink='php artisan tinker'

# NPM
alias nnn='npm cache verify && npm install && npm run dev'
alias npmi='npm install'
alias runwatch='npm run watch'
alias rundev='npm run dev'

### Docker
alias dbr='docker_build_and_run'
alias dimg='docker images'
alias dr='docker run'
alias dri='docker_rem_image'
alias dps='docker ps'
alias dpsa='docker ps -a'
alias dpsaq='docker ps -aq'
alias dpsf='docker ps --format "table {{.Names}}\t{{.Status}}\t{{.Image}}\t{{.Ports}}\t{{.ID}}"'
alias dsr="docker_stop_and_remove"
alias buildlocal='./script*/compose_build.sh local'
alias startlocal='./script*/compose_start.sh local'
alias stoplocal='./script*/compose_stop.sh local'
alias restartlocal='stoplocal && startlocal'
# alias dsc='docker_stop_all_containers'
# alias drc='docker_rem_all_containers'

# Other
alias chat='weechat -r "/connect animu"'
alias clonedailyproblem='git clone https://github.com/camilovietnam/dailyproblem'
alias clonedragondev='git clone https://github.com/camilovietnam/dragondev'
alias editwallpaper='sudo $texteditor /usr/share/gnome-shell/theme/ubuntu.css'
alias fstash='git stash show -p | git apply --3'
alias gitclonedailyproblem='git clone https://github.com/camilovietnam/dailyproblem'
alias gitclonedragondev='git clone https://github.com/camilovietnam/dragondev'
alias gitcloneml='git clone https://github.com/camilovietnam/ml_stanford'
alias heroky="heroku"
alias mgo='sudo systemctl start mongod'
alias newmysql='new_mysql'
alias pstash='git stash apply'
alias reloadkeys='xbindkeys && killall -s1 xbindkeys && xbindkeys -f ~/.xbindkeysrc'
alias remap='sudo $texteditor /usr/share/X11/xkb/symbols/pc'
alias adobe='wine "/home/israel/.wine/drive_c/Program Files/Adobe/Adobe Digital Editions 4.5/DigitalEditions.exe"'

