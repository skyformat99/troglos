# Glue for cross compiling libite (LITE)

PKGVER     := 2.0.1
PKG        := libite-$(PKGVER)
PKGSUFFIX  := tar.xz
PKGURL      = $(TROGLOHUB)/$(PKGNAME)/releases/download/v$(PKGVER)/$(PKGTAR)
PKGCFG     := --host=$(CROSS_TARGET) --prefix=

include $(ROOTDIR)/pkg.mk
