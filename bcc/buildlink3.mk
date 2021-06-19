# $NetBSD$
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.bcc?=	build

BUILDLINK_TREE+=	bcc

.if !defined(BCC_BUILDLINK3_MK)
BCC_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.bcc+=	bcc>=0.18.0
BUILDLINK_PKGSRCDIR.bcc?=	../../sysutils/bcc

# XXX
# XXX Uncomment and keep only the buildlink3 lines below which are directly
# XXX needed for dependencies to compile, link, and run.  If this package
# XXX provides a wrappered API or otherwise does not expose the APIs of the
# XXX buildlink3 lines below to dependencies, remove them.
# XXX
.include "../../lang/clang/buildlink3.mk"
.include "../../devel/cmake/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../lang/lua/buildlink3.mk"
.endif	# BCC_BUILDLINK3_MK

BUILDLINK_TREE+=	-bcc
