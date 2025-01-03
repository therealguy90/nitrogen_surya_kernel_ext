# First command to execute

curl -LSs "https://raw.githubusercontent.com/rifsxd/KernelSU-Next/refs/heads/next-susfs-4.14/kernel/setup.sh" | bash -s next-susfs-4.14


# Download files from the specified GitLab repository

git clone --branch kernel-4.14 --single-branch https://gitlab.com/simonpunk/susfs4ksu.git temp_susfs4ksu


# Move to the kernel-patches directory

cd temp_susfs4ksu/kernel_patches


# Copy all files and folders to the current directory, replacing existing files

cp -r * ../..


# Clean up by removing the temporary directory

cd ../..

sudo rm -rf temp_susfs4ksu
sudo rm -rf KernelSU

patch -p1 < 50_add_susfs_in_kernel-4.14.patch