Index: mk/tools/bsd.tools.mk
===================================================================
RCS file: /cvsroot/pkgsrc/mk/tools/bsd.tools.mk,v
retrieving revision 1.62
diff -u -p -r1.62 bsd.tools.mk
--- mk/tools/bsd.tools.mk	13 May 2020 04:24:17 -0000	1.62
+++ mk/tools/bsd.tools.mk	25 Jun 2021 00:56:56 -0000
@@ -158,6 +158,7 @@ post-tools:
 .include "perl.mk"
 .include "pkg-config.mk"
 .include "make.mk"
+.include "dtrace.mk"
 
 .include "create.mk"
 
