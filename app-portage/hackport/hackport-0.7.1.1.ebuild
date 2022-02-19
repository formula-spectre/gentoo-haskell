# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="Hackage and Portage integration tool"
HOMEPAGE="https://hackage.haskell.org/package/hackport"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-3+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/async-2.0:=
	>=dev-haskell/base16-bytestring-0.1.1:= <dev-haskell/base16-bytestring-1.1:=
	>=dev-haskell/base64-bytestring-1.0:=
	>=dev-haskell/cryptohash-sha256-0.11:=
	dev-haskell/ed25519:=
	dev-haskell/extensible-exceptions:=
	>=dev-haskell/hashable-1.0:=
	>=dev-haskell/http-4000.1.5:=
	>=dev-haskell/lukko-0.1:=
	>=dev-haskell/network-2.6:=
	>=dev-haskell/network-uri-2.6:=
	>=dev-haskell/old-locale-1.0:=
	>=dev-haskell/parallel-3.2.1.0:=
	>=dev-haskell/random-1.0:=
	dev-haskell/split:=
	>=dev-haskell/stm-2.0:=
	>=dev-haskell/tar-0.5:=
	>=dev-haskell/xml-1.3.7:=
	>=dev-haskell/zlib-0.5.3:=
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/doctest-0.8
		>=dev-haskell/hspec-2.0
		>=dev-haskell/quickcheck-2.0 )
"
RDEPEND+="
	app-portage/repoman
	dev-util/pkgcheck
"

src_install() {
	haskell-cabal_src_install
	doman man/hackport.1
}
