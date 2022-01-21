# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Automatic derivation of querying functions for servant"
HOMEPAGE="https://docs.servant.dev/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RESTRICT=test # seems to require network access

RDEPEND=">=dev-haskell/base-compat-0.10.5:=[profile?] <dev-haskell/base-compat-0.12:=[profile?]
	>=dev-haskell/exceptions-0.10.0:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/http-client-0.5.13.1:=[profile?] <dev-haskell/http-client-0.8:=[profile?]
	>=dev-haskell/http-media-0.7.1.3:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/http-types-0.12.2:=[profile?] <dev-haskell/http-types-0.13:=[profile?]
	>=dev-haskell/kan-extensions-5.2:=[profile?] <dev-haskell/kan-extensions-5.3:=[profile?]
	>=dev-haskell/monad-control-1.0.2.3:=[profile?] <dev-haskell/monad-control-1.1:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/semigroupoids-5.3.1:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/servant-0.18:=[profile?] <dev-haskell/servant-0.19:=[profile?]
	>=dev-haskell/servant-client-core-0.18.3:=[profile?] <dev-haskell/servant-client-core-0.18.4:=[profile?]
	>=dev-haskell/stm-2.4.5.1:=[profile?] <dev-haskell/stm-2.6:=[profile?]
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/transformers-base-0.4.5.2:=[profile?] <dev-haskell/transformers-base-0.5:=[profile?]
	>=dev-haskell/transformers-compat-0.6.2:=[profile?] <dev-haskell/transformers-compat-0.7:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/aeson
		>=dev-haskell/entropy-0.4.1.3 <dev-haskell/entropy-0.5
		>=dev-haskell/hspec-2.6.0 <dev-haskell/hspec-2.9
		dev-haskell/http-api-data
		>=dev-haskell/hunit-1.6.0.0 <dev-haskell/hunit-1.7
		dev-haskell/markdown-unlit
		>=dev-haskell/network-2.8.0.0 <dev-haskell/network-3.2
		>=dev-haskell/quickcheck-2.12.6.1 <dev-haskell/quickcheck-2.15
		>=dev-haskell/servant-server-0.18 <dev-haskell/servant-server-0.19
		dev-haskell/sop-core
		>=dev-haskell/tdigest-0.2 <dev-haskell/tdigest-0.3
		dev-haskell/wai
		dev-haskell/warp )
"
