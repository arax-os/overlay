inherit font 


F_NAME="Arian-Grqi"
DESCRIPTION="Tarumean's new Arian Grqi font"
HOMEPAGE="http://arian.tarumian.am/?page_id=13"
SRC_URI="http://arian.am/Arian_Grqi.zip"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="app-arch/unzip"
RDEPEND=""

FONT_SUFFIX="ttf"
FONT_S="${WORKDIR}/Grqi-${PV}"

S=${FONT_S}
