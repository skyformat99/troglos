# Glue for cross compiling lldpd, IEEE 802.1AB
include $(ROOTDIR)/core.mk

PKGVER     := 0.9.2
PKG        := lldpd-$(PKGVER)
PKGURL      = http://media.luffy.cx/files/lldpd/$(PKGTAR)
PKGCFGENV  := export ac_cv_func_fork_works=yes;
PKGCFGENV  += export ac_cv_func_vfork_works=yes;
PKGCFGENV  += CPPFLAGS="-O2"
PKGCFG     := --host=$(CROSS_TARGET) --prefix=
PKGCFG     += --with-privsep-user=lldpd
PKGCFG     += --with-privsep-group=lldpd
PKGCFG     += --with-privsep-chroot=/var/run/lldpd
PKGCFG     += --enable-cdp
PKGCFG     += --enable-lldpmed
PKGCFG     += --enable-dot1 --enable-dot3
PKGCFG     += --disable-fdp --disable-edp --disable-sonmp
PKGCFG     += --disable-doxygen-doc --without-json --without-xml
#PKGCFG     += --with-snmp
PKGINSTALL := install-exec

include $(ROOTDIR)/pkg.mk

install::
	@mkdir -p $(STAGING)/etc/lldpd.d
	@touch    $(STAGING)/etc/lldpd.conf
