FROM fedora:latest

# Add a user for ansible

RUN dnf upgrade -y

RUN dnf install neovim tmux git vim nano curl wget zsh fish man info stow -y
RUN dnf install powerline python3 pip pipx -y
RUN dnf install ansible iputils bind-utils -y

RUN useradd --home-dir /home/ansible --create-home --password TestMe --shell /usr/bin/zsh ansible

WORKDIR /home/ansible
USER ansible

# Install Lazyvim
RUN cd /home/ansible
RUN git clone https://github.com/LazyVim/starter .config/nvim
RUN rm -rf ~/.config/nvim/.git

# Install tmux tpm
RUN git clone https://github.com/tmux-plugins/tpm .tmux/plugins/tpm
COPY --chown=ansible:ansible dotfiles/.tmux.conf .

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

CMD ["zsh"]

