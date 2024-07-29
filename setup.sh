https://developer.download.nvidia.com/compute/cuda/repos/ubuntu2204/arm64/cuda-ubuntu2204.pin
mv cuda-ubuntu2204.pin /etc/apt/preferences.d/cuda-repository-pin-600
wget https://developer.download.nvidia.com/compute/cuda/12.5.1/local_installers/cuda-tegra-repo-ubuntu2204-12-5-local_12.5.1-1_arm64.deb
dpkg -i cuda-tegra-repo-ubuntu2204-12-5-local_12.5.1-1_arm64.deb
cp /var/cuda-tegra-repo-ubuntu2204-12-5-local/cuda-*-keyring.gpg /usr/share/keyrings/
apt update
apt install libgstreamer1.0-dev libde265-0 libgstreamer-plugins-base1.0-dev libgstreamer-plugins-bad1.0-dev gstreamer1.0-plugins-base gstreamer1.0-plugins-good gstreamer1.0-plugins-bad gstreamer1.0-plugins-ugly gstreamer1.0-libav gstreamer1.0-tools gstreamer1.0-x gstreamer1.0-alsa gstreamer1.0-gl gstreamer1.0-gtk3 gstreamer1.0-qt5 gstreamer1.0-pulseaudio cuda-toolkit-12-5 nano fzf
sed -i 's/CUDA_VER?=/CUDA_VER?=12.5/g' /opt/nvidia/deepstream/deepstream/sources/apps/sample_apps/deepstream-test3/Makefile
cd /opt/nvidia/deepstream/deepstream/sources/apps/sample_apps/deepstream-test3/
make
sleep 1000
