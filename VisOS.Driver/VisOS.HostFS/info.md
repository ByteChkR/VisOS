# Host FS Device
## Features

* Root Directory
* Access File on Host OS
- Read
- Write

## Commands

* Reset (0x00)
* Open Read File(0x01)
* Open Write File(0x02)
* Close File(0x03)
* Get File Length(0x04)

## Address layout
`0xFFFF3000` => Present Address
`0xFFFF3001` => Status Address
`0xFFFF3002` => Data Address
`0xFFFF3003` => Command Input Address

## Read File

1. Write path name into Data Address
2. Set Command Input Address to `Open Read File`
3. Use Data Address as Stream of data.
4. Set Command Input Address to `Close File` to close the file handle.

## Write File

1. Write path name into Data Address
2. Set Command Input Address to `Open Write File`
3. Use Data Address as Stream of data, writing the contents to the Data Address.
4. Set Command Input Address to `Close File` to close the file handle.
