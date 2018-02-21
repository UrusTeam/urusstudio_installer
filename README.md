# Urus Studio Intaller and Deployment.

Author: Hiroshi Takey Franco, 2016 - 2018, htakey@gmail.com.

Urus Studio installer is a command-line tool for Urus Studio deployment focused on Posix/Unix like enviroments.

All software installed by the installer is fully and pure free software and open source software. Please read the [LICENSE](https://github.com/UrusTeam/urusstudio_installer/blob/master/LICENSE) before download it! If you made improvements from this software please share it!

![](https://www.gnu.org/graphics/gplv3-127x51.png) 

Main packages after installation:

 - Urus Studio IDE
 - GNU GCC AVR Toolchain - URUS version.
 - GNU GCC Mingw32 Toolchain - URUS version.
 - wxWidgets 2.8 - URUS Version

Minor dependencies modules after installation:

 - NuttX genromfs (builded and installed from source automatically by the installer)

Main dependencies packages after installation (through by Pacman (msys2) and native package manager (unix like distro)):

 - Python 2.7
 - GNU GCC toolchain

Please read Urus Studio readme for more info.

###### Pre-requisites host hardware:

You need as minimal 2 Gb space disk, 512 Mb RAM, 1 Ghz x86 or x86_64 CPU (for now). Download process size is about 300 Mb at all, and coffee.

### On Windows:

Subsystem installer and deployment has two stages, the first is based on [*busybox win32*](https://github.com/UrusTeam/busybox-w32) version, used to download, md5sum check, decompress and preparation structure file system for Urus Studio. The base file system are downloaded from the oficial Msys2 repository.

On the second stage goes [*Msys2*](https://github.com/msys2), this one is a Posix/Unix like enviroment and file system under Windows, Msys2 is a fork from Cygwin mixed with the good of Pacman the Arch Linux Package Manager. Structure file system on GNU/Linux Urus Studio version has the same, so if you want to jump to GNU/Linux it's will become familiar for you.

###### Instruction for installation:

- Download (below) the compressed file from the badge.
- Uncompress it on the desired path, this path couldn't should move after installation, so please decide where to install.
- On the root path from uncompressed file, double click on install_win.bat batch file, and take the coffee.
- Double click on start_urusstudio.exe to begin use.

###### Click on the badge to download:

| Host | Pre-Release | Release |
|- |--------|--------|
| 32 Bits |[![Github Pre-Releases](https://img.shields.io/github/downloads-pre/UrusTeam/urusstudio_installer/v1.0.0-win32/total.svg)](https://github.com/UrusTeam/urusstudio_installer/archive/v1.0.0-win32.zip) | [![Github Releases](https://img.shields.io/github/downloads/UrusTeam/urusstudio_installer/latest/total.svg)]() |

### On GNU/Linux (Debian/Ubuntu)

Installation perform natively on the host terminal, this will try to get the base dependencies for well.

- Download (below) the compressed file from the badge.
- Uncompress it on the desired path, this path couldn't should move after installation, so please decide where to install.
- Open terminal and cd to the uncompressed path and type:
    * $ sudo ./install_deps.sh
    * $ ./install_linux.sh
    * $ sudo ./update_mimes.sh
    * $ start_urusstudio #command to begin use.
- You can start Urus Studio from the program menu dock system too (if supported).

###### Click on the badge to download:

| Host  | Pre-Release | Release |
| - |--------|--------|
| 32 Bits  | [![Github Pre-Releases](https://img.shields.io/github/downloads-pre/UrusTeam/urusstudio_installer/v1.0.0-linux32/total.svg)](https://github.com/UrusTeam/urusstudio_installer/archive/v1.0.0-linux32.zip) | [![Github Releases](https://img.shields.io/github/downloads/UrusTeam/urusstudio_installer/latest/total.svg)]() |

## Warranty
GPL components are licensed without warranties of any kinds, either express or implied warranties, including without limitation the implied warranty of merchantability and fitness for a particular purpose. The entire risk as the quality and performance of these components is with you. Please check the respective license agreement for more details.

About installer license please read the [LICENSE](https://github.com/UrusTeam/urusstudio_installer/blob/master/LICENSE) file.

## Note
All software and mechanism system stated here is an experience and performed by self taughted case study by the author from along time about 3 years 24/7 from scratch, started from middle 2013 year with a hobby drone, including mainly C/C++ ANSI standards languages and Posix/Unix environments, it implicates missing parties, beers, social events, weekends, sometimes the lunches and all pleasures that a normal people does, converting this period in a normal people profesional case study time are about 13 years, all information and the "know how" was recopiled from the internet, so, you will be capable to get it better if you study and improve for well.

To help you and prevent your lifetime loss on find all "know how" obtained info and resources, there is an attached file in the favorite path from this repo containing all links reference exported from "Google Chrome" marks favorite in HTML format, you can import it on your favorite marks to read all links info.

## About the author
Hiroshi Takey Franco, is a Bolivian-Japanese, born in November, 1984 and living in Bolivia, South America, single father with one son, Kenji F. Takey Kobata his father(+) was a self taughted electronic technician and Sonia R. Franco Vaca his mother is a wifehouse, Hideo Takei Uyama his grandfather(+) and Hiroko Kobata his grandma(+) was one of the japanese colony founders in Bolivia from the second japanese migration (1955) after the first Okinawa people migration as result about the 1945 Hiroshima and Nagasaki nuclear disaster and WWII.

Hiroshi has an ungraduate technician grade on "System Analisys Software" and "Electronic" technician as second grade from "Josefina Balsamo Institute" an especial educational group from Santa Cruz de la Sierra city, this institute is an epicospal catholic group directed by Italian Ms. Michaella Princciotto. About 5 years ago Bolivia's goverment retired all graduated and titles certification mades by especial educational groups like Josefina Balsamo Institute. So, there is no chance to return from back and certificate the knowhow and capacity from the people for now, and this was one of the reasons to make this way for the URUS project, author choose the great about GNU freedom movement and match with project purpose.

## Purpose
Following the author life exprience, this project will be like a tool and legal instrument too, to represent the freedom or knowhow or the rights from bolivian people and around the world people supporting the development and the productivity and for access to the technologies that follow the freedom and not for people that control other people and follow monopoly through the technology and vulnerate the freedom.

## Code of Conduct

There is no code of conduct and infiltratate imaginary licences like "Contributor Covenant" license on the URUS project, the main license is GPL on this project, thats all.

###### then... what about the philosophy and behaviour here?
You only need to be freedom and civil.

## Future of project
Right now the project is driven by only one people, so it's welcome for new developers. The project was proposed as an "Universal Robotic Unmanned System" focussed for autamated and industrial system when born it, and ofcourse this work for drones too.

There are external projects involved too, exactly five external projects trying to use the URUS technologies, the three first is for Santa Cruz de la Sierra, Bolivia and the two second for New York and Texas, United States. There are others that are in queued from Lebanon, France, Japan, Spain and others places until finish theses first steps projects, Japan will be attended on the next step first.

From here and forward all of theses contribution projects and improvements will be tracked and logged by git on the URUS TEAM repo.

The project has maybe some affiliates right now and from now and forward that are supporting URUS Project on their and his ways, these names will be published on the supporter section on the Urus Team web page.

## Thanks to...

 - [GNU](https://www.gnu.org) Movement and their affiliates projects
 - [wxWidgets](https://www.wxwidgets.org/) Team
 - [Ardupilot](http://ardupilot.org/) Team
 - [Andrew Tridgell](https://www.samba.org/~tridge/) (Ardupilot scheduler author)
 - [Codeblocks](http://www.codeblocks.org/) Team
 - [Alexey Pavlov](http://www.msys2.org/) (Msys2 author)
 - [Github](https://github.com) Project
 - [SourceForge](https://sourceforge.net) Project
 - [Bitbucket](https://bitbucket.org) Project
 - [GNU Savannah](https://savannah.gnu.org/) Project
 - [GnuPg](https://www.gnupg.org/) Team

and others.

## Special thanks to...
 - [Intel Software](https://software.intel.com) For giving an official contributor and open source access license to the Intel Paralell Studio IDE and Intel C++ compilers for Linux.
 - [Open Source Samsung](http://opensource.samsung.com/reception.do) For giving official access to their open source resources kernels and 3rd parties libraries.
