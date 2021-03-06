# Copyright 2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Play snake in your terminal"
HOMEPAGE="https://github.com/3elDU/snake"
# SRC_URI="https://github.com/3elDU/snake/archive/refs/heads/master.tar.gz"
# SRC_URI="https://github.com/3elDU/snake/archive/refs/heads/main.zip"
SRC_URI="https://github.com/3elDU/snake/archive/refs/tags/v${PV}.tar.gz"

SLOT="0"
KEYWORDS="~amd64"

DEPEND="sys-libs/ncurses"
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/snake-${PV}"

src_compile() {
	emake
}

src_install() {
	emake DESTDIR=${D} install
}
