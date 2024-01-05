# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="POSIX shell script for creating a minimal EPUB from a small collection of files"
HOMEPAGE="https://sr.ht/~flexibeast/epub-create/"
EGIT_REPO_URI="https://git.sr.ht/~flexibeast/epub-create"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
	git-r3_src_unpack
}

src_install() {
	exeinto /usr/bin
	doexe epub-create
	doman epub-create.1
}
