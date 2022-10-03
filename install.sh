path=$(pwd)

rm -rf ~/.oh-my-zsh
rm ~/.zshrc
rm ~/.tmux.conf
rm ~/.tmux.conf.local

ln -s $pwd/zsh/.zshrc ~/.zshrc
ln -s $pwd/zsh/.oh-my-zsh ~/.oh-my-zsh
ln -s $pwd/tmux/.tmux.conf ~/.tmux.conf
ln -s $pwd/tmux/.tmux.conf.local ~/.tmux.conf.local

source ~/.zshrc