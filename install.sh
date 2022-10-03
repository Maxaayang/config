path=$(pwd)

rm -rf ~/.oh-my-zsh
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s $path/zsh/.zshrc ~/.zshrc
ln -s $path/zsh/.zsh ~/.zsh
ln -s $path/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s $path/tmux/.tmux.conf ~/.tmux.conf
ln -s $path/tmux/.tmux.conf.local ~/.tmux.conf.local
