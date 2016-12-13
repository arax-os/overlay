# Distributed under the terms of the GNU General Public License v2

FROM_LANG="English"
TO_LANG="Georgian"

inherit stardict

DESCRIPTION="English-Georgian dictionary"
HOMEPAGE="http://dictionaries.arnet.am/"
SRC_URI="http://dictionaries.arnet.am/lexicon-en-ge.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S=${WORKDIR}/en-ge
