# Microsoft Developer Studio Generated NMAKE File, Based on UseDebugger.dsp
!IF "$(CFG)" == ""
CFG=UseDebugger - Win32 Debug
!MESSAGE No configuration specified. Defaulting to UseDebugger - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "UseDebugger - Win32 Release" && "$(CFG)" != "UseDebugger - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "UseDebugger.mak" CFG="UseDebugger - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "UseDebugger - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "UseDebugger - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 

CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "UseDebugger - Win32 Release"

OUTDIR=.\Release
INTDIR=.\Release
# Begin Custom Macros
OutDir=.\Release
# End Custom Macros

ALL : "$(OUTDIR)\UseDebugger.exe"


CLEAN :
	-@erase "$(INTDIR)\BaseEvent.obj"
	-@erase "$(INTDIR)\Common.obj"
	-@erase "$(INTDIR)\DllEvent.obj"
	-@erase "$(INTDIR)\ExceptEvent.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\ProcessEvent.obj"
	-@erase "$(INTDIR)\UI.OBJ"
	-@erase "$(INTDIR)\UseDebugger.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(OUTDIR)\UseDebugger.exe"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /ML /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\UseDebugger.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\UseDebugger.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:no /pdb:"$(OUTDIR)\UseDebugger.pdb" /machine:I386 /out:"$(OUTDIR)\UseDebugger.exe" 
LINK32_OBJS= \
	"$(INTDIR)\BaseEvent.obj" \
	"$(INTDIR)\Common.obj" \
	"$(INTDIR)\DllEvent.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\ProcessEvent.obj" \
	"$(INTDIR)\UI.OBJ" \
	"$(INTDIR)\UseDebugger.obj" \
	".\Decode2Asm.obj" \
	".\Disasm.obj" \
	".\Dsasm_Functions.obj" \
	"$(INTDIR)\ExceptEvent.obj"

"$(OUTDIR)\UseDebugger.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "UseDebugger - Win32 Debug"

OUTDIR=.\Debug
INTDIR=.\Debug
# Begin Custom Macros
OutDir=.\Debug
# End Custom Macros

ALL : "$(OUTDIR)\UseDebugger.exe"


CLEAN :
	-@erase "$(INTDIR)\BaseEvent.obj"
	-@erase "$(INTDIR)\Common.obj"
	-@erase "$(INTDIR)\DllEvent.obj"
	-@erase "$(INTDIR)\ExceptEvent.obj"
	-@erase "$(INTDIR)\main.obj"
	-@erase "$(INTDIR)\ProcessEvent.obj"
	-@erase "$(INTDIR)\UI.OBJ"
	-@erase "$(INTDIR)\UseDebugger.obj"
	-@erase "$(INTDIR)\vc60.idb"
	-@erase "$(INTDIR)\vc60.pdb"
	-@erase "$(OUTDIR)\UseDebugger.exe"
	-@erase "$(OUTDIR)\UseDebugger.ilk"
	-@erase "$(OUTDIR)\UseDebugger.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

CPP_PROJ=/nologo /MLd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /Fp"$(INTDIR)\UseDebugger.pch" /YX /Fo"$(INTDIR)\\" /Fd"$(INTDIR)\\" /FD /GZ /c 
BSC32=bscmake.exe
BSC32_FLAGS=/nologo /o"$(OUTDIR)\UseDebugger.bsc" 
BSC32_SBRS= \
	
LINK32=link.exe
LINK32_FLAGS=kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /incremental:yes /pdb:"$(OUTDIR)\UseDebugger.pdb" /debug /machine:I386 /out:"$(OUTDIR)\UseDebugger.exe" /pdbtype:sept 
LINK32_OBJS= \
	"$(INTDIR)\BaseEvent.obj" \
	"$(INTDIR)\Common.obj" \
	"$(INTDIR)\DllEvent.obj" \
	"$(INTDIR)\main.obj" \
	"$(INTDIR)\ProcessEvent.obj" \
	"$(INTDIR)\UI.OBJ" \
	"$(INTDIR)\UseDebugger.obj" \
	".\Decode2Asm.obj" \
	".\Disasm.obj" \
	".\Dsasm_Functions.obj" \
	"$(INTDIR)\ExceptEvent.obj"

"$(OUTDIR)\UseDebugger.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.obj::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.c{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cpp{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<

.cxx{$(INTDIR)}.sbr::
   $(CPP) @<<
   $(CPP_PROJ) $< 
<<


!IF "$(NO_EXTERNAL_DEPS)" != "1"
!IF EXISTS("UseDebugger.dep")
!INCLUDE "UseDebugger.dep"
!ELSE 
!MESSAGE Warning: cannot find "UseDebugger.dep"
!ENDIF 
!ENDIF 


!IF "$(CFG)" == "UseDebugger - Win32 Release" || "$(CFG)" == "UseDebugger - Win32 Debug"
SOURCE=.\BaseEvent.cpp

"$(INTDIR)\BaseEvent.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\Common.cpp

"$(INTDIR)\Common.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\DllEvent.cpp

"$(INTDIR)\DllEvent.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ExceptEvent.cpp

"$(INTDIR)\ExceptEvent.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\main.cpp

"$(INTDIR)\main.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\ProcessEvent.cpp

"$(INTDIR)\ProcessEvent.obj" : $(SOURCE) "$(INTDIR)"


SOURCE=.\UI.CPP

"$(INTDIR)\UI.OBJ" : $(SOURCE) "$(INTDIR)"


SOURCE=.\UseDebugger.cpp

"$(INTDIR)\UseDebugger.obj" : $(SOURCE) "$(INTDIR)"



!ENDIF 

