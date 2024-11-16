#!/bin/bash

case "$OSTYPE" in
        linux*)   APPIMAGE_NAME=nvim.appimage
                  NVIM_DOWNLOAD_LINK=https://github.com/neovim/neovim/releases/download/v0.10.2/$APPIMAGE_NAME
                  NVIM_CONFIG_PATH=~/.config/nvim
                  APPIMAGE_PATH=$NVIM_CONFIG_PATH/$APPIMAGE_NAME
                  LOCAL_LINK_NAME=/usr/sbin/nvim

                  # Pobranie najnowszego nightly (TODO: wybranej dystrybucji)
                  wget --spider $NVIM_DOWNLOAD_LINK && rm -f $APPIMAGE_PATH && \
                  wget $NVIM_DOWNLOAD_LINK -O $APPIMAGE_PATH && \
                  	chmod +x $APPIMAGE_PATH && \
                  	echo "Updating symlink" && \
                  	sudo rm -f $LOCAL_LINK_NAME && \
                  	sudo ln -s $APPIMAGE_PATH $LOCAL_LINK_NAME ;;
        darwin*)  brew reinstall neovim ;;
        *)        echo "Uknown OS type"; exit 1 ;;
esac

# Make vim work
ln -f -s ~/.config/nvim/vimrc ~/.vimrc
ln -f -s ~/.config/nvim ~/.vim

echo "Updating neovim plugins..."
nvim --headless +PlugInstall +qa
nvim --headless +PlugUpdate +qa
echo "Updating vim plugins..."
vim +silent +VimEnter +PlugInstall +qall
vim +silent +VimEnter +PlugUpdate +qall
echo "Updating Plug itself..."
nvim --headless +PlugUpgrade +qa
echo "Done."

# Update treesitter parsers
nvim --headless +TSUpdate +qa

# Update rust-analyzer
# First, remove it as a rustup component because they tend to be outdated
rustup component remove rust-analyzer
echo "Removing rust-analyzer binary from .cargo directory..." && rm -f ~/.cargo/bin/rust-analyzer

case "$OSTYPE" in
        linux*)   echo "Updating rust-analyzer..."
                  mkdir -p ~/.local/bin
                  curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer && \
                  chmod +x ~/.local/bin/rust-analyzer || echo "FAILED to install rust-analyzer" ;;
        darwin*)  brew reinstall rust-analyzer ;;
        *)        echo "Uknown OS type"; exit 1 ;;
esac

echo "Script done."
