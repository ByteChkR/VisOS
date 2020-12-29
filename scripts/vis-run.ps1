$dir=$args[0]
$entry=$args[1]
cd $dir
echo "Restoring $dir : $entry"
vis project restore

echo "Compiling $dir : $entry"

#Build Vis OS from Source
# HL-expr : Convert HL Expression Code(.vhl files) into .vasm files
# bin : Convert Assembly Code(.vasm files) into binary .vbin files
# compress : Compress the executable.
vis build -build:input ./$entry.vhl -build:steps HL-expr bin -build:clean

echo "Running $dir : $entry"
vis run -run:input ./$entry.vbin
vis project clean
cd ..