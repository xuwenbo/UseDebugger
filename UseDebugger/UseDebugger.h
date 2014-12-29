// UseDebugger.h: interface for the CUseDebugger class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_USEDEBUGGER_H__2C1826AE_22DA_4F14_AA9D_8D88C3CC2A9F__INCLUDED_)
#define AFX_USEDEBUGGER_H__2C1826AE_22DA_4F14_AA9D_8D88C3CC2A9F__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include "DllEvent.h"
#include "ProcessEvent.h"
#include "ExceptEvent.h"

class CUseDebugger : public CBaseEvent
{
public:
    //the main entry for user to start
    static CUseDebugger *CreateSystem(void);

    virtual void Run(void);

    virtual void DestorySystem(void);

protected:
	CUseDebugger();
	virtual ~CUseDebugger();
    
    //two different ways to debug
    virtual BOOL DebugNewProcess();
    virtual BOOL DebugAttachedProcess();

    //the actual part to debug process
    virtual BOOL DebugProcess();

    //classified debug event
    virtual DWORD OnExceptDispatch();  //-->OnAccessViolation(), OnBreakPoint(), OnSingleStep()
    virtual DWORD OnCreateThread();    //-->CProcessEvent.
    virtual DWORD OnCreateProcess();   //-->CProcessEvent.
    virtual DWORD OnExitThread();      //-->CProcessEvent
    virtual DWORD OnExitProcess();     //-->CProcessEvent
    virtual DWORD OnLoadDLL();         //-->CDllEvent
    virtual DWORD OnUnLoadDLL();       //-->CDllEvent
    virtual DWORD OnOutputDebugString();//-->CDllEvent
    virtual DWORD OnAccessViolation();  //-->CExceptEvent
    virtual DWORD OnBreakPoint();       //-->CExceptEvent
    virtual DWORD OnSingleStep();       //-->CExceptEvent

    //classfied user input
    virtual void DoShowData(int argc, int pargv[], const char *pszBuf); //-->CBaseEvent
    virtual void DoShowASM(int argc, int pargv[], const char *pszBuf);  //-->CBaseEvent
    virtual void DoShowRegs();                                          //-->CBaseEvent

    virtual BOOL DoStepOver(int argc, int pargv[], const char *pszBuf); //-->CExceptEvent
    virtual BOOL DoStepInto(int argc, int pargv[], const char *pszBuf); //-->CExceptEvent
    virtual BOOL DoGo(int argc, int pargv[], const char *pszBuf);      //-->CExceptEvent
    virtual BOOL DoBPL(int argc, int pargv[], const char *pszBuf);      //-->CExceptEvent
    virtual BOOL DoBM(int argc, int pargv[], const char *pszBuf);       //-->CExceptEvent
    virtual BOOL DoBML(int argc, int pargv[], const char *pszBuf);      //-->CExceptEvent
    virtual BOOL DoBMPL(int argc, int pargv[], const char *pszBuf);      //-->CExceptEvent
public:
    virtual BOOL DoBP(int argc, int pargv[], const char *pszBuf);       //-->CExceptEvent

private:
    void DispatchCommand();

protected:
    CDllEvent *m_pDllEvent;
    CProcessEvent *m_pProcessEvent;
    CExceptEvent *m_pExceptEvent;
};

#endif // !defined(AFX_USEDEBUGGER_H__2C1826AE_22DA_4F14_AA9D_8D88C3CC2A9F__INCLUDED_)
