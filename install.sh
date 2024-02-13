set -e 
 
echo "Updating System" 
sudo apt-get update  
 
echo "Installing htop" 
sudo apt install htop 
 
 
echo "Installing screen"
sudo apt install screen
echo "Installing conda" 

mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm -rf ~/miniconda3/miniconda.sh

~/miniconda3/bin/conda init bash
~/miniconda3/bin/conda init zsh
source ~/.bashrc

echo "Creating conda enviro" 
conda create --name abc python=3.9 
 
echo "Initiating conda environment" 
conda init abc 
 
echo "Activating conda environment" 
conda activate abc