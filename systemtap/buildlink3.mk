# $NetBSD$
# XXX
# XXX This file was created automatically using createbuildlink-3.18.
# XXX After this file has been verified as correct, the comment lines
# XXX beginning with "XXX" should be removed.  Please do not commit
# XXX unverified buildlink3.mk files.
# XXX
# XXX Packages that only install static libraries or headers should
# XXX include the following line:
# XXX
# XXX	BUILDLINK_DEPMETHOD.systemtap?=	build

BUILDLINK_TREE+=	systemtap

.if !defined(SYSTEMTAP_BUILDLINK3_MK)
SYSTEMTAP_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.systemtap+=	systemtap>=4.5
BUILDLINK_PKGSRCDIR.systemtap?=	../../sysutils/systemtap
# On newer versions of GCC, .d files are Dlang (other D)
# Ensure we're using cpp(1) and not invoking cc -E
CONFIGURE_ENV+= 	CPP=${CPP:Q}
.endif	# SYSTEMTAP_BUILDLINK3_MK

BUILDLINK_TREE+=	-systemtap
