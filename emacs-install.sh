# install emacs24
apt-get install -qy emacs24

# install prelude
curl -L https://github.com/bbatsov/prelude/raw/master/utils/installer.sh | sh

# install configurations
cp .emacs ~/.emacs
