# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.4.5.9999

CABAL_FEATURES="bin"
inherit haskell-cabal

DESCRIPTION="A tool for visualizing time series from log files"
HOMEPAGE="http://haskell.org/haskellwiki/Timeplot"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/bytestring-lexing:=
	dev-haskell/cairo:=
	>=dev-haskell/chart-1.3:=
	>=dev-haskell/chart-cairo-1.3:=
	dev-haskell/colour:=
	dev-haskell/data-default:=
	>=dev-haskell/lens-3.9:=
	dev-haskell/regex-tdfa:=
	>=dev-haskell/strptime-0.1.7:=
	dev-haskell/transformers:=
	>=dev-haskell/vcs-revision-0.0.2:=
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

src_prepare() {
	epatch "${FILESDIR}"/${P}-ghc-7.10.patch
}
