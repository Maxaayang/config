path=$(pwd)

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s $path/zsh/.zshrc ~/.zshrc
ln -s $path/tmux/.tmux.conf ~/.tmux.conf
ln -s $path/tmux/.tmux.conf.local ~/.tmux.conf.local
ln -s $path/vim/.vimrc ~/.vimrc

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
# chsh -s /bin/zsh
