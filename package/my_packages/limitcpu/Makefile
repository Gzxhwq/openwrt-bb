# Copyright (C) 2011-2013 Entware
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=limitcpu
PKG_VERSION:=2.2
PKG_RELEASE:=1

PKG_SOURCE:=cpulimit-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=@SF/$(PKG_NAME)
PKG_MD5SUM:=96B67B38B5F0B3495E3D748DB422D176

PKG_BUILD_DIR:=$(BUILD_DIR)/cpulimit-$(PKG_VERSION)

include $(INCLUDE_DIR)/package.mk

define Package/limitcpu
	SECTION:=custom
	CATEGORY:=Custom packages
	DEPENDS:=+librt
	TITLE:=CPU usage limiter
	URL:=http://limitcpu.sourceforge.net
	MAINTAINER:=Entware team, wl500g-repo.googlecode.com
endef

define Package/limitcpu/description
 LimitCPU is a program to throttle the CPU cycles used by other applications.
 It will monitor a process and make sure its CPU usage stays at or below
 a given percentage.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
endef

define Package/limitcpu/install
	$(INSTALL_DIR) $(1)/bin
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/cpulimit $(1)/bin/
endef

$(eval $(call BuildPackage,limitcpu))
