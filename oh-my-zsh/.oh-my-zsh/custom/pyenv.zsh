# if wsl then use wslpath to convert windows path to linux path
if [ -n "$WSL_DISTRO_NAME" ]; then
fi

# if pyenv is installed then add it to path
if [[ -d $HOME/.pyenv ]]; then
  export PYENV_ROOT="$HOME/.pyenv"
  [[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init -)"
  eval "$(pyenv virtualenv-init -)"
fi
