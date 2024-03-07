function jira
    git rev-parse --abbrev-ref HEAD 2>/dev/null | sed 's/\([0-9]\)-.*$/\1/'
end
