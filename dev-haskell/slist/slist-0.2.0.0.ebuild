# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Sized list"
HOMEPAGE="https://github.com/kowainik/slist"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

GHC_BOOTSTRAP_PACKAGES=(
	cabal-doctest
)

PATCHES=(
	"${FILESDIR}/${PN}-0.2.0.0-cabal-doctest.patch"
)

RDEPEND="
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4
	dev-haskell/cabal-doctest
	test? (
		dev-haskell/base-compat
		dev-haskell/doctest
		>=dev-haskell/hedgehog-1.0 <dev-haskell/hedgehog-1.1
		dev-haskell/hspec
		>=dev-haskell/hspec-hedgehog-0.0.1 <dev-haskell/hspec-hedgehog-0.1
	)
"
