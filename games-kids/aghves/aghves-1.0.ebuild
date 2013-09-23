# Distributed under the terms of the GNU General Public License V2
# $Header: $

EAPI=3

inherit games confutils

DESCRIPTION="Aghves is an educational programming language and multimedia authoring tool."
HOMEPAGE="www.instigate-training-center.am"
SRC_URI="http://nairi.improve.am/aghves-1.0.src.tar.bz2"

LICENSE="Instigate"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="alsa oss pulseaudio v4l"

DEPEND="
    >=x11-libs/cairo-1.8.6
	>=x11-libs/pango-1.20.5
	>=dev-libs/glib-2.20.1:2
	v4l? ( >=media-libs/libv4l-0.5.8 )
"
RDEPEND="${DEPEND}"

S="${WORKDIR}/aghves"
ABI="x86"

if   use alsa;       then squeak_sound_plugin="ALSA"
elif use oss;        then squeak_sound_plugin="OSS"
elif use pulseaudio; then squeak_sound_plugin="pulse"
else                      squeak_sound_plugin="null"
fi

pkg_setup() {
	# Is the a convenience function for "zero or one"?
#	confutils_require_one alsa oss pulseaudio

	games_pkg_setup
}

src_prepare() {
	if ! use v4l; then
		sed -i '/\/camera/d' "${S}/Makefile"
	fi
	use alsa       || rm -f Plugins/vm-sound-ALSA
	use oss        || rm -f Plugins/vm-sound-OSS
	use pulseaudio || rm -f Plugins/vm-sound-pulse
}

src_install() {
	local libdir="$(games_get_libdir)/${PN}"
	local datadir="/usr/share/${PN}"
	local icondir="/usr/share/icons/hicolor"
	dodir "${libdir}" "${datadir}"
	cp -r Aghves.* Plugins App/* "${D}${libdir}"
	cp -r Help locale Media Projects "${D}${datadir}"
	doman src/man/*
	insinto /usr/share/mime/packages
	doins src/aghves.xml
	(
		cd src/icons
		for res in *; do
			insinto "${icondir}/${res}/apps"
			doins "${res}"/aghves*.png
			insinto "${icondir}/${res}/mimetypes"
			newins "${res}/gnome-mime-application-x-aghves-project.png" mime-application-x-aghves-project.png
		done
	)
	install_runner
	make_desktop_entry aghves Aghves aghves "Education;Development" "MimeType=application/x-aghves-project"
}

install_runner() {
	local tmpexe=$(emktemp)
	cp -r ${WORKDIR}/aghves/aghves "${tmpexe}"
	sed -i 's/\.\/Aghves.image/\/usr\/games\/aghves\/Aghves.image/g' ${tmpexe}
	chmod go+rx "${tmpexe}"
	newbin "${tmpexe}" "${PN}" || die
}
