# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999
#hackport: flags: +use-pkgconfig,-force-narrow-library,-force-c2hs-newtype-pointer-hooks

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Modernised bindings to GNU ncurses"
HOMEPAGE="https://john-millikin.com/software/haskell-ncurses/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/text-0.7:=[profile?]
	>=dev-haskell/transformers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	sys-libs/ncurses
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-1.6
	virtual/pkgconfig
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-opaque.patch
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-force-c2hs-newtype-pointer-hooks \
		--flag=-force-narrow-library \
		--flag=use-pkgconfig
}
