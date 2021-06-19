$NetBSD$

Portability fix.

--- testsuite/systemtap.base/perf.sh.orig	2021-06-01 20:59:36.017187667 +0000
+++ testsuite/systemtap.base/perf.sh
@@ -56,7 +56,7 @@ probe end
 done
 
 
-if [ "${perfresult['first']}" == "${perfresult['second']}" ] ; then
+if [ "${perfresult['first']}" = "${perfresult['second']}" ] ; then
     echo PASS: ${perfresult["first"]}
 else
     echo UNRESOLVED: ${perfresult["first"]} ${perfresult["second"]}
