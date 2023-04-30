#!/bin/bash

mkdir logs

apt-get install make wget bash unzip zip bc curl g++ autoconf python3 automake libtool pkg-config libpng-dev libjpeg62-turbo-dev libtiff5-dev zlib1g-dev libwebpdemux2 libwebp-dev libopenjp2-7-dev libgif-dev libarchive-dev libcurl4-openssl-dev libicu-dev libpango1.0-dev libcairo2-dev libleptonica-dev xzgv git -y 2>&1 | tee logs/install.log # Installs all the needed dependencies.

git clone https://github.com/Microsoft/vcpkg.git 2>&1 | tee logs/getvcpkg.log # Get's the latest version of vcpkg
cd vcpkg # Enter vcpkg
echo Entering vcpkg directory
./bootstrap-vcpkg.sh 2>&1 | tee ../logs/boostrapvcpkg.log # Install vcpkg
./vcpkg integrate install 2>&1 | tee ../logs/vcpkgintegrate.log
./vcpkg install leptonica 2>&1 | tee ../logs/leptonicavcpkg.log # Install leptonica
cd .. # Return to main directory
echo returning to main directory

git clone https://github.com/tesseract-ocr/tesseract 2>&1 | tee logs/tesseract.log # Dowloads the latest version of tesseract from git.
git clone https://github.com/tesseract-ocr/tesstrain 2>&1 | tee logs/tesstrain.log # Dowloads the latest version of tesstrain from git.

cd tesseract # Enter tesseract folder
echo Entering tesseract
./autogen.sh | tee ../logs/autogen.log # Run autogen.sh from tesseract folder
autoreconf -i | tee ../logs/autoreconf.log # Use autoreconf to prevent errors
./configure  | tee ../logs/configure.log # Run configure.sh from tesseract folder
make | tee ../logs/make.log # Run Make
make install | tee ../logs/makeinstall.log # Run make install (Install the software)
ldconfig | tee # Run ldconfig
make training | tee ../logs/maketraining.log # Run make training
make training-install | tee ../logs/maketraininginstall.log # install Training tools
cd .. # Exit tesseract folder
echo Exiting tesseract folder

cd tesstrain # enter tesseract folder
echo Entering tesstrain

wget https://bootstrap.pypa.io/get-pip.py | tee ../logs/ensurepip.log # get python-pip
python3 get-pip.py | tee ../logs/getpip.log # get python-pip
rm -f get-pip.py # removes get-pip.py
pip install -r requirements.txt | tee ../logs/pip_requirements.log # Install all the requirements from Tesstrain

cd .. # exit tesseract folder

echo Installation complete!
echo
echo Made with love by Lucas Medeiros https://github.com/LucasMedeiros-dev

