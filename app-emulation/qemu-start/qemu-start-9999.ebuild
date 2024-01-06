# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="Simple interactive POSIX shell script to facilitate launching QEMU VMs"
HOMEPAGE="https://sr.ht/~flexibeast/qemu-start/"
EGIT_REPO_URI="https://git.sr.ht/~flexibeast/qemu-start"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64"

src_unpack() {
	git-r3_src_unpack
}

src_install() {
	exeinto /usr/bin
	doexe qemu-start
	doman qemu-start.1
}
