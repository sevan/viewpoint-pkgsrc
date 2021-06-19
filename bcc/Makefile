# $NetBSD$

DISTNAME= 	bcc-src-with-submodule
PKGNAME= 	bcc-0.20.0
CATEGORIES=	sysutils
MASTER_SITES=	${MASTER_SITE_GITHUB:=iovisor/}
EXTRACT_SUFX=	.tar.gz
GITHUB_RELEASE=	v0.20.0

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://github.com/iovisor/
COMMENT=	BCC - Tools for BPF-based Linux IO analysis, networking, monitoring, and more.
LICENSE=	apache-2.0

USE_TOOLS+= 	bison flex gmake
USE_LANGUAGES= 	c++ c
USE_CMAKE= 	yes
WRKSRC= 	${WRKDIR}/bcc
BUILD_DEPENDS+= clang-[0-9]*:../../lang/clang
CMAKE_ARGS+= 	-DPYTHON_CMD=python${PYVERSSUFFIX}
#CMAKE_ARGS+= 	-DENABLE_EXAMPLES=OFF
PY_PATCHPLIST= 	yes

# With a debug build of clang, build balloons, consuming RAM until killed
#MAKE_JOBS_SAFE= 	no

TOOL_DEPENDS+=  iperf3>=0:../../net/iperf3
TOOL_DEPENDS+= 	netperf>=0:../../benchmarks/netperf

