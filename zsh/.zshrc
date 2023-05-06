# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/zronev/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration
export EDITOR="nvim"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(fnm env)"

export GOPATH=$HOME/Dev/go

export TESTING=$HOME/Testing

export LOCAl_BIN=$HOME/.local/bin

export DENO_INSTALL="$HOME/.deno"

export RACKET_BIN=$HOME/Applications/Racket/bin
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin:$TESTING:/usr/local/protobuf/bin:$LOCAL_BIN:$DENO_INSTALL/bin:$RACKET_BIN

# Aliases
alias vim="nvim"
alias python="python3"
alias mydocker='docker build -t mydocker . && docker run --cap-add="SYS_ADMIN" mydocker'
alias -g pico8="~/Dev/pico-8/PICO-8.app/Contents/MacOS/pico8"
alias get-sample="yt-dlp -f bestaudio --audio-quality 0 --audio-format wav"
alias weather="curl https://wttr.in/saint-petersburg\?FpQ"
alias ableton="/Applications/Ableton\ Live\ 11\ Suite.app/Contents/MacOS/Live ; exit;"

# homebrew libs
export PATH=${PATH}:/opt/homebrew/Cellar/
export PATH=${PATH}:/usr/local/include/
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"

# pnpm
export PNPM_HOME="/Users/zronev/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# MySQL
export PATH=${PATH}:/usr/local/mysql/bin/

# riscv
export PATH=${PATH}:/usr/local/opt/riscv-gnu-toolchain/bin

#dotnet
export PATH=${PATH}:/opt/homebrew/bin/dotnet

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export PATH="/usr/local/opt/llvm@11/bin:$PATH"

source ~/powerlevel10k/powerlevel10k.zsh-theme
