# Copyright 1999-2006 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/local/portage/app-portge/ept-get/ept-get-1.4.ebuild

DESCRIPTION="apt-get like tool aimed to provide recoursive remove possibility"
HOMEPAGE="http://ept-get.sf.net"
SRC_URI="http://osdn.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://surfnet.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://puzzle.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://switch.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://umn.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2         
         http://nchc.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://superb-west.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://optusnet.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://superb-east.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2
         http://nelnet.dl.sourceforge.net/sourceforge/${PN}/${P}.tar.bz2"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc-macos ppc64 s390 sparc x86"

DEPEND="dev-lang/fpc"

function src_compile(){
   emake || die "emake failed"
}

function src_install(){
   dodir /usr/bin
   dobin ept-get
}
