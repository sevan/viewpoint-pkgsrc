# $NetBSD$

.if !empty(USE_TOOLS:Mdtrace)
.  if ${OPSYS} == "Linux"
.  include "../../sysutils/systemtap/buildlink3.mk"
.  endif
.endif
