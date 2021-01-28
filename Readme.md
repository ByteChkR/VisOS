# VisOS
A simple OS/Toolbox for writing programs based on the [VisCPU](https://github.com/ByteChkR/viscpu) Virtual Machine.

## Content
Different Projects in this Repository:

### Boot Loader
Simple Loader that uses the HFS Device Driver to load a OS Image into ram.

### VisOS.Driver
Driver Package containing device drivers for:
- Console Output
- Console Input
- Console Management
- Host File System(HFS)
- Unit Test Device
- Benchmark Device

### VisOS
Simple Commandline OS that implements simple utilities, error handling and a stack based malloc/free implementation.

### VisOS.BaseCommands
Base Commands for working with the OS
- Call( jump to a specified memory address )
- Clear( Clears the console Output )
- Echo ( Writes the input to the console output )
- Primes ( Simple algorithm that checks if the specified number is a prime number )

### VisOS.Benchmarks
Collection of Benchmarks that are timed with the Benchmark Device Driver
- Copy Benchmark (Copy 100/1000/10000/100000 unsigned integers)
- Counter Benchmark (Count to 100/1000/10000/100000/1000000)
- Prime Benchmark (Print all prime numbers from 0-10000)

### VisOS.HFSCommands
Collection of Commands that expose the Host File System Driver Functionality as commands
- cd (change directory)
- mkdir (create directory)
- hfs.show (print specified file to console output)

### VisOS.UnitTests
Collection of Unit Tests ranging from Simple Instruction tests to more complicated access tests on nested structs and arrays.