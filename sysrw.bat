echo off
chcp 936
echo "����:watano �޸���Wendal��Ʒ"
echo "��ȷ��USB�����Ѿ���,�����Ѿ�����USB"
pause
cd bin
adb shell mkdir /data/sysrw
adb shell mkdir /data/sysrw/xbin
adb shell mkdir /data/sysrw/bin
adb shell mkdir /data/sysrw/app
adb push su /data/sysrw/xbin/su
adb push busybox /data/sysrw/xbin/busybox
adb push Superuser.apk /data/sysrw/app/Superuser.apk
adb shell chmod 6755 /data/sysrw/xbin/su
adb shell chmod 6755 /data/sysrw/xbin/busybox
adb shell chmod 6755 /data/sysrw/app/Superuser.apk
adb shell ln /data/sysrw/xbin/su /data/sysrw/bin/su
adb shell ln /data/sysrw/xbin/busybox /data/sysrw/bin/busybox
echo "����system�ļ���/data/sysrw/,��ȴ�..."
adb shell /data/sysrw/xbin/busybox cp -r /system/* /data/sysrw/

echo "���û���κ���ʾ��Ϣ���ʼ�����"
pause

echo "����,��γ�USB->��סMenu��->����USB->ͱreset��->�ɿ�menu��->����ˢ��ģʽ->��ѡboot,�����Ķ���ѡ->ѡ��update.img�ļ�->ִ��"
start ..\RKAndroid_v1.29\RKAndroidTool.exe
pause