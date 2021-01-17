ConsoleInstall=$PWD/scripts
UninstallScript=$ConsoleInstall/vis-sdk-uninstall.sh

dos2unix *.sh
chmod +x *.sh

dos2unix $ConsoleInstall/*.sh
chmod +x $ConsoleInstall/*.sh
sh $UninstallScript

echo "------------- Installing VisSDK -------------"
mkdir vis-sdk > /dev/null 2>&1

echo "------------- Cloning Source Repo -------------"
git clone https://github.com/ByteChkR/viscpu vis-sdk
cd vis-sdk/VisCPU.Console

echo "------------- Building Console -------------"
dotnet publish -c Debug >/dev/null 2>&1

echo "------------- Setting up SDK Session Script -------------"
ConsoleRoot=$PWD/bin/Debug/net5.0/publish/vis
echo "vis=\"$ConsoleRoot\"">$ConsoleInstall/vis-make.sh
chmod +x $ConsoleInstall/vis-make.sh



echo "Installation Completed."
echo "Exiting in 2 Seconds."

cd $ConsoleInstall/..

sleep 2
