##############################################################################
#   Filename: .bashrc                                                        #
# Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 #
#        URL: http://github.com/michaeljsmalley/dotfiles                     #
#                                                                            #
#                                                                            #
# Sections:                                                                  #
#   01. General ................. General Bash behavior                      #
#   02. Aliases ................. Aliases                                    #
#   03. Theme/Colors ............ Colors, prompts, fonts, etc.               #
##############################################################################

##############################################################################
# 01. General                                                                #
##############################################################################
# Shell prompt
source ~/.dotfiles/git-prompt.sh
source ~/.dotfiles/git-completion.bash
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033[01;33m\]\h\[\033[01;34m\]\w\[\033[01;31m\]$(__git_ps1 " (%s)")\[\033[01;34m\]\$\[\033[00m\] '

# If fortune is installed, run a fortune
if [ -e /usr/games/fortune ]; then
    fortune 
    echo " "
fi
if [ -e /home/ms/code/php/smoke-stop/nonsmoking.cs ]; then
	mono /home/ms/code/php/smoke-stop/nonsmoking.exe 2016-09-19 30 0,285714286
	echo
fi
echo Vape Setup User
#ssh octans /home/schmimi4/bin/count-user.sh
##echo Price Sniper
#ssh schmimi /usr/local/bin/python3 /home/schmimi/gearbest-price-tracker/list_products.py
###############################################################################
# 0.1.5 Imports
if [ -f ~/.sensible.bash ]; then
   source ~/.sensible.bash
fi
##############################################################################
# 02. Aliases                                                                #
alias mvv="mvv-cli.phar -s 'Bonner Platz; Karl-Theodor-Straße' -e 'Sendlinger Tor;Fürstenried West;Einsteinstraße' -n"
alias logstocks='multitail /var/log/apache2/stocks/error.log'
alias weather='finger munich@graph.no'
alias slic3r='/opt/printer/slic3r/slic3r.pl'
##Aliases Git
alias gitlog='git log --oneline --graph'
alias gitdiffd='git difftool -d'

alias octavegui='octave --force-gui'
#Aliases OpenHab
alias toggle-buero='openhab-toggle BueroAlle'
alias toggle-sz='openhab-toggle SchlafzimmerAlle'
alias toggle-wz='openhab-toggle ALL_WZ_Alle'
alias light-all-off="openhab-command BueroAlle OFF && sleep 1 &&  openhab-command SchlafzimmerAlle OFF && sleep 1 && openhab-command ALL_WZ_Alle OFF"


alias backup-libreelec='sudo dd if=/dev/mmcblk0 | pv | gzip -c >/media/ms/backup/libreelec-`date +%Y-%m-%d`.img.gz'


alias deploy-flavour='cd /home/ms/code/php/deploy-vape-setups/ && deployer.phar -f=deploy-flavours.php deploy:project live
'
##############################################################################
# Enable colors in "ls" command output

##############################################################################
# 03. Theme/Colors                                                           #
##############################################################################
# CLI Colors
export CLICOLOR=1
# Set "ls" colors
export LSCOLORS=Gxfxcxdxbxegedabagacad


##############################################################################
# 04 Variables                                                               #
##############################################################################
export XDEBUG_CONFIG="idekey=PHPSTORM remote_host=127.0.0.1"
PATH=$PATH:~/.composer/vendor/bin
export PATH=$PATH:/usr/local/go/bin

export PATH 
# added by Anaconda3 4.2.0 installer
export PATH="/media/ms/backup/downloads/.anaconda3/bin:$PATH"
export PATH=$PATH:"/opt/spark-2.1.0/bin/"
export PATH=$PATH:"/home/ms/.cargo/bin"

