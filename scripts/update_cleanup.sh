set -e
echo "Updating package lists..."
sudo apt update
echo "Upgrading packages..."
sudo apt -y upgrade
echo "Autoremoving unused packages..."
sudo apt -y autoremove
echo "Cleaning apt cache..."
sudo apt -y autoclean
echo "Update & cleanup finished."
