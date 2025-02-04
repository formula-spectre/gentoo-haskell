# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.1.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Nonresumable byte parser"
HOMEPAGE="https://github.com/andrewthad/bytesmith"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/byteslice-0.1.4:=[profile?] <dev-haskell/byteslice-0.3:=[profile?]
	>=dev-haskell/contiguous-0.4:=[profile?] <dev-haskell/contiguous-0.7:=[profile?]
	>=dev-haskell/primitive-0.7:=[profile?] <dev-haskell/primitive-0.8:=[profile?]
	>=dev-haskell/run-st-0.1:=[profile?] <dev-haskell/run-st-0.2:=[profile?]
	>=dev-haskell/text-short-0.1.3:=[profile?] <dev-haskell/text-short-0.2:=[profile?]
	>=dev-haskell/wide-word-0.1.0.9:=[profile?] <dev-haskell/wide-word-0.2:=[profile?]
	>=dev-lang/ghc-8.6.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? ( dev-haskell/byte-order
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
