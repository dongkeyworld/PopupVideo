export GO_EASY_ON_ME=1

include theos/makefiles/common.mk
TWEAK_NAME = PopupVideo
PopupVideo_FILES = Tweak.xm
PopupVideo_FRAMEWORKS = UIKit AudioToolbox AVFoundation
PopupVideo_PRIVATE_FRAMEWORKS = GraphicsServices
include $(THEOS_MAKE_PATH)/tweak.mk
