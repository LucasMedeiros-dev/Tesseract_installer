# Tesseract OCR Installation Guide - EN / [PT-BR](https://github.com/FoxTechL/tess_ocr_guide/blob/main/LEIA-ME.md)
## A brief description
I had a lot of trouble installing Tesseract, so I decided to streamline the process creating a simple script that auto installs it.
## Requirements
You will need git installed to run the script.
Instructions below:
```
sudo apt-get install git -y
```
## How to use
```
git clone https://github.com/FoxTechL/tess_ocr_guide
cd tess_ocr_guide
chmod +x install_tesseract.sh
./install_tesseract.sh
```
# Tested plataforms
```
debian 11
kernel = 5.15.104-1-pve
Python3 = 3.9.2
```
# Notes
If you are having a hard time using it with sudo, try using sudo -i then execute the file.
```
sudo -i 
./install_tesseract.sh
```
Feel free to send questions in the issues tab.

It may take about 20 - 40 minutes depending on your hardware since it's building from source.
Please be patient.

logs are stored in the /log directory.

# Disclaimer
		IF YOU USE THIS SOFTWARE IN A VIDEO OR EDUCATIONAL MATERIAL
		YOU MUST CREDIT ME BY CITING:
		
		Source: https://github.com/FoxTechL, LUCAS V. MEDEIROS, 2023.
		
		THIS SOFTWARE IS PROVIDED AS IS, WITH ABSOLUTELY NO WARRANTY EXPRESSED
		OR IMPLIED.  ANY USE IS AT YOUR OWN RISK. 
