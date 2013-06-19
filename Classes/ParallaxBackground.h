#pragma once

typedef void (*PFNCB)(CCTouch* touch);

class ParallaxBackground : public CCLayer
{
private:
	void* m_pMainScene;
	//void (*m_TouchesEndedCallback)(CCTouch* touch);
	//void (*m_TouchesMovedCallback)(CCTouch* touch);
protected:
public:
    ParallaxBackground();
    ~ParallaxBackground();

    bool                        init();
    static ParallaxBackground*  create();

	void Scroll(CCTouch*);
	void RegisterTouchCallback(void* pMainScene) {m_pMainScene = pMainScene;}
	//void RegisterTouchBeganCallback(void (*callback)(CCTouch* touch)) { m_TouchesEndedCallback = callback; }
	//void RegisterTouchMovedCallback(void (*callback)(CCTouch* touch)) { m_TouchesMovedCallback = callback; }

    virtual void ccTouchesBegan(CCSet *pTouches, CCEvent *pEvent);
	virtual void ccTouchesMoved(CCSet *pTouches, CCEvent *pEvent);
	virtual void ccTouchesEnded(CCSet *pTouches, CCEvent *pEvent);
};
