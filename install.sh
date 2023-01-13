ln -sf $PWD/.config/alacritty $HOME/.config
ln -sf $PWD/.config/bat $HOME/.config
ln -sf $PWD/.config/helix $HOME/.config
ln -sf $PWD/.config/tmux $HOME/.config
ln -sf $PWD/.config/zathura $HOME/.config
ln -sf $PWD/.config/redshift.conf $HOME/.config
ln -sf $PWD/.config/starship.toml $HOME/.config

ln -sf $PWD/.gitconfig $HOME
ln -sf $PWD/.zshrc $HOME

mkdir $HOME/.zsh
git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $HOME/.zsh/zsh-autocomplete
git clone https://github.com/zsh-users/zsh-autosuggestions.git $HOME/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.zsh/zsh-syntax-highlighting
