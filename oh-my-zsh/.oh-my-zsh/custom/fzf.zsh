fcd() {
    local dir
    dir=$(fd --type d --hidden --exclude .git . ${1:-.} | fzf +m) && cd "$dir"
}
export FZF_DEFAULT_OPTS='--bind=ctrl-n:down,ctrl-p:up,ctrl-d:page-down,ctrl-u:page-up'
