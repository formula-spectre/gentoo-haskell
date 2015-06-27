# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="A Prolog interpreter written in Haskell"
HOMEPAGE="https://github.com/Erdwolf/prolog"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="public-domain"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.0.1.0:=[profile?]
		>=dev-haskell/parsec-3.1.1:=[profile?]
		>=dev-haskell/syb-0.3:=[profile?]
		>=dev-haskell/th-lift-0.5.3:=[profile?]
		>=dev-haskell/transformers-0.2.2.0:=[profile?]
		>=dev-lang/ghc-7.0.1:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch

	cabal_chdeps \
		'containers >=0.4 && <0.5' 'containers >=0.4'
}
