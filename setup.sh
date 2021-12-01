set +x
Folder=$(pwd)

cp .nanorc $HOME/.nanorc
cp .vimrc $HOME/.vimrc

wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null

echo 'deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ focal main' | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
sudo apt-get update

sudo rm /usr/share/keyrings/kitware-archive-keyring.gpg

sudo apt-get install -y build-essential gpg wget curl kitware-archive-keyring cmake llvm clangd clang-tools 
sudo apt-get install -y python3 python3-pip zsh curl

chsh -s $(which zsh)

sudo snap install --classic code

pip3 install conan

cd ~

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/depaulmillz/zshThemes.git

ssh-keygen -q -t rsa -N '' -f ~/.ssh/id_rsa

cd $Folder

