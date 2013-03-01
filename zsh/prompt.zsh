# partkyle's Prompt

autoload colors; colors
autoload -Uz vcs_info

precmd () {
  vcs_info
}

prompt_partkyle_setup () {
  prompt_opts=(cr percent subst)

  zstyle ':vcs_info:*' enable bzr git hg svn
  zstyle ':vcs_info:*' get-revision true
  zstyle ':vcs_info:*' formats " {%b%c%u}"
  zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat "%b|%F{cyan}%r%f"

  PROMPT='%~${vcs_info_msg_0_} %# '
  RPROMPT='[%*]'
}

_virtualenv_root () {
  if test -s "$VIRTUAL_ENV"; then
    venv="[`basename $VIRTUAL_ENV`]"
  fi
  echo $venv
}

zstyle ':vcs_info:*' enable bzr git hg svn
zstyle ':vcs_info:*' get-revision true
zstyle ':vcs_info:*' formats " {%b%c%u} "
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat "%b|%F{cyan}%r%f"

PROMPT='%~ %# '
RPROMPT='$(_virtualenv_root)${vcs_info_msg_0_}[%*]'
