# Install Android Studio
sudo apt-get update
sudo apt-get install -y libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
curl 'https://dl.google.com/dl/android/studio/ide-zips/2.3.3.0/android-studio-ide-162.4069837-linux.zip' > /tmp/android-studio.zip && sudo unzip -d /opt /tmp/android-studio.zip && rm /tmp/android-studio.zip