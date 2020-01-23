# essentials
sudo apt install git
sudo apt install tmux

# set up zsh and plugins
sudo apt install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# if tmux has issues displaying fonts inside tmux, generate locales using
# sudo dpkg-reconfigure locales

# set up my dotfiles settings
sudo apt install stow
git clone https://github.com/mfyz/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow vim
stow tmux
stow zsh
stow ack

# vim and plugins
sudo apt install vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# !!! open vim and run :PluginInstall command to install all plugins from dotfiles

# exa (it may require hefty dependencies like rust, cargo... 200mb+)
sudo apt install cargo
cargo install exa
# or if cargo fails, manually build:
# git clone https://github.com/ogham/exa.git
# cd exa
# make
# make install


# nodejs nodejs npm
sudo apt install nodejs npm
# or install using nvm (beware, it complies from scratch on rpi)
export NVM_DIR=''
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash
# beware - takes a long time
nvm install --lts

# ruby
sudo apt install ruby-full
sudo gem install jekyll
sudo gem install colorls

# install mariadb/mysql
sudo apt install mariadb-server
# disable from autostart (for RPI)
sudo systemctl disable mysql
# for manual start and stop
sudo systemctl start mysql.service
# or
sudo service mysql start
# create admin user (other than root)
sudo mysql
> CREATE USER 'admin'@'%' IDENTIFIED BY '1234';
> GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%';
> FLUSH PRIVILEGES;


# install apache (docroot is /var/www)
sudo apt install apache2
# disable apache to start in system boot
sudo update-rc.d apache2 disable
# to start/stop apache whenever needed
sudo /etc/init.d/apache2 start
# install php
sudo apt install php libapache2-mod-php
