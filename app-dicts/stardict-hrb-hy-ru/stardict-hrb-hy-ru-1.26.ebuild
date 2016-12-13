# Distributed under the terms of the GNU General Public License v2

FROM_LANG="Armenian"
TO_LANG="Russian"

inherit stardict


DESCRIPTION="Armenian-Russion dictionary"
HOMEPAGE="http://dictionaries.arnet.am/"
SRC_URI="http://dictionaries.arnet.am/hrb-hy-ru-1.26.zip"

LICENSE="GPL"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

S=${WORKDIR}/hrb-hy-ru
