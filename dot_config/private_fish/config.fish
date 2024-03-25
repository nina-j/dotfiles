if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
    eval (ssh-agent -c) &>/dev/null
    direnv hook fish | source
end

set fish_greeting ""

abbr -a ga 'git add'
abbr -a gp 'git push'
abbr -a gcan 'git commit --amend --no-edit'
abbr -a dc 'docker compose'
abbr -a gco 'git checkout'
abbr -a gpu 'git push -u'
abbr -a gcob 'git checkout -b'
abbr -a gpf 'git push --force-with-lease'
abbr -a gc 'git commit'
abbr -a gca 'git commit --amend'
abbr -a --set-cursor -- gpmr "git push -u -o merge_request.create -o merge_request.title=(jira)': %'"
abbr -a gd git diff
abbr -a gl git log
abbr -a gst git status
abbr -a gg git gone
abbr -a gpl git pull
