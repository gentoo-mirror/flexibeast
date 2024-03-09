# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="NNTP news server for private newsgroup serving on a single server"
HOMEPAGE="https://github.com/erco77/newsd"
SRC_URI="https://github.com/erco77/newsd/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"
IUSE="doc"

BDEPEND="
		doc? (
				dev-lang/perl
		)
"

src_install() {

	dosbin newsd
	insinto /etc
	doins newsd.conf
	newinitd "${FILESDIR}/newsd.init" newsd

	if use doc; then
			dodoc newsd.html newsd.conf.html README.md CHANGES
			doman newsd.8
			newman newsd.conf.8 newsd.conf.5
	fi

}
