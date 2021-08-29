@echo off
echo 服务器风扇转速调节
set /p IP=远程卡的IP：
set /p USER=：远程卡的管理用户：
set /p PASSWD：远程卡管理用户的密码：
ipmitool -I lanplus -H %IP% -U %USER% -P %PASSWD% raw 0x30 0x30 0x01 0x00
set /p speed=指定转速（16进制数）：
ipmitool -I lanplus -H 192.168.1.254 -U root -P nihao123.. raw 0x30 0x30 0x02 0xff 0x%speed%