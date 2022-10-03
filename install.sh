rm -rf ~/.oh-my-zsh
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s ./zsh/.zshrc ~/.zshrc
ln -s ./zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s ./tmux/.tmux.conf ~/.tmux.conf
ln -s ./tmux/.tmux.conf.local ~/.tmux.conf.local

source ~/.zshrc