################################################################################
#
# nqptp
#
################################################################################

NQPTP_VERSION = c71b49a3556ba8547ee28482cb31a97fe99298aa
NQPTP_SITE = $(call github,mikebrady,nqptp,$(NQPTP_VERSION))

# git clone, no configure
NQPTP_AUTORECONF = YES

define NQPTP_INSTALL_INIT_SYSTEMD
        $(INSTALL) -D -m 0644 $(BR2_EXTERNAL_HIFIBERRY_PATH)/package/nqptp/nqptp.service \
                $(TARGET_DIR)/usr/lib/systemd/system/nqptp.service
endef

$(eval $(autotools-package))
