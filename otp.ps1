# Set-PSReadlineOption -HistorySaveStyle SaveNothing
$host.ui.RawUI.WindowTitle = "2FA Generator"
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
cd $scriptPath
. .\venv\Scripts\activate
python .\main.py | Set-Clipboard
#  Set-PSReadlineOption -HistorySaveStyle SaveIncrementally
