# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Broken test-suite: needs an update
inherit eutils haskell-cabal

DESCRIPTION="Iteratee-based I/O"
HOMEPAGE="http://www.tiresiaspress.us/haskell/iteratee"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # fail to build under ghc-7.10: Ambiguous type variable

RDEPEND=">=dev-haskell/exceptions-0.3:=[profile?]
	>=dev-haskell/listlike-3.0:=[profile?] <dev-haskell/listlike-5:=[profile?]
	>=dev-haskell/monad-control-1.0:=[profile?]
	>=dev-haskell/parallel-2:=[profile?] <dev-haskell/parallel-4:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-haskell/transformers-base-0.4:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

PATCHES=(
	"${FILESDIR}"/${P}-monad-control-1.0.patch
	"${FILESDIR}"/${P}-ghc84.patch
)

src_prepare() {
	default

	cabal_chdeps \
		'exceptions                >= 0.3     && < 0.7' 'exceptions                >= 0.3' \
		'transformers              >= 0.2     && < 0.5' 'transformers              >= 0.2'
}
