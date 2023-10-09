# Assembly

-   This repository is mainly about the x86 version of the Assembly language.
-   Tutorial playlist: [Intro to x86 Assembly Language](https://www.youtube.com/watch?v=wLXIWKUWpSs&list=PLmxT2pVYo5LB5EzTPZGfFN0c2GDiSXgQe&index=1) (32-bit x86 Assembly)
-   [Find Syscalls and which registers to use](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)
    -   `man 2 <syscall_name>` can also be used to find the functions definition
        of the Syscall.

## Compilation and Execution Instructions

```bash
# Use Netwide Assembler to compile assembly code to object file
$ nasm -f elf32 hello-world.asm -o hello-world.o

# Use GNU Linker to link object file and create an ELF (executable)
$ ld -m elf_i386 hello-world.o -o hello-world

# Execute the ELF
$ ./hello-world
```

## Register Sizes

-   8-bit
    -   `AH`, `AL`
-   16-bit
    -   `AX` (`AH:AL`)
-   32-bit
    -   `EAX`
-   64-bit
    -   `RAX`

## Data Sizes

-   `db` or `byte`
    -   One byte
-   `dw` or `word`
    -   One word, i.e., two bytes
-   `dd` or `dword`
    -   Double word, i.e., four bytes
-   `dq` or `qword`
    -   Quadruple word, i.e., eight bytes

## Useful Commands

-   `file`
-   `nm`
-   `ldd`
-   `objdump`
-   `strace`
-   `readelf`
-   `gdb`
-   `gf`

## Resources

-   [Assembly Language in 100 Seconds](https://www.youtube.com/watch?v=4gwYkEK0gOk)
-   [Intro to x86 Assembly Language](https://www.youtube.com/watch?v=wLXIWKUWpSs&list=PLmxT2pVYo5LB5EzTPZGfFN0c2GDiSXgQe&index=1) (32-bit x86 Assembly)
-   [The faker's guide to reading (x86) assembly language](https://www.timdbg.com/posts/fakers-guide-to-assembly)
-   [Some Assembly Required](https://github.com/hackclub/some-assembly-required)
-   [x86 assembly doesn’t have to be scary (interactive)](https://blog.benjojo.co.uk/post/interactive-x86-bootloader-tutorial)
-   [Web in Native Assembly (Linux x86_64)](https://www.youtube.com/watch?v=b-q4QBy52AA)
-   [Brennan's Guide to Inline Assembly](https://delorie.com/djgpp/doc/brennan/brennan_att_inline_djgpp.html) (AT&T vs Intel syntax)
-   [you can become a GALAXYBRAIN assembly programmers in 10 minutes](https://www.youtube.com/watch?v=6S5KRJv-7RU)
-   [Difference between `.a`, `.s`, `.S` and `.asm`](https://stackoverflow.com/a/34098830/11958552)
-   [Find Syscalls and which registers to use](https://chromium.googlesource.com/chromiumos/docs/+/HEAD/constants/syscalls.md)
-   [ASCII Table](https://www.asciitable.com)
-   [Netwide Assembler (NASM)](https://nasm.us)
-   [NASM vs GAS](https://stackoverflow.com/questions/13793609/nasm-vs-gas-practical-differences)
