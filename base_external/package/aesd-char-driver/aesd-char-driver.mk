################################################################################
#
# aesd-char-driver
#
################################################################################

AESD_CHAR_DRIVER_VERSION = 'e5f71bd'
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_CHAR_DRIVER_SITE = 'https://github.com/cu-ecen-aeld/assignments-3-and-later-youssef456.git'
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES

AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver/

define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS

	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin

	#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/drivertest.sh $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/assignment-test.sh $(TARGET_DIR)/usr/bin
	#$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment8/sockettest.sh $(TARGET_DIR)/usr/bin
	


endef

$(eval $(kernel-module))
$(eval $(generic-package))
