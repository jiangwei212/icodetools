cd %~dp0
set aapt_path=D:\Android_tools\AndroidSdk\build-tools\23.0.1\aapt.exe
java -jar libs\icode_tools_1.0.jar %~dp0 src.apk %aapt_path% jw cn.wjdiankong.jw.utils.JWUtils printStackTrace
adb install -r signed.apk
pause..
