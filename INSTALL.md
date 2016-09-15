# Installation
If you've installed an earlier version of the mod, please uninstall it prior to extracting and installing the new version.

## Windows
Song and Silence for Windows is distributed as a self-extracting archive and includes a WeiDU installer. To install, simply double-click the archive and follow the instructions on screen.

Alternatively, the files can be extracted into your game directory using [7zip] or [WinRAR]. When properly extracted, your game directory will contain **setup-song_and_silence.exe** and the folder **song_and_silence**. To install, double-click **setup-song_and_silence.exe** and follow the instructions on screen.

You can run **setup-song_and_silence.exe** in your game folder to reinstall, uninstall or otherwise change components.

## Mac OS X
Song and Silence for Mac OS X is distributed as a compressed tarball and includes a WeiDU installer.

First, extract the files from the tarball into your game directory. When properly extracted, your game directory will contain **setup-song_and_silence**, **setup-song_and_silence.command**, and the folder **song_and_silence**. To install, double-click **setup-song_and_silence.command** and follow the instructions on screen.

You can run **setup-song_and_silence.command** in your game folder to reinstall, uninstall or otherwise change components.

## Linux
Song and Silence for Linux is distributed as a compressed tarball and does not include a WeiDU installer.

Extract the contents of the mod to the folder of the game you wish to modify.

Download the latest version of WeiDU for Linux from [WeiDU.org] and copy WeiDU and WeInstall to /usr/bin. Following that, open a terminal, `cd` to your game installation directory, run `tolower` and answer Y to both queries. You can avoid running the second option (linux.ini) if you've already ran it once in the same directory. To save time, the archive is already tolowered, so there's no need to run the first option (lowercasing file names) either if you've extracted only this mod since the last time you lowercased file names. If you're unsure, running `tolower` and choosing both options is the safe bet.

To install, run `WeInstall song_and_silence` in your game folder. Then run `wine BGMain.exe` and start playing.


[7zip]: http://www.7-zip.org/download.html
[WinRAR]: http://www.rarlab.com/download.htm
[WeiDU.org]: http://www.weidu.org/~thebigg/
