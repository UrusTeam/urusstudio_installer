# Urus Studio Intaller

Urus Studio installer is a command-line tool for Urus Studio deployment focused on Posix/Unix like enviroments.

All software installed by the installer is fully and pure free software and open source software. Please read the [LICENSE](https://github.com/UrusTeam/urusstudio_installer/blob/master/LICENSE) before download it! If you made improvements from this software please share it!

![](https://www.gnu.org/graphics/gplv3-127x51.png) 

Main packages after installation:

 - Urus Studio IDE
 - GNU GCC AVR Toolchain - URUS version.
 - GNU GCC ARM-Linux Toolchain - URUS version.
 - GNU GCC Mingw32 Toolchain URUS - version.

Please read Urus Studio readme for more info.

### On Windows:

Subsystem installer and deployment has two stages, the first is based on [*busybox win32*](https://github.com/UrusTeam/busybox-w32) version, used to download, md5sum check, decompress and prepare the structure file system for Urus Studio. The base files system are downloaded from the oficial Msys2 repository.

On the second stage goes [*Msys2*](https://github.com/msys2), this one is a Posix/Unix like enviroment and file system under Windows, Msys2 is a fork from Cygwin and the good of Pacman the Arch Linux Package Manager. Structure file system on GNU/Linux Urus Studio version has the same, so if you want to jump to GNU/Linux it's will come familiar for you.

###### Click on the badge to download:

| Host | Pre-Release | Release |
|- |--------|--------|
| 32 Bits |[![Github Pre-Releases](https://img.shields.io/github/downloads-pre/UrusTeam/urusstudio_installer/v1.0.0-win32/total.svg)](https://github.com/UrusTeam/urusstudio_installer/archive/v1.0.0-win32.zip) | [![Github Releases](https://img.shields.io/github/downloads/UrusTeam/urusstudio_installer/latest/total.svg)]() |

### On GNU/Linux

Installation perform natively on the host terminal, this will try to get the base dependencies for well.

###### Click on the badge to download:

| Host  | Pre-Release | Release |
| - |--------|--------|
| 32 Bits  | [![Github Pre-Releases](https://img.shields.io/github/downloads-pre/UrusTeam/urusstudio_installer/v1.0.0-linux32/total.svg)](https://github.com/UrusTeam/urusstudio_installer/archive/v1.0.0-linux32.zip) | [![Github Releases](https://img.shields.io/github/downloads/UrusTeam/urusstudio_installer/latest/total.svg)]() |

## Warranty
GPL components are licensed without warranties of any kinds, either express or implied warranties, including without limitation the implied warranty of merchantability and fitness for a particular purpose. The entire risk as the quality and performance of these components is with you. Please check the respective license agreement for more details.

Plese read the [LICENSE](https://github.com/UrusTeam/urusstudio_installer/blob/master/LICENSE) file.
