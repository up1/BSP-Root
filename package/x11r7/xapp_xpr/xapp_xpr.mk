################################################################################
#
# xapp_xpr -- X.Org xpr application
#
################################################################################

XAPP_XPR_VERSION = 1.0.1
XAPP_XPR_SOURCE = xpr-$(XAPP_XPR_VERSION).tar.bz2
XAPP_XPR_SITE = http://xorg.freedesktop.org/releases/individual/app
XAPP_XPR_AUTORECONF = YES
XAPP_XPR_DEPENDANCIES = xlib_libX11 xlib_libXmu

$(eval $(call AUTOTARGETS,xapp_xpr))