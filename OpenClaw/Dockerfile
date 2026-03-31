FROM fedora:latest

RUN dnf update -y 

RUN dnf install -y \
    just \
    tmux \
    neovim \
    vim \
    joe \
    emacs \
    git \
    curl \
    wget \
    unzip \
    zsh \
    btop \
    bat \
    man

RUN dnf group install -y c-development development-tools

RUN dnf install -y \
    rust \
    cargo \
    golang \
    npm


RUN npm i -g openclaw
RUN  npm install -g @google/gemini-cli

RUN useradd -ms /usr/bin/zsh dev

USER dev
WORKDIR /home/dev

RUN \
    cargo install cargo-binstall \
 && cargo binstall zellij

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN \
    git clone https://github.com/LazyVim/starter ~/.config/nvim \
 && rm -rf ~/.config/nvim/.git

#RUN curl -fsSL https://opencode.ai/install | bash


RUN \
    sed -e '$a export PATH="$HOME/.cargo/bin:$PATH"' -i ~/.zshrc \
 && sed -e '$a alias l="ls -lh"' -i ~/.zshrc \
 && sed -e '$a alias ll="ls -lAh"' -i ~/.zshrc \
 && sed -e '$a alias cat=bat' -i ~/.zshrc

ENV SHELL=/usr/bin/zsh

ENTRYPOINT ["/usr/bin/zsh","-i"]