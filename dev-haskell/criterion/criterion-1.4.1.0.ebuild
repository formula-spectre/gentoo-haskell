# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -fast

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Robust, reliable performance measurement and analysis"
HOMEPAGE="http://www.serpentine.com/criterion"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="embed-data-files"

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	>=dev-haskell/ansi-wl-pprint-0.6.7.2:=[profile?]
	>=dev-haskell/base-compat-batteries-0.10:=[profile?] <dev-haskell/base-compat-batteries-0.11:=[profile?]
	>=dev-haskell/cassava-0.3.0.0:=[profile?]
	dev-haskell/code-page:=[profile?]
	>=dev-haskell/exceptions-0.8.2:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/glob-0.7.2:=[profile?]
	dev-haskell/js-flot:=[profile?]
	dev-haskell/js-jquery:=[profile?]
	>=dev-haskell/microstache-1.0.1:=[profile?] <dev-haskell/microstache-1.1:=[profile?]
	>=dev-haskell/mtl-2:=[profile?]
	>=dev-haskell/mwc-random-0.8.0.3:=[profile?]
	>=dev-haskell/optparse-applicative-0.13:=[profile?]
	>=dev-haskell/parsec-3.1.0:=[profile?]
	dev-haskell/semigroups:=[profile?]
	>=dev-haskell/statistics-0.14:=[profile?] <dev-haskell/statistics-0.15:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/transformers-compat-0.4:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	>=dev-haskell/vector-algorithms-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	embed-data-files? ( <dev-haskell/file-embed-0.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/base-compat
		dev-haskell/hunit
		>=dev-haskell/quickcheck-2.4
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag embed-data-files embed-data-files) \
		--flag=-fast
}
