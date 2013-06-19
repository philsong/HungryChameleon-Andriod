#ifndef  _APP_DELEGATE_H_
#define  _APP_DELEGATE_H_

#include "pch.h"

class GameController;

class AppDelegate: private cocos2d::CCApplication
{
private:
    GameController*         m_pGameController;
protected:
public:
    virtual bool            applicationDidFinishLaunching();
    virtual void            applicationDidEnterBackground();
    virtual void            applicationWillEnterForeground();
};

#endif // _APP_DELEGATE_H_
