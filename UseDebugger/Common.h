#ifndef COMMON_H_DBFC83AC_0FC7_4a51_A52F_6B60B2927A8C
#define COMMON_H_DBFC83AC_0FC7_4a51_A52F_6B60B2927A8C

#pragma warning(disable: 4786)
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <limits.h>
#include <assert.h>
#include <map>
#include <list>
#include <algorithm>
using namespace std;

#define MAXBUF 1024
extern char g_szBuf[MAXBUF];

//prototype
extern "C"
void
__stdcall
Decode2AsmOpcode(IN PBYTE pCodeEntry,   // 需要解析指令地址
                 OUT char* strAsmCode,        // 得到反汇编指令信息
                 OUT char* strOpcode,         // 解析机器码信息
                 OUT UINT* pnCodeSize,        // 解析指令长度
                 IN UINT nAddress);

void
SafeClose(HANDLE handle);


#endif