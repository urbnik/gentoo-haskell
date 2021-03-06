# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

MY_PN="SourceGraph"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Static code analysis using graph-theoretic techniques"
HOMEPAGE="http://hackage.haskell.org/package/SourceGraph"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.22:= <dev-haskell/cabal-1.23:=
	>=dev-haskell/fgl-5.5:= <dev-haskell/fgl-5.6:=
	>=dev-haskell/graphalyze-0.14.1.0:= <dev-haskell/graphalyze-0.15:=
	>=dev-haskell/graphviz-2999.15.0.0:= <dev-haskell/graphviz-2999.19:=
	>=dev-haskell/haskell-src-exts-1.16:= <dev-haskell/haskell-src-exts-1.17:=
	dev-haskell/mtl:=
	dev-haskell/multiset:=
	dev-haskell/random:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

S="${WORKDIR}/${MY_P}"
