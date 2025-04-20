SERVO_DRIVER_VERSION = 9070f09bdd6030673d7b7930899b7ae6a623ec8e
SERVO_DRIVER_SITE = git@github.com:jackcenter/final-project-application-servo-driver.git
SERVO_DRIVER_SITE_METHOD = git
SERVO_DRIVER_GIT_SUBMODULES = NO

SERVO_DRIVER_MODULE_SUBDIRS = servo_driver_module

define SERVO_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/servo_driver_module/scripts/servo_driver_init.sh $(TARGET_DIR)/etc/init.d/S99servodriver
	$(INSTALL) -m 0755 $(@D)/servo_driver_module/scripts/pwm_init.sh $(TARGET_DIR)/etc/init.d/S98pwminit
endef

$(eval $(kernel-module))
$(eval $(generic-package))
