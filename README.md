# umbrelstatus

a simple script to monitor the temperature of your umbrel device.

to install:
1) login to your umbrel via ssh
2) run the following commands  
umbrel@umbrel:$ git clone https://github.com/kankichi77/umbrelstatus.git  
umbrel@umbrel:$ cd umbrelstatus.git  
umbrel@umbrel:$ ./install.sh

the script will output a url in the form of:
https://xxx.xxx.xxx/umbrelstatus.php?id=xxxxxxxxxxxxxxxxxxxx

(the domain portion is subject to change)  
now access the url in your browser from anywhere, the page will update every 60 seconds with the latest output of 'vcgencmd measure_temp' from your device.
