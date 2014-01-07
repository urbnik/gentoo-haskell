# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.11

EAPI="3"

CABAL_FEATURES="bin lib profile haddock hscolour hoogle"
inherit haskell-cabal

DESCRIPTION="Low-level D-Bus protocol implementation"
HOMEPAGE="http://john-millikin.com/software/haskell-dbus/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/binary-0.5
		=dev-haskell/data-binary-ieee754-0.4*
		=dev-haskell/libxml-sax-0.7*
		>=dev-haskell/network-2.3
		<dev-haskell/parsec-3.2
		>=dev-haskell/text-0.8
		=dev-haskell/xml-types-0.3*
		>=dev-lang/ghc-6.10.1"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	sed -e 's@xml-types >= 0.1 && < 0.2@xml-types >= 0.1 \&\& < 0.4@' \
		-e 's@libxml-sax >= 0.6 && < 0.7@libxml-sax >= 0.6 \&\& < 0.8@' \
		-i "${S}/${PN}.cabal" || die "Could not loosen libxml-sax and xml-types dependencies"
	epatch "${FILESDIR}/${P}-xml-types-0.3.patch"
	epatch "${FILESDIR}/${P}-ghc-7.4.patch"
		cabal_chdeps \
				'text >= 0.8 && < 0.12' 'text >= 0.8' \
				'bytestring >= 0.9 && < 0.10' 'bytestring >= 0.9' \
				'containers >= 0.1 && < 0.5' 'containers >= 0.1' \
				'network >= 2.2 && < 2.4' 'network >= 2.2' \
				'unix >= 2.2 && < 2.6' 'unix >= 2.2' \
				'binary >= 0.4 && < 0.6' 'binary >= 0.6'
}
