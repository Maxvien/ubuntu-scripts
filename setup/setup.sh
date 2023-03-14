# install i3wm
sudo apt update
sudo apt install i3 --no-install-recommends

# config ubuntu mate with i3wm
gsettings set org.mate.session.required-components windowmanager "i3"
gsettings set org.mate.session required-components-list "['windowmanager', 'panel']"
gsettings set com.solus-project.brisk-menu hot-key ""

# sync config files
./setup/sync.sh