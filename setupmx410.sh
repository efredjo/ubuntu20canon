cd ~/Downloads

# Canon PIXMA MX410
sudo add-apt-repository ppa:linuxuprising/libpng12
sudo apt update -y
sudo apt install libpng12-0

# pull old multiarch-support and tiff4 
wget http://archive.ubuntu.com/ubuntu/pool/main/g/glibc/multiarch-support_2.27-3ubuntu1.2_amd64.deb
wget http://old-releases.ubuntu.com/ubuntu/pool/universe/t/tiff3/libtiff4_3.9.7-2ubuntu1_amd64.deb

# install dependencies
sudo dpkg -i multiarch-support_2.27-3ubuntu1.2_amd64.deb
sudo dpkg -i libtiff4_3.9.7-2ubuntu1_amd64.deb

# pull drivers
wget https://files.canon-europe.com/files/soft40865/Software/Linux%20IJ%20Printer%20Driver%20MX410.tar

#install mx410 drivers
tar xvf Linux\ IJ\ Printer\ Driver\ MX410.tar
tar zxvf cnijfilter-mx410series-3.50-1-deb.tar.gz
cd cnijfilter-mx410series-3.50-1-deb
sudo ./install.sh
cd ..

# Remove remove after installed
sudo add-apt-repository --remove ppa:linuxuprising/libpng12

# HP OfficeJet 7210
sudo apt install hplip hplip-gui
