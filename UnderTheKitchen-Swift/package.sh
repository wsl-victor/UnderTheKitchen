#!/bin/bash

WORKSPACENAME='UnderTheKitchen-Swift'
SCHEMENAME='UnderTheKitchen-Swift'
#(Release or Debug)
CONFIGURATION='Debug'
# 是否上传蒲公英
UPLOADPGYER=false
# 是否上传APPStore
UPLOADAPPStore=false

#appid
AppleID="xxxxx"
#pwd
AppleIDPWD="xxxx"

DATE=`date +%Y%m%d_%H%M`
SOURCEPATH=$( cd "$( dirname $0 )" && pwd)
ARCHIVEPATH=${SOURCEPATH}/AutoBuildIPA/${DATE}
IPAPATH=${SOURCEPATH}/AutoBuildIPA/${SCHEMENAME}_${DATE}
IPANAME=${SCHEMENAME}.ipa
COMMIT_MSG="测试自动发布" #打包内容

# 切换分支
#git checkout ${BRANCHNAME}
#if [ $? -ne 0 ]; then
#exit 1
#fi

# 拉取
#git pull

# 执行 pod 命令
# pod update --verbose --no-repo-update

echo "~~~~~~~~~~~~~~~~开始清理~~~~~~~~~~~~~~~~~~~"
# 清理 避免出现一些莫名的错误
xcodebuild clean \
-workspace ${WORKSPACENAME}.xcworkspace \
-configuration ${CONFIGURATION} \
-scheme ${SCHEMENAME}

echo "~~~~~~~~~~~~~~~~开始构建archive~~~~~~~~~~~~~~~~~~~"
# build xxx
xcodebuild archive \
-workspace ${WORKSPACENAME}.xcworkspace \
-scheme ${SCHEMENAME} \
-configuration ${CONFIGURATION} \
-archivePath ${ARCHIVEPATH}


if [ -e ${ARCHIVEPATH}.xcarchive ]; then
echo "xcodebuild Successful"
else
echo "erro:Build failed!!"
exit 1 #退出命令执行
fi

echo "~~~~~~~~~~~~~~~~开始输出ipa~~~~~~~~~~~~~~~~~~~"
# xcrun xxx
xcodebuild -exportArchive \
-archivePath ${ARCHIVEPATH}.xcarchive \
-exportPath ${IPAPATH} \
-exportOptionsPlist ExportOptions.plist \


if [ -e ${IPAPATH}/${IPANAME} ]; then
echo "\n-------------------------\n\n\n"
echo -e " Configurations! Build Successful! "
echo "\n\n\n-------------------------\n\n"
#open ${IPAPAHT} 打开目录文件
else
echo "\n---------------------------------------------------------------\n"
echo "erro:Create IPA failed!!"
echo "\nPlease check the case of failure and contact developers,thanks!"
echo "Export Error Path : ${IPAPATH}/${IPANAME}"
echo "\n---------------------------------------------------------------\n"
exit 1
fi


# 上传AppStore
if [ $UPLOADAPPStore = true ]
then
altoolPath="/Applications/Xcode.app/Contents/Applications/Application\ Loader.app/Contents/Frameworks/ITunesSoftwareService.framework/Versions/A/Support/altool"
${altoolPath} --validate-app \
-f ${IPAPATH}/${IPANAME} \
-u ${AppleID} \
-p ${AppleIDPWD} \
-t ios --output-format xml

if [ $? = 0 ]
then
echo "~~~~~~~~~~~~~~~~验证ipa成功~~~~~~~~~~~~~~~~~~~"
${altoolPath} --upload-app \
-f ${IPAPATH}/${IPANAME} \
-u ${AppleID} \
-p ${AppleIDPWD} \
-t ios --output-format xml

if [ $? = 0 ]
then
echo "~~~~~~~~~~~~~~~~提交AppStore成功~~~~~~~~~~~~~~~~~~~"
else
echo "~~~~~~~~~~~~~~~~提交AppStore失败~~~~~~~~~~~~~~~~~~~"
fi
else
echo "~~~~~~~~~~~~~~~~验证ipa失败~~~~~~~~~~~~~~~~~~~"
fi

else
#上传ipa到蒲公英
if [ $UPLOADPGYER = true ]
then
echo "~~~~~~~~~~~~~~~~上传ipa到蒲公英~~~~~~~~~~~~~~~~~~~"
curl -F "file=@${IPAPATH}/${IPANAME}" \
-F "uKey=xxx" \
-F "_api_key=xxxx" \
-F "installType=2" \
-F "password=1" \
https://www.pgyer.com/apiv1/app/upload --verbose

    if [ $? = 0 ]
    then
    echo "~~~~~~~~~~~~~~~~上传蒲公英成功~~~~~~~~~~~~~~~~~~~"
    else
    echo "~~~~~~~~~~~~~~~~上传蒲公英失败~~~~~~~~~~~~~~~~~~~"
    echo "${IPAPATH}/${IPANAME}"
    fi
fi
fi

# 上传 fir 分发平台
# FIRTOCKEN
#if [ -e ${IPAPATH}/${IPANAME} ]; then
#fir publish ${IPAPATH}/${IPANAME} -T ${FIRTOCKEN} -c ${COMMIT_MSG}
#else
#echo "Publish Error : ${IPAPATH}/${IPANAME}"
#fi


