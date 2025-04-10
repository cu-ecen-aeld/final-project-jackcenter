SERVO_DRIVER_VERSION = 67717edc61ef7832f36ddfacac3f42e7be1f130d
SERVO_DRIVER_SITE = git@github.com:jackcenter/final-project-application-servo-driver.git
SERVO_DRIVER_SITE_METHOD = git
SERVO_DRIVER_GIT_SUBMODULES = NO

SERVO_DRIVER_MODULE_SUBDIRS = servo_driver_module

define SERVO_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/servo_driver_module/scripts/servo_driver_init.sh $(TARGET_DIR)/etc/init.d/S99servodriver
endef

$(eval $(kernel-module))
$(eval $(generic-package))
