@echo �趨����Ȩ��
xcopy /s /v /y .\system .\Image\system\
bin\chmod -R 0777 ./Image/system/*
bin\chmod 6755 ./Image/system/xbin/su
bin\chmod 6755 ./Image/system/bin/su
bin\chmod 6755 ./Image/system/xbin/busybox
bin\chmod 6755 ./Image/system/app/Superuser.apk
@echo ���system.img
bin\mkcramfs -q ./Image/system system.img
pause
