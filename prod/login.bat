@echo off
Title:grab files from branded portal

C:\Program Files (x86)\WinSCP\WinSCP.com ^
  /log="C:\writable\path\to\log\WinSCP.log /ini=nul ^
  /command ^
    open sftp://zigi_edi_prod:5ibJNTJCAVf8@secureftp.brandedonline.com:2222/ -hostkey=""ssh-rsa 4096 j9HmHQlALGEPM/0Pe6MqjM0gToz/He4xJjMjOAhXhT8="" ^
    cd /outbound ^
    ‪C:\Users\user1\Desktop\test ^

    get * ^  

    exit

set WINSCP_RESULT=%ERRORLEVEL%
if %WINSCP_RESULT% equ 0 (
  echo Success
) else (
  echo Error
)

exit /b %WINSCP_RESULT%