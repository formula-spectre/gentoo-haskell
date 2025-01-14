# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A low-level (incomplete) wrapper around the pulseaudio client asynchronous api"
HOMEPAGE="https://hackage.haskell.org/package/pulseaudio"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/stm:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	media-sound/pulseaudio:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
