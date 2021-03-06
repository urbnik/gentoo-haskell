# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="Tools for manipulating sequence clusters"
HOMEPAGE="http://malde.org/~ketil/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/bio-0.4:=
	dev-haskell/quickcheck:2=
	dev-haskell/regex-compat:=
	>=dev-haskell/simpleargs-0.1:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
"

PATCHES=("${FILESDIR}"/${P}-ghc-7.10.patch)
