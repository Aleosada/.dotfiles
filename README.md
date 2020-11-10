# .dotfiles

# Setup Básico

## Git
Instalar o ***git*** via package manager ou através das instruções na página https://git-scm.com/download/linux

Fazer o download do repositório aleosada/.dotfiles:
`git clone https://github.com/Aleosada/.dotfiles.git`

* * *

## Stow
Instalar o ***stow*** via package manager

`sudo apt update`
`sudo apt install stow`

* * *

## Z Shell

Instalar o ***ZSH*** via package manager
`sudo apt update`
`sudo apt install zsh`

Instalar o ***oh-my-zsh*** através das instruções no site https://ohmyz.sh/ na pasta ~/.config

Instalar o plugin ***zsh-syntax-highlighting*** através das instruções na página https://github.com/zsh-users/zsh-syntax-highlighting

Instalar o ***powerlevel10k*** através das instruções na página https://github.com/romkatv/powerlevel10k

Baixar uma fonte no ***NerdFonts*** https://www.nerdfonts.com/font-downloads, e instalar no terminal da distribuição

Se a distribuição não possuir instalador automático de ttfs, copiar as fontes para pasta ~/.fonts

Fazer o stow da pasta zsh
`stow -vt ~ zsh`

(Esse passo só é necessário se o oh-my-zsh não foi instalado na pasta .config)
Mover a pasta ~/.oh-my-zsh para dentro da pasta ~/.config
`mv ~/.oh-my-zsh ~/.config`

Altere a shell default para zsh
chsh $USER
/usr/bin/zsh

* * *

## Tmux

Instalar o tmux através do package manager
`sudo apt update`
`sudo apt install tmux`

Fazer o stow da pasta tmux
`stow -vt ~ tmux`

* * *

# Vim / Plug / RipGrep

Instalar o VIM através do gerenciador de pacotes.
Em algumas distribuições a versão da loja é a 8.1, nesses casos será necessário compilar o fonte do vim 8.2 manualmente. Nestes casos seguir as instruções nesta página https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source

`sudo apt install vim`

Fazer o stow da pasta vim

`stow -vt ~ vim`

Instalar o RipGrep seguindo as instruções da página https://github.com/BurntSushi/ripgrep#installation
