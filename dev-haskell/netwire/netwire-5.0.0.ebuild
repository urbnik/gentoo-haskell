# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Functional reactive programming library"
HOMEPAGE="http://hackage.haskell.org/package/netwire"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="testprogram"

RDEPEND=">=dev-haskell/deepseq-1.3:=[profile?] <dev-haskell/deepseq-2:=[profile?]
	>=dev-haskell/parallel-3.2:=[profile?] <dev-haskell/parallel-4:=[profile?]
	>=dev-haskell/random-1.0:=[profile?] <dev-haskell/random-2:=[profile?]
	>=dev-haskell/semigroups-0.9:=[profile?] <dev-haskell/semigroups-1:=[profile?]
	>=dev-haskell/transformers-0.3:=[profile?] <dev-haskell/transformers-1:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag testprogram testprogram)
}
