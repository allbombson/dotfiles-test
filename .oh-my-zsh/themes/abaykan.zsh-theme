# abaykan zsh-theme
# Screenshot > https://abaykan.com/server/abaykan.zsh-theme~.png


# logo abaykan
abaykan="$fg_bold[cyan]
     _-----_
    |       |    
    |--(o)--|     ╒ $fg_bold[pink]allbombson.pw$fg_bold[cyan] ═══════════════════════════════════════════════════╕
   '---------'    │$fg_bold[white]I was addicted to Hacking, more for the intellectual challenge,$fg_bold[cyan]   │
    ( _ U _ )     │$fg_bold[white]the curiosity, the seduction of adventure; not for stealing,$fg_bold[cyan]      │
    /___A___\	  │$fg_bold[white]or causing a damage or writing computer viruses. - Kevin Mitnick.$fg_bold[cyan] │
     |  ~  |	  ╘══════════════════════════════════════════════════════════════════╛ $fg_bold[cyan]
   __'.___.'__
 '   '  |° ' Y '
 "
# whoami
g_whoami="☉ $fg[blue]Whomai  $fg[white]: $fg[red]`whoami`$fg[cyan]"

# id
g_id="☉ $fg[blue]User    $fg[white]: $fg[red]`id $(whoami) | cut -d' ' -f1`$fg[cyan]"

# kernel version
g_kernel="☉ $fg[blue]System  $fg[white]: $fg[red]`uname -v`$fg[cyan]"

# date time
g_date="☉ $fg[blue]Today   $fg[white]: $fg[red]`date`$fg[cyan] \n\n"

# print
print -P $abaykan
print -P $g_whoami
print -P $g_id
print -P $g_kernel
print -P $g_date

# show staged changes in the repository
local g_changes="$FG[038][%c]%{$reset_color%}"
# Define prompts
#
PROMPT="$fg[cyan]%n$fg[red]@$fg[blue]%m$fg[green]$ $fg[white]"

# git
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[red]} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"


#############
function_exists () {
    # Zsh returns 0 even on non existing functions with -F so use -f
    declare -f $1 > /dev/null
    return $?
}

if function_exists command_not_found_handler; then
    if ! function_exists orig_command_not_foundhandler; then
        eval "orig$(declare -f command_not_found_handler)"
    fi
else
    orig_command_not_found_handler () {
        echo "zsh: command not found: $1"
        return 127
    }
fi

command_not_found_handler () {
xdg-open https://www.youtube.com/watch\?v\=VjGSMUep6_4 &> /dev/null

    #print_message
    orig_command_not_found_handler "$@"
}

