# $NetBSD: Makefile,v 1.21 2021/01/01 08:24:42 ryoon Exp $

DISTNAME=	ledger-3.2.1
PKGREVISION=	1
CATEGORIES=	finance
MASTER_SITES=	${MASTER_SITE_GITHUB:=ledger/}
GITHUB_TAG=	v${PKGVERSION_NOREV}

MAINTAINER=	base@atomicules.co.uk
HOMEPAGE=	https://ledger-cli.org/
COMMENT=	Double-entry accounting system for command-line
LICENSE=	modified-bsd

USE_CMAKE=	yes
USE_LANGUAGES=	c++ c
GCC_REQD+=	4.8

.include "options.mk"

REPLACE_PYTHON+=	contrib/getquote-uk.py acprep python/demo.py
REPLACE_PYTHON+=	test/DocTests.py test/LedgerHarness.py
REPLACE_PYTHON+=	test/convert.py test/RegressTests.py test/convert.py
REPLACE_PYTHON+=	tools/genuuid

TEST_TARGET=	check

.include "../../devel/boost-headers/buildlink3.mk"
.include "../../devel/boost-libs/buildlink3.mk"
.include "../../devel/editline/buildlink3.mk"
.include "../../devel/gmp/buildlink3.mk"
.include "../../lang/python/tool.mk"
.include "../../math/mpfr/buildlink3.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"
