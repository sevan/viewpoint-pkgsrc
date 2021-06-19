# $NetBSD$

DISTNAME=	bpftrace-0.12.1
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=iovisor/}
EXTRACT_SUFX=	.tar.gz
GITHUB_TAG= 	v${PKGVERSION_NOREV}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/iovisor/
COMMENT=	A high-level tracing language for eBPF on Linux
LICENSE=	apache-2.0

USE_TOOLS+= 	bison flex gmake
USE_LANGUAGES=	c++ c
USE_CMAKE= 	yes

DEPENDS+= 	git-base-[0-9]*:../../devel/git-base

.include "../../lang/lua/buildlink3.mk"
.include "../../lang/lua/luaversion.mk"
.include "../../sysutils/bcc/buildlink3.mk"
.include "../../lang/clang/buildlink3.mk"
.include "../../devel/cmake/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
