# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings to ZeroMQ 4.x"
HOMEPAGE="https://gitlab.com/twittner/zeromq-haskell/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

PATCHES=( "${FILESDIR}/${P}-add-monad-fail.patch" )

RDEPEND=">=dev-haskell/async-2.0:=[profile?] <dev-haskell/async-3.0:=[profile?]
	>=dev-haskell/exceptions-0.6:=[profile?] <dev-haskell/exceptions-1.0:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	>=dev-haskell/semigroups-0.8:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	>=net-libs/zeromq-4 <net-libs/zeromq-5
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	virtual/pkgconfig
	test? ( >=dev-haskell/quickcheck-2.6
		>=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-hunit-0.8
		>=dev-haskell/tasty-quickcheck-0.8 )
"
