chcp 936
set rockdev_HOME=d:\android\momo8\rockdev
rmdir /s /q .\Image\system\
move /y system.img.bak %rockdev_HOME%\Image\system.img 
@echo ��ѹ��system.img�ļ���Image/systemĿ¼
bin\cramfsck_nocrc -x Image/system %rockdev_HOME%/Image/system.img
@echo ɾ���Դ����
del /q .\Image\system\app\TTGO*.apk
del /q .\Image\system\app\DocumentsToGo*.apk
del /q .\Image\system\app\Maps.apk
del /q .\Image\system\app\Gallery3D.apk
del /q .\Image\system\app\VideoPlayer*.apk
del /q .\Image\system\app\Street.apk
del /q .\Image\system\app\RKEBookReader.apk
del /q .\Image\system\app\Gmail.apk
del /q .\Image\system\app\Explorer.apk
del /q .\Image\system\app\BooksProvider.apk
del /q .\Image\system\app\Email.apk
del /q .\Image\system\app\flashplayer
del /q .\Image\system\app\Gfanployer*.apk
del /q .\Image\system\app\Explorer.apk
rem del /q .\Image\system\app\Talk.apk
del /q .\Image\system\app\LiveWallpapers*
del /q .\Image\system\app\1024X768_Launcher2*
@echo ���ǵ�ǰĿ¼�µ�system����ѹ����systemĿ¼�µĶ�Ӧ�ļ�
xcopy /s /v /y .\system .\Image\system\
@echo �趨����Ȩ��
bin\chmod -R 0777 ./system/*
bin\chmod 6755 ./system/xbin/su
bin\chmod 6755 ./system/bin/su
bin\chmod 6755 ./system/xbin/busybox
bin\chmod 6755 ./system/app/Superuser.apk
@echo ���system.img
bin\mkcramfs -q .\Image\system system.img
@echo ����ԭʼsystem.img�ļ�
move /y %rockdev_HOME%\Image\system.img .\system.img.bak
move /y .\system.img %rockdev_HOME%\Image\system.img
copy /y /v %rockdev_HOME%\parameter_1GB %rockdev_HOME%\parameter
@echo ���´��update.img
%rockdev_HOME%\Afptool -pack %rockdev_HOME% %rockdev_HOME%\Image\update.img
%rockdev_HOME%\RKImageMaker.exe -RK29 %rockdev_HOME%\RK29xxLoader(L)_DDR3_400Mhz_V1.64.bin  %rockdev_HOME%\Image\update.img  %rockdev_HOME%\update.img -os_type:androidos
move /y %rockdev_HOME%\update.img %rockdev_HOME%\Image
@echo ��ԭԭʼsystem.img �ļ�
rem del /s /q %rockdev_HOME%\Image\system.img 
rem move /y system.img.bak %rockdev_HOME%\Image\system.img 
pause
