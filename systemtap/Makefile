# $NetBSD$

DISTNAME=	systemtap-4.5
CATEGORIES=	sysutils
MASTER_SITES=	https://www.sourceware.org/systemtap/ftp/releases/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://www.sourceware.org/
COMMENT=	A Linux trace/probe tool
LICENSE=	gnu-gpl-v2

ONLY_FOR_PLATFORM= 	Linux-*-*
GNU_CONFIGURE= 	yes
USE_LANGUAGES= 	c c++11
USE_TOOLS+= 	gmake pkg-config
PY_PATCHPLIST= 	yes
PYTHON_VERSIONS_ACCEPTED= 27

CHECK_INTERPRETER_SKIP+= 	share/systemtap/*

TOOL_DEPENDS+= 	${PYPKGPREFIX}-setuptools>=0:../../devel/py-setuptools44

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
