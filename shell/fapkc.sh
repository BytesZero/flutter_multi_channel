# fapk_channel.sh
# /// Zero
# /// GitHub: https://github.com/yy1300326388
# /// JueJin: https://juejin.cn/user/764915820276439
# /// CSDN: https://zhengsl.blog.csdn.net
flutter build apk --dart-define=APP_CHANNEL=$1 --dart-define=OTHER_VAR=$2
cd build/app/outputs/apk/release/
# 这里的路径要修改为自己的路径
cp -R *.apk /Users/zero/apk/$1/
# 这里的路径要修改为自己的路径
cd /Users/zero/apk/$1/
open .