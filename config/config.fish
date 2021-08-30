
# Aliases
alias web="cd /var/www"
alias ls='~/.cargo/bin/lsd'
alias ll="ls -l --color=always --si --time-style iso"

function cs
    cd $argv
    ls -ah
end

export LS_COLORS=(cat ~/.dircolors)

function fish_prompt
    set -l status_cmd $status
    set_color -b black
    set_color purple
    printf '\\uE0B6'
    set_color -b purple
    set_color black
    echo -n (whoami)
    set_color -b black
    set_color purple
    printf '\\uE0B4 '
    set_color normal
    echo -n (prompt_pwd)
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    echo -n ' > '
    if test -n "$git_branch"
        if string match -qr '(.+/)*develop$' "$git_branch"
            set color_git yellow
        else if string match -qr '^work(/.+)*$' "$git_branch"
            set color_git yellow
        else if string match -qr '^release(/.+)*$' "$git_branch"
            set color_git red
        else
            set color_git white
        end
        set_color "$color_git"
        set_color -b black
        printf '\\uE0B6'
        set_color -b "$color_git"
        set_color black
        echo -n "$git_branch"
        set_color "$color_git"
        set_color -b black
        printf '\\uE0B4'
        set_color normal
    end
    echo ''
    set_color normal
    if test 0 -eq $status_cmd
        set_color -b black
        set_color green
        echo -n '>'
    else
        set_color -b black
        set_color red
        echo -n '>'
    end
    echo -n ' '
    set_color normal
end


function fish_prompt
    set -l git_branch (git branch ^/dev/null | sed -n '/\* /s///p')
    set_color red
    echo -n (whoami)
    set_color normal
    echo -n ' > '
    set_color red
    echo -n (hostname)
    set_color normal
    echo -n ' > '
    set_color red 
    echo -n (prompt_pwd)
    set_color normal
    if test -n "$git_branch"
        echo -n ' > '
        set_color -u red
        if test 'work/develop' = $git_branch
            set_color yellow
        else 
            set_color normal
        end
        echo -n "$git_branch"
    end
    if test "0" = $status
        set_color normal
    else
        set_color red
    end
    echo -n ' > '
    set_color normal
end
