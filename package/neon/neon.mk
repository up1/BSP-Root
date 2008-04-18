#############################################################
#
# neon
#
#############################################################
NEON_VERSION = 0.28.2
NEON_SITE = http://www.webdav.org/neon/
NEON_INSTALL_STAGING = YES

NEON_CONF_OPT+=--enable-shared --without-gssapi --disable-rpath

NEON_INSTALL_TARGET_OPT=DESTDIR=$(TARGET_DIR) install

ifeq ($(strip $(BR2_PACKAGE_NEON_LIBXML2)),y)
NEON_CONF_OPT+=--with-libxml2=yes
NEON_CONF_OPT+=--with-expat=no
NEON_DEPENDENCIES+=libxml2
endif
ifeq ($(strip $(BR2_PACKAGE_NEON_EXPAT)),y)
NEON_CONF_OPT+=--with-expat=$(STAGING_DIR)/usr/lib/libexpat.la
NEON_CONF_OPT+=--with-libxml2=no
NEON_DEPENDENCIES+=expat
endif

$(eval $(call AUTOTARGETS,package,neon))