alias web="cd /var/www/vg"



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