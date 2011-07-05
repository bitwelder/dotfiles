# Symlink to this file from ~/.bashrc

. ~/bin/dotfiles/bash/env
. ~/bin/dotfiles/bash/config
. ~/bin/dotfiles/bash/aliases

# to reload this script: $ source .bashrc 
_mategem()
{
    local curw
    COMPREPLY=()
    curw=${COMP_WORDS[COMP_CWORD]}
    local gems="$(gem environment gemdir)/gems"
    COMPREPLY=($(compgen -W '$(ls $gems)' -- $curw));
    return 0
}
complete -F _mategem -o dirnames mategem

path ()
{
	local IFS=:
	eval printf "%s\\\n" \$${1:-PATH}
}

# rvm-install added line:
if [[ -s /Users/bitwelder/.rvm/scripts/rvm ]] ; then source /Users/bitwelder/.rvm/scripts/rvm ; fi

# path
export PATH=/Users/bitwelder/bin:$PATH
export PATH=/usr/local/mysql/bin:$PATH

source ~/.git-completion.bash


