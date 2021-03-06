# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.5.9999

#nocabaldep is for the fancy cabal-detection feature at build-time
CABAL_FEATURES="lib profile haddock hoogle hscolour nocabaldep"
inherit haskell-cabal

DESCRIPTION="Binding to the VTE library"
HOMEPAGE="http://projects.haskell.org/gtk2hs/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="2/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/glib-0.12.5.0:0=[profile?] <dev-haskell/glib-0.13:0=[profile?]
	>=dev-haskell/gtk-0.12.5.0:2=[profile?] <dev-haskell/gtk-0.13:2=[profile?]
	>=dev-haskell/pango-0.12.5.0:0=[profile?] <dev-haskell/pango-0.13:0=[profile?]
	>=dev-lang/ghc-6.10.4:=
	x11-libs/vte:0
"
DEPEND="${RDEPEND}
	>=dev-haskell/gtk2hs-buildtools-0.12.5.1-r1:0=
	virtual/pkgconfig
"
