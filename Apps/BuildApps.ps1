cd VisOS.BaseCommands
vis project clean
vis project pack
vis project update
vis project clean
vis project restore

vis build -build:i App.vhl -build:steps HL-expr bin -build:clean -assembler:offset.global 8192 -assembler:offset.trim -linker:export

cd ..\VisOS.UnitTests
vis project clean
vis project pack
vis project update
vis project clean
vis project restore

vis build -build:i UnitTests.vhl -build:steps HL-expr bin -build:clean -assembler:offset.global 32768 -assembler:offset.trim -linker:export

cd ..
