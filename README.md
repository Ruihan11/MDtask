# MDtask 
*Markdown task board in WSL2 with windows display*

## Installation
### Make sure you have **pandoc** in your wsl2.
```
sudo apt install pandoc
source ~/.bashrc  # or ~/.zshrc depending on your shell
nvm install node
nvm install 18
nvm use 18
npm install puppeteer-core


sudo apt install pandoc
npm install puppeteer-core
``` 
### Get the task repo.
```
cd /any place you prefer
git clone https://github.com/Ruihan11/MDtask.git
``` 
  
### Install Rainmeter in your windows https://www.rainmeter.net/.

### Open it, make a new skin, and click on the following botton.  
![alt text](doc/image.png)
### Copy and paste the following to your **ini** file. Adjust "ImageCrop" if your display is not ideal.
```
[Rainmeter]
Update=1000
DynamicWindowSize=1

[Image]
Meter=Image
ImageName="\\wsl.localhost\Ubuntu-20.04\home\dir to the target png file"
PreserveAspectRatio=2
ImageCrop=0,0,400,500
```  
### Open the **autopush.sh**, and change the dir to your rainmeter.exe.
```
/mnt/d/your_dir_to_rainmeter/Rainmeter.exe \!Refresh "Calendar"
```
### All good.

## Demo
```
cd /your MDtask
bash autopush.sh
```  
![alt text](doc/demo.png)
