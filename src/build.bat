:: MSVC11 (VS2012) is assumed.  It may or may not work in other MSVC versions.
@echo off
setlocal
set WinSdk71=%ProgramFiles(x86)%\Microsoft SDKs\Windows\v7.1A
set SDK_INCLUDE_DIR=%WinSdk71%\Include
set INCLUDE=%WinSdk71%\Include;%INCLUDE%
set LIB=%WinSdk71%\Lib;%LIB%
set PATH=%WinSdk71%\Bin;%PATH%
set CL=/D_USING_V110_SDK71_
.\update_version.pl
nmake -f Make_mvc.mak GUI=yes DIRECTX=yes OLE=yes MBYTE=yes IME=yes GIME=yes CSCOPE=yes PERL=C:\Perl DYNAMIC_PERL=yes PERL_VER=514 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python32 DYNAMIC_PYTHON=yes PYTHON3_VER=32 RUBY=C:\ruby200 DYNAMIC_RUBY=yes RUBY_VER=20 RUBY_VER_LONG=2.0.0 TCL=C:\Tcl DYNAMIC_TCL=yes TCL_VER=85 TCL_VER_LONG=8.5 LUA="C:\Program Files (x86)\Lua\5.1" DYNAMIC_LUA=yes LUA_VER=51 XPM=C:\Libraries\xpm USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0501 SUBSYSTEM_VER=5.01 %*
nmake -f Make_mvc.mak MBYTE=yes CSCOPE=yes PERL=C:\Perl DYNAMIC_PERL=yes PERL_VER=514 PYTHON=C:\Python27 DYNAMIC_PYTHON=yes PYTHON_VER=27 PYTHON3=C:\Python32 DYNAMIC_PYTHON=yes PYTHON3_VER=32 RUBY=C:\ruby200 DYNAMIC_RUBY=yes RUBY_VER=20 RUBY_VER_LONG=2.0.0 TCL=C:\Tcl DYNAMIC_TCL=yes TCL_VER=85 TCL_VER_LONG=8.5 LUA="C:\Program Files (x86)\Lua\5.1" DYNAMIC_LUA=yes LUA_VER=51 USERNAME=Yongwei USERDOMAIN=Shanghai WINVER=0x0501 SUBSYSTEM_VER=5.01 %*
endlocal
