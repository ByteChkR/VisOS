.\vis-sdk-install.ps1 #Install VisSDK

$csContent = [System.IO.File]::ReadAllText(".\make-console-session.ps1")

invoke-expression $csContent # Make Console Session

Write-Host Building VisOS.Utility
### Utilities
cd VisOS.Utility #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1

Write-Host Building VisOS.Driver
### Drivers
cd ..\VisOS.Driver #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1


Write-Host Building VisOS.Tests
### Unit Tests
cd ..\VisOS.Tests #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1


Write-Host Building VisOS.Commands
### Commands
cd ..\VisOS.Commands #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1



Write-Host Building VisOS.Core
### Core
cd ..\VisOS.Core #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1



Write-Host Building VisOS
cd ..\VisOS #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1
vis project clean >$null 2>&1


Write-Host Building Example
### Test Project
cd ..\Example #Clean VisOS Project Folder
vis project clean >$null 2>&1

# Create Module from Source
vis project restore >$null 2>&1
vis project pack >$null 2>&1
vis project publish >$null 2>&1


Write-Host Compiling Example
#Build Vis OS from Source
# HL-expr : Convert HL Expression Code(.vhl files) into .vasm files
# bin : Convert Assembly Code(.vasm files) into binary .vbin files
# compress : Compress the executable.
vis build -build:input RunOS.vhl -build:steps HL-expr bin compress -build:clean >$null 2>&1


Write-Host Running Example
vis run -run:input RunOS.vbin.z
vis project clean >$null 2>&1