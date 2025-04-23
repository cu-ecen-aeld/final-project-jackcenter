SERVO_DRIVER_VERSION = 6aa50200f6247b4a7f58da278abab24b971734df
SERVO_DRIVER_SITE = git@github.com:jackcenter/final-project-application-servo-driver.git
SERVO_DRIVER_SITE_METHOD = git
SERVO_DRIVER_GIT_SUBMODULES = NO

SERVO_DRIVER_MODULE_SUBDIRS = servo_driver_module

define SERVO_DRIVER_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) CFLAGS+="-I$(@D)/servo_driver/include" CFLAGS+="-I$(@D)/servo_driver_module/include" -C $(@D)/servo_driver
endef

define SERVO_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/servo_driver/bin/servo_driver $(TARGET_DIR)/usr/bin/servo_driver
	$(INSTALL) -m 0755 $(@D)/servo_driver_module/scripts/servo_driver_init.sh $(TARGET_DIR)/etc/init.d/S99servodriver
	$(INSTALL) -m 0755 $(@D)/servo_driver_module/scripts/pwm_init.sh $(TARGET_DIR)/etc/init.d/S98pwminit
endef

$(eval $(kernel-module))
$(eval $(generic-package))
