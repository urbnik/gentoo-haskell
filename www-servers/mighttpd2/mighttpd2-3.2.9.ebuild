# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal user systemd

DESCRIPTION="High performance web server on WAI/warp"
HOMEPAGE="http://www.mew.org/~kazu/proj/mighttpd/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="tls"

RDEPEND="dev-haskell/async:=[profile?]
	dev-haskell/auto-update:=[profile?]
	dev-haskell/blaze-builder:=[profile?]
	dev-haskell/byteorder:=[profile?]
	dev-haskell/case-insensitive:=[profile?]
	>=dev-haskell/conduit-1.1:=[profile?]
	dev-haskell/conduit-extra:=[profile?]
	dev-haskell/http-client:=[profile?]
	dev-haskell/http-date:=[profile?]
	dev-haskell/http-types:=[profile?]
	dev-haskell/io-choice:=[profile?]
	dev-haskell/network:=[profile?]
	dev-haskell/old-locale:=[profile?]
	>=dev-haskell/parsec-3:=[profile?]
	dev-haskell/resourcet:=[profile?]
	dev-haskell/streaming-commons:=[profile?]
	dev-haskell/transformers:=[profile?]
	dev-haskell/unix-time:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-haskell/wai-3.0:=[profile?]
	>=dev-haskell/wai-app-file-cgi-3.0.7:=[profile?]
	>=dev-haskell/wai-logger-2.2.2:=[profile?]
	>=dev-haskell/warp-3.0.11:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	tls? ( dev-haskell/tls:=[profile?]
		>=dev-haskell/warp-tls-3.0.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( >=dev-haskell/hspec-1.3 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag tls tls)
}

pkg_setup() {
	ebegin "Creating mighttpd2 user and group"
	enewgroup ${PN}
	enewuser ${PN} -1 -1 -1 ${PN}
	eend $?
}

src_install() {
	haskell-cabal_src_install

	mkdir -p "${ED}"/etc/mighttpd2

	cp "${FILESDIR}"/mighttpd2.conf "${ED}"/etc/mighttpd2/mighttpd2.conf || die
	cp "${FILESDIR}"/mighttpd2.route "${ED}"/etc/mighttpd2/mighttpd2.route || die

	newinitd "${FILESDIR}"/mighttpd2.initd mighttpd2
	keepdir /var/log/mighttpd2
	fperms 0700 /var/log/mighttpd2
	fowners ${PN}:${PN} /var/log/mighttpd2

	systemd_dounit "${FILESDIR}"/mighttpd2.service
	systemd_newtmpfilesd "${FILESDIR}"/${PN}-tmpfiles.d.conf ${PN}.conf
}
