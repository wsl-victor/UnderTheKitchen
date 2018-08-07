#! /bin/bash

#prepare
ROOT_DIR=$(pwd)
#check file exist
SOURCE_FILE="${ROOT_DIR}/1024.png"
echo $SOURCE_FILE
if [[ ! -e ${SOURCE_FILE} ]]; then
       echo "文件不存在11"
       exit 1
fi

DEST_DIR="${ROOT_DIR}/icon"

#如果目录有图片先清空
if [[ -d ${DEST_DIR} ]]; then
       rm -rf dir ${DEST_DIR}
fi

mkdir -p "${DEST_DIR}"
Image_NAME=("20.png" "20@2x.png" "29.png" "29@2x.png" "40.png" "40@2x.png" "87.png" "57.png" "57@2x.png" "76.png" "76@2x.png" "60@2x.png" "60@3x.png")
Image_SIZE=("20" "40" "29" "58" "40" "80" "87" "57" "114" "76" "152" "120" "180")

#sips starting
cp "${SOURCE_FILE}" "${DEST_DIR}"
for ((i=0; i<${#Image_SIZE[@]} ;i++)); do
        size=${Image_SIZE[i]}
        sips -Z ${size} "${SOURCE_FILE}" --out "${DEST_DIR}/${Image_NAME[i]}"
done

echo "转化完成"
