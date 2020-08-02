# Set-PSReadlineOption -HistorySaveStyle SaveNothing
$scriptPath = split-path -parent $MyInvocation.MyCommand.Definition
cd $scriptPath
. .\env\Scripts\activate
python .\main.py
deactivate
$host.ui.RawUI.ReadKey("NoEcho,IncludeKeyDown")
#  Set-PSReadlineOption -HistorySaveStyle SaveIncrementally
