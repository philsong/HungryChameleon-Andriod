LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := game_shared

LOCAL_MODULE_FILENAME := libgame

LOCAL_SRC_FILES := hellocpp/main.cpp \
				   ../../Classes/pch.cpp \
                   ../../Classes/AppDelegate.cpp \
                   ../../Classes/GameController.cpp \
				   ../../Classes/GameDelegate.cpp \
                   ../../Classes/GameSceneBase.cpp \
				   ../../Classes/IngameMenuView.cpp \
                   ../../Classes/Layer3D.cpp \
				   ../../Classes/MainMenuScene.cpp \
				   ../../Classes/MainMenuView.cpp \
				   ../../Classes/MatrixField.cpp \
                   ../../Classes/ParallaxBackground.cpp \
				   ../../Classes/Utils.cpp \
				   ../../Classes/MainScene.cpp \
                   ../../Classes/CSystem.cpp \
				   ../../Classes/BubbleElement.cpp \
				   ../../Classes/VisibleRect.cpp \
	               ../../Classes/tinystr.cpp \
				   ../../Classes/tinyxml.cpp \
				   ../../Classes/tinyxmlerror.cpp \
				   ../../Classes/tinyxmlparser.cpp
                   
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../Classes                   

LOCAL_WHOLE_STATIC_LIBRARIES := cocos2dx_static cocosdenshion_static cocos_extension_static
            
include $(BUILD_SHARED_LIBRARY)

$(call import-module,CocosDenshion/android) \
$(call import-module,cocos2dx) \
$(call import-module,extensions)
