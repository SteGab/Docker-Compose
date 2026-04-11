FROM fedora:43

RUN dnf update -y && dnf install -y \
    nvim \
    tmux \
    git \
    @development-tools \
    vim \
    joe \
    stow \
    bat \
    curl \
    wget \
    just \
    zsh \
    fish 

RUN useradd -ms /usr/bin/zsh dev

USER dev
WORKDIR /home/dev

RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

RUN curl -fsSL https://opencode.ai/install | bash

CMD ["zsh"]

