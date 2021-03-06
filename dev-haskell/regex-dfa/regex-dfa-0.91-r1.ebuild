# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Replaces/Enhances Text.Regex"
HOMEPAGE="http://sourceforge.net/projects/lazy-regex"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl:=[profile?]
		dev-haskell/parsec:=[profile?]
		>=dev-haskell/regex-base-0.80:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-0"

src_prepare() {
	cabal_chdeps \
		'-Werror' ' ' \
		'base >= 2.0' 'base >= 3.0, array, containers, bytestring'
}
