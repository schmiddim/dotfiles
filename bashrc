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

export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\[\033[01;33m\]\h\[\033[01;34m\]\w\[\033[01;31m\]$(__git_ps1 " (%s)")\$\[\033[00m\] '

# If fortune is installed, run a fortune
if [ -e /usr/games/fortune ]; then
    fortune 
    echo " "
fi

##############################################################################
# 02. Aliases                                                                #
alias mvv="mvv-cli.phar -s 'Bonner Platz; Karl-Theodor-Straße' -e 'Sendlinger Tor;Fürstenried West;Einsteinstraße' -n"
alias logstocks='multitail /var/log/apache2/stocks/error.log'

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