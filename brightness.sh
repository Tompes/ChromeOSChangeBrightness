#!/bin/bash
#author:Tompes
#github:https://github.com/Tompes/ChromeosChangeBrightness

if [ $UID -ne 0 ]; then
	echo "脚本需要在root权限下运行.(Need root permission)"
	exit 0
fi
if [ $1 -lt 1 ]; then
	echo "请不要使用不合适但数值!(Terrible Value)"
	exit 0
fi
cd $(dirname $(find /sys -name brightness))
pwd
echo "brightness $1"
echo $1 > ./brightness
