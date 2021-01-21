# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: -dev

CABAL_FEATURES="test-suite"
inherit haskell-cabal

DESCRIPTION="Test suite of parser-combinators"
HOMEPAGE="https://github.com/mrkkrp/parser-combinators"
SRC_URI="
	https://hackage.haskell.org/package/${P}/${P}.tar.gz
	https://hackage.haskell.org/package/${P}/revision/2.cabal -> ${PF}.cabal
	"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18
	test? ( >=dev-haskell/hspec-2.0 <dev-haskell/hspec-3.0
		>=dev-haskell/hspec-expectations-0.8 <dev-haskell/hspec-expectations-0.9
		>=dev-haskell/hspec-megaparsec-2.0 <dev-haskell/hspec-megaparsec-3.0
		>=dev-haskell/megaparsec-8.0 <dev-haskell/megaparsec-10.0
		>=dev-haskell/megaparsec-tests-8.0 <dev-haskell/megaparsec-tests-10.0
		~dev-haskell/parser-combinators-1.2.1
		>=dev-haskell/quickcheck-2.7 <dev-haskell/quickcheck-2.15 )
"

src_prepare() {
	default

	cp "${DISTDIR}/${PF}.cabal" "${S}/${PN}.cabal" || die
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-dev
}

# nothing to install.
src_install() {
	return
}