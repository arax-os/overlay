inherit font 

F_NAME="arnamu-fonts"
DESCRIPTION="Tarumean's new Arian AMU font"
HOMEPAGE="http://arian.tarumian.am/?page_id=13"
SRC_URI="http://arian.am/arnamu.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

FONT_SUFFIX="ttf"
FONT_S="${WORKDIR}/Arnamu-${PV}"

S=${FONT_S}

