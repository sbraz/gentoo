# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=poetry
PYTHON_COMPAT=( pypy3 python3_{10..12} )

inherit distutils-r1 pypi

DESCRIPTION="Fixes mojibake and other problems with Unicode, after the fact"
HOMEPAGE="
	https://github.com/rspeer/python-ftfy/
	https://pypi.org/project/ftfy/
"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	>=dev-python/wcwidth-0.2.12[${PYTHON_USEDEP}]
	<dev-python/wcwidth-0.3[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${P}-run-tests-without-poetry.patch"
)

distutils_enable_tests pytest
