./scripts/vis-make.ps1
./VisOS-Update.ps1
cd VisBIOS
vis project restore
cd ..
cd Example
vis project restore
cd ..
vis build -build:i D:\Users\Tim\Documents\VisOS\Example\RunOS.vhl -build:steps HL-expr bin -assembler:offset.global 4096 -assembler:offset.trim true
vis build -build:i D:\Users\Tim\Documents\VisOS\VisBIOS\src.vhl -build:steps HL-expr bin -assembler:offset.global 0
cd VisBIOS
vis run -run:i D:\Users\Tim\Documents\VisOS\VisBIOS\src.vbin
vis project clean
cd ..
cd Example
vis project clean
cd ..