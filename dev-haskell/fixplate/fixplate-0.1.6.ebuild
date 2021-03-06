# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Uniplate-style generic traversals for optionally annotated fixed-point types"
HOMEPAGE="http://code.haskell.org/~bkomuves/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="withquickcheck +withutils"

RDEPEND=">=dev-lang/ghc-7.4.1:=
	withquickcheck? ( >dev-haskell/quickcheck-2.4:2=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag withquickcheck withquickcheck) \
		$(cabal_flag withutils withutils)
}
