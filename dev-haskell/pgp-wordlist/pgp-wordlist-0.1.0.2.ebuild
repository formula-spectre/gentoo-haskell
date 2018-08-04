# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Translate between binary data and a human-readable collection of words"
HOMEPAGE="https://github.com/quchen/pgp-wordlist"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # ambiguous packages: AC-Vector-Fancy vector

RDEPEND=">=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/vector-0.5:=[profile?]
	>=dev-lang/ghc-7.6.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.16.0
	test? ( >=dev-haskell/doctest-0.10
		dev-haskell/hunit
		>=dev-haskell/tasty-0.10
		>=dev-haskell/tasty-hunit-0.9
		dev-haskell/tasty-quickcheck )
"
