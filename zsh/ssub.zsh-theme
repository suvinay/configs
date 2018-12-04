google3_prompt_info() {
  if [[ $PWD =~ '/google/src/cloud/[^/]+/(.+)/google3(.*)' ]]; then
    # Use CitC client names as window titles in screen/tmux
    # print -n "\ek${match[1]}\e\\"

    print -r -- "%B%F{red}($match[1])%b "
  else
    print -r -- ""
  fi
}

local ret_status="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
setopt prompt_subst
PROMPT='${ret_status} %{%B%F{green}%}%n%{%B%F{green}%}@%{%B%F{green}%}%m%{%B%F{green}%}:%{%b$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)$(google3_prompt_info)%f'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[red]%}(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%})"
