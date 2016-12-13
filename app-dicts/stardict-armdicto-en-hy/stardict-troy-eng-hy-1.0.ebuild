# Distributed under the terms of the GNU General Public License v2

FROM_LANG="English"
TO_LANG="Armenian"

inherit stardict

DESCRIPTION="Troy's English-Armenian dictionary"
HOMEPAGE="http://dictionaries.arnet.am/"
SRC_URI="http://dictionaries.arnet.am/armdicto.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S=${WORKDIR}/EngHy

