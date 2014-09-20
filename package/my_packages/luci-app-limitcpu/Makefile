#
# Copyright (C) 2010-2011 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-limitcpu
PKG_VERSION:=0.12.1
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-limitcpu
  SECTION:=luci
  CATEGORY:=LuCI
  DEPENDS:=+limitcpu
  TITLE:=LuCI - Lua Configuration Interface
  URL:=http://limitcpu.sourceforge.net/luci-app-limitcpu_$(PKG_VERSION)-$(PKG_RELEASE).ipk
  MAINTAINER:=Jeroen Louwes <jeroen.louwes@gmail.com>
  SUBMENU:=3. Applications
  TITLE:=LuCI Support for limitcpu policy routing
endef

define Package/luci-app-limitcpu/description
 limitcpu is a lightweight multi-protocol & multi-source command-line download utility
endef

define Build/Compile
endef

define Package/luci-app-limitcpu/install
	$(CP) ./files/* $(1)
endef

$(eval $(call BuildPackage,luci-app-limitcpu))
