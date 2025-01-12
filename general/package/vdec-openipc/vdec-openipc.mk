################################################################################
#
# vdec-openipc
#
################################################################################

VDEC_OPENIPC_SITE = $(call github,openipc,silicon_research,$(VDEC_OPENIPC_VERSION))
VDEC_OPENIPC_VERSION = HEAD

VDEC_OPENIPC_LICENSE = MIT


define VDEC_OPENIPC_INSTALL_TARGET_CMDS
	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc/init.d
	$(INSTALL) -m 755 -t $(TARGET_DIR)/etc/init.d $(VDEC_OPENIPC_PKGDIR)/files/S98vdec

	$(INSTALL) -m 755 -d $(TARGET_DIR)/etc
	$(INSTALL) -m 644 -t $(TARGET_DIR)/etc $(VDEC_OPENIPC_PKGDIR)/files/vdec.conf

	$(INSTALL) -m 755 -d $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 755 -t $(TARGET_DIR)/usr/bin $(VDEC_OPENIPC_PKGDIR)/files/vdec_crsf
endef

$(eval $(generic-package))
