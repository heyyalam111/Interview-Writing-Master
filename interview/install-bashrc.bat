@echo off
:: 复制 .bashrc 到 Git Bash 主目录
set "source=F:\CC SKILLLS\AI访谈出文章\interview\.bashrc"
set "dest=%USERPROFILE%\.bashrc"

echo 正在复制 .bashrc 到主目录...
copy /Y "%source%" "%dest%"
echo 完成！
echo.
echo 请在 Git Bash 中运行: source ~/.bashrc
echo 以后输入: interview-team 即可使用
pause
