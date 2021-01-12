git clone https://github.com/ByteChkR/VisOS
cd VisOS
dos2unix *.sh
dos2unix scripts/*.sh
chmod +x *.sh
chmod +x scripts/*.sh
echo "Installed VisOS"
sleep 2
./VisOS-Run.sh
