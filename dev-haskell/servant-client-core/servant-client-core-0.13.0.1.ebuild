# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Core functionality and class for client function generation for servant APIs"
HOMEPAGE="http://haskell-servant.readthedocs.org/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-compat-0.9.3:=[profile?] <dev-haskell/base-compat-0.11:=[profile?]
	>=dev-haskell/base64-bytestring-1.0.0.1:=[profile?] <dev-haskell/base64-bytestring-1.1:=[profile?]
	>=dev-haskell/exceptions-0.8.3:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/generics-sop-0.3.1.0:=[profile?] <dev-haskell/generics-sop-0.4:=[profile?]
	>=dev-haskell/http-api-data-0.3.7.1:=[profile?] <dev-haskell/http-api-data-0.4:=[profile?]
	>=dev-haskell/http-media-0.7.0:=[profile?] <dev-haskell/http-media-0.8:=[profile?]
	>=dev-haskell/http-types-0.12:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/mtl-2.1:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/network-uri-2.6.1.0:=[profile?] <dev-haskell/network-uri-2.7:=[profile?]
	>=dev-haskell/safe-0.3.15:=[profile?] <dev-haskell/safe-0.4:=[profile?]
	>=dev-haskell/semigroups-0.18.3:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/servant-0.13:=[profile?] <dev-haskell/servant-0.14:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/hspec-2.4.4 <dev-haskell/hspec-2.6
		>=dev-haskell/quickcheck-2.10.1 <dev-haskell/quickcheck-2.12 )
"
