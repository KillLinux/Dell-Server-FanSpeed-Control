@echo off
echo ����������ת�ٵ���
set /p IP=Զ�̿���IP��
set /p USER=��Զ�̿��Ĺ����û���
set /p PASSWD��Զ�̿������û������룺
ipmitool -I lanplus -H %IP% -U %USER% -P %PASSWD% raw 0x30 0x30 0x01 0x00
set /p speed=ָ��ת�٣�16����������
ipmitool -I lanplus -H 192.168.1.254 -U root -P nihao123.. raw 0x30 0x30 0x02 0xff 0x%speed%