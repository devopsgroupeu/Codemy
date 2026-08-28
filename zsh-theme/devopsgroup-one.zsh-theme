ZSH_THEME_GIT_PROMPT_PREFIX="("
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_DIRTY="*"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Current directory, two levels deep
directory() {
   echo "%3~"
}

# Current kubernetes context
k8s() {
   echo "$(kubectl config current-context)"
}

PROMPT='╭– %B%{$FG[014]%}$(directory)%{$reset_color%} %B%{$FG[013]%}[$(k8s)]%{$reset_color%} %B%{$FG[011]%}$(git_prompt_info)%{$reset_color%}
╰→ '