CHECK_INTERPRETER_SKIP+= 	share/bcc/examples/lua/*.lua
#REPLACE_LUA+= 	examples/lua/bashreadline.lua examples/lua/kprobe-latency.lua
#REPLACE_LUA+= 	examples/lua/kprobe-write.lua examples/lua/memleak.lua
#REPLACE_LUA+= 	examples/lua/offcputime.lua examples/lua/sock-parse-dns.lua
#REPLACE_LUA+= 	examples/lua/sock-parse-http.lua examples/lua/sock-proto.lua
#REPLACE_LUA+= 	examples/lua/sock-protolen.lua examples/lua/strlen_count.lua
#REPLACE_LUA+= 	examples/lua/task_switch.lua examples/lua/tracepoint-offcputime.lua
#REPLACE_LUA+= 	examples/lua/uprobe-readline-perf.lua examples/lua/uprobe-readline.lua
#REPLACE_LUA+= 	examples/lua/uprobe-tailkt.lua examples/lua/usdt_ruby.lua
REPLACE_PYTHON+= 	examples/networking/distributed_bridge/main.py
REPLACE_PYTHON+= 	examples/networking/distributed_bridge/tunnel.py
REPLACE_PYTHON+= 	examples/networking/distributed_bridge/tunnel_mesh.py
REPLACE_PYTHON+= 	examples/networking/http_filter/http-parse-complete.py
REPLACE_PYTHON+= 	examples/networking/http_filter/http-parse-simple.py
REPLACE_PYTHON+= 	examples/networking/neighbor_sharing/tc_neighbor_sharing.py
REPLACE_PYTHON+= 	examples/networking/simple_tc.py
REPLACE_PYTHON+= 	examples/networking/tc_perf_event.py
REPLACE_PYTHON+= 	examples/networking/tunnel_monitor/main.py
REPLACE_PYTHON+= 	examples/networking/tunnel_monitor/monitor.py
REPLACE_PYTHON+= 	examples/networking/vlan_learning/vlan_learning.py
REPLACE_PYTHON+= 	examples/networking/xdp/xdp_drop_count.py
REPLACE_PYTHON+= 	examples/networking/xdp/xdp_macswap_count.py
REPLACE_PYTHON+= 	examples/networking/xdp/xdp_redirect_cpu.py
REPLACE_PYTHON+= 	examples/networking/xdp/xdp_redirect_map.py
REPLACE_PYTHON+= 	examples/tracing/biolatpcts.py
REPLACE_PYTHON+= 	examples/tracing/bitehist.py
REPLACE_PYTHON+= 	examples/tracing/dddos.py
REPLACE_PYTHON+= 	examples/tracing/disksnoop.py
REPLACE_PYTHON+= 	examples/tracing/hello_fields.py
REPLACE_PYTHON+= 	examples/tracing/hello_perf_output.py
REPLACE_PYTHON+= 	examples/tracing/hello_perf_output_using_ns.py
REPLACE_PYTHON+= 	examples/tracing/kvm_hypercall.py
REPLACE_PYTHON+= 	examples/tracing/mallocstacks.py
REPLACE_PYTHON+= 	examples/tracing/mysqld_query.py
REPLACE_PYTHON+= 	examples/tracing/nflatency.py
REPLACE_PYTHON+= 	examples/tracing/nodejs_http_server.py
REPLACE_PYTHON+= 	examples/tracing/stack_buildid_example.py
REPLACE_PYTHON+= 	examples/tracing/stacksnoop.py
REPLACE_PYTHON+= 	examples/tracing/strlen_count.py
REPLACE_PYTHON+= 	examples/tracing/strlen_hist.py
REPLACE_PYTHON+= 	examples/tracing/strlen_hist_ifunc.py
REPLACE_PYTHON+= 	examples/tracing/strlen_snoop.py
REPLACE_PYTHON+= 	examples/tracing/sync_timing.py
REPLACE_PYTHON+= 	examples/tracing/task_switch.py
REPLACE_PYTHON+= 	examples/tracing/tcpv4connect.py
REPLACE_PYTHON+= 	examples/tracing/trace_fields.py
REPLACE_PYTHON+= 	examples/tracing/trace_perf_output.py
REPLACE_PYTHON+= 	examples/tracing/urandomread-explicit.py
REPLACE_PYTHON+= 	examples/tracing/urandomread.py
REPLACE_PYTHON+= 	examples/tracing/vfsreadlat.py
REPLACE_PYTHON+= 	examples/hello_world.py
REPLACE_PYTHON+= 	tools/argdist.py tools/bashreadline.py
REPLACE_PYTHON+= 	tools/bindsnoop.py tools/biolatency.py
REPLACE_PYTHON+= 	tools/biolatpcts.py tools/biosnoop.py
REPLACE_PYTHON+= 	tools/biotop.py tools/bitesize.py
REPLACE_PYTHON+= 	tools/bpflist.py tools/btrfsdist.py
REPLACE_PYTHON+= 	tools/btrfsslower.py tools/cachestat.py
REPLACE_PYTHON+= 	tools/cachetop.py tools/capable.py
REPLACE_PYTHON+= 	tools/compactsnoop.py tools/cpudist.py
REPLACE_PYTHON+= 	tools/cpudist.py tools/cpuunclaimed.py
REPLACE_PYTHON+= 	tools/criticalstat.py tools/dbslower.py
REPLACE_PYTHON+= 	tools/dbstat.py tools/dcsnoop.py
REPLACE_PYTHON+= 	tools/dcstat.py tools/deadlock.py
REPLACE_PYTHON+= 	tools/dirtop.py tools/drsnoop.py
REPLACE_PYTHON+= 	tools/ext4dist.py tools/ext4slower.py
REPLACE_PYTHON+= 	tools/filelife.py tools/fileslower.py
REPLACE_PYTHON+= 	tools/filetop.py tools/funccount.py
REPLACE_PYTHON+= 	tools/funcinterval.py tools/funclatency.py
REPLACE_PYTHON+= 	tools/funcslower.py tools/gethostlatency.py
REPLACE_PYTHON+= 	tools/hardirqs.py tools/inject.py
REPLACE_PYTHON+= 	tools/killsnoop.py tools/klockstat.py
REPLACE_PYTHON+= 	tools/lib/ucalls.py tools/lib/uflow.py
REPLACE_PYTHON+= 	tools/lib/ugc.py tools/lib/uobjnew.py
REPLACE_PYTHON+= 	tools/lib/ustat.py tools/lib/uthreads.py
REPLACE_PYTHON+= 	tools/llcstat.py tools/mdflush.py
REPLACE_PYTHON+= 	tools/memleak.py tools/mountsnoop.py
REPLACE_PYTHON+= 	tools/mysqld_qslower.py tools/netqtop.py
REPLACE_PYTHON+= 	tools/nfsdist.py tools/nfsslower.py
REPLACE_PYTHON+= 	tools/offcputime.py tools/offwaketime.py
REPLACE_PYTHON+= 	tools/old/bashreadline.py tools/old/biosnoop.py
REPLACE_PYTHON+= 	tools/old/compactsnoop.py tools/old/filelife.py
REPLACE_PYTHON+= 	tools/old/gethostlatency.py tools/old/killsnoop.py
REPLACE_PYTHON+= 	tools/old/memleak.py tools/old/offcputime.py
REPLACE_PYTHON+= 	tools/old/offwaketime.py tools/old/oomkill.py
REPLACE_PYTHON+= 	tools/old/opensnoop.py tools/old/profile.py
REPLACE_PYTHON+= 	tools/old/softirqs.py tools/old/stackcount.py
REPLACE_PYTHON+= 	tools/old/stacksnoop.py tools/old/statsnoop.py
REPLACE_PYTHON+= 	tools/old/syncsnoop.py tools/old/tcpaccept.py
REPLACE_PYTHON+= 	tools/old/tcpconnect.py tools/old/wakeuptime.py
REPLACE_PYTHON+= 	tools/oomkill.py tools/opensnoop.py
REPLACE_PYTHON+= 	tools/pidpersec.py tools/profile.py
REPLACE_PYTHON+= 	tools/execsnoop.py tools/exitsnoop.py
REPLACE_PYTHON+= 	tools/readahead.py tools/runqlat.py
REPLACE_PYTHON+= 	tools/runqlen.py tools/runqslower.py
REPLACE_PYTHON+= 	tools/shmsnoop.py tools/slabratetop.py
REPLACE_PYTHON+= 	tools/sofdsnoop.py tools/softirqs.py
REPLACE_PYTHON+= 	tools/solisten.py tools/sslsniff.py
REPLACE_PYTHON+= 	tools/stackcount.py tools/statsnoop.py
REPLACE_PYTHON+= 	tools/syncsnoop.py tools/swapin.py tools/syncsnoop.py
REPLACE_PYTHON+= 	tools/syscount.py tools/tcpaccept.py
REPLACE_PYTHON+= 	tools/tcpconnect.py tools/tcpconnlat.py
REPLACE_PYTHON+= 	tools/tcpdrop.py tools/tcplife.py
REPLACE_PYTHON+= 	tools/tcpretrans.py tools/tcprtt.py
REPLACE_PYTHON+= 	tools/tcpstates.py tools/tcpsubnet.py
REPLACE_PYTHON+= 	tools/tcpsynbl.py tools/tcptop.py
REPLACE_PYTHON+= 	tools/tcptracer.py tools/threadsnoop.py
REPLACE_PYTHON+= 	tools/tplist.py tools/trace.py
REPLACE_PYTHON+= 	tools/ttysnoop.py tools/vfscount.py
REPLACE_PYTHON+= 	tools/vfsstat.py tools/virtiostat.py tools/wakeuptime.py
REPLACE_PYTHON+= 	tools/xfsdist.py tools/xfsslower.py
REPLACE_PYTHON+= 	tools/zfsdist.py tools/zfsslower.py

.include "../../lang/clang/buildlink3.mk"
.include "../../devel/cmake/buildlink3.mk"
.include "../../lang/llvm/buildlink3.mk"
.include "../../lang/LuaJIT2/buildlink3.mk"
#.include "../../lang/lua/application.mk"
#.include "../../lang/lua/buildlink3.mk"
#.include "../../lang/lua/luaversion.mk"
.include "../../lang/python/application.mk"
.include "../../lang/python/extension.mk"
.include "../../lang/python/pyversion.mk"
.include "../../mk/bsd.pkg.mk"
