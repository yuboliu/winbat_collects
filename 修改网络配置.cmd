@echo off
set name="本地连接"

set ipc=136
set ipd=89
set ipaddress=172.16.%ipc%.%ipd%
set mask=255.255.255.0
set gateway=172.16.%ipc%.254
set dns1=114.114.114.114
set dns2=119.29.29.29

netsh interface ip set address name=%name% source=static addr=%ipaddress% mask=%mask% gateway=%gateway% 1
netsh interface ipv4 set dns name=%name% static %dns1%
netsh interface ipv4 add dns name=%name% %dns2% index=2