package org.bouncycastle.pqc.crypto.util;

import e9.j;
import e9.n;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import l9.r;
import l9.t;
import l9.x;
import l9.z;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v;
import org.bouncycastle.pqc.crypto.lms.m;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    private static Map converters;

    private static class b extends g {
        private b() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            byte[] bArrZ = v.x(bVar.q()).z();
            if (org.bouncycastle.util.f.a(bArrZ, 0) == 1) {
                return m.a(org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length));
            }
            if (bArrZ.length == 64) {
                bArrZ = org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length);
            }
            return org.bouncycastle.pqc.crypto.lms.d.a(bArrZ);
        }
    }

    /* JADX INFO: renamed from: org.bouncycastle.pqc.crypto.util.c$c, reason: collision with other inner class name */
    private static class C0477c extends g {
        private C0477c() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            e9.b bVarP = e9.b.p(bVar.q());
            return new g9.c(bVarP.q(), bVarP.r(), bVarP.m(), org.bouncycastle.pqc.crypto.util.e.c(bVarP.j().j()));
        }
    }

    private static class d extends g {
        private d() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            return new org.bouncycastle.pqc.crypto.newhope.b(bVar.p().x());
        }
    }

    private static class e extends g {
        private e() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            return new h9.b(org.bouncycastle.pqc.crypto.util.e.e(bVar.j()), bVar.p().B());
        }
    }

    private static class f extends g {
        private f() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            return new k9.c(bVar.p().x(), org.bouncycastle.pqc.crypto.util.e.g(e9.h.b(bVar.j().p())));
        }
    }

    private static abstract class g {
        private g() {
        }

        abstract org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException;
    }

    private static class h extends g {
        private h() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            z.b bVarF;
            e9.i iVarM = e9.i.m(bVar.j().p());
            if (iVarM != null) {
                u uVarJ = iVarM.p().j();
                n nVarB = n.b(bVar.q());
                bVarF = new z.b(new x(iVarM.j(), org.bouncycastle.pqc.crypto.util.e.b(uVarJ))).g(nVarB.j()).h(nVarB.m());
            } else {
                byte[] bArrZ = v.x(bVar.q()).z();
                bVarF = new z.b(x.k(org.bouncycastle.util.f.a(bArrZ, 0))).f(bArrZ);
            }
            return bVarF.e();
        }
    }

    private static class i extends g {
        private i() {
            super();
        }

        @Override // org.bouncycastle.pqc.crypto.util.c.g
        org.bouncycastle.crypto.params.a a(w8.b bVar, Object obj) throws IOException {
            t.b bVarF;
            j jVarM = j.m(bVar.j().p());
            if (jVarM != null) {
                u uVarJ = jVarM.q().j();
                n nVarB = n.b(bVar.q());
                bVarF = new t.b(new r(jVarM.j(), jVarM.p(), org.bouncycastle.pqc.crypto.util.e.b(uVarJ))).g(nVarB.j()).h(nVarB.m());
            } else {
                byte[] bArrZ = v.x(bVar.q()).z();
                bVarF = new t.b(r.i(org.bouncycastle.util.f.a(bArrZ, 0))).f(bArrZ);
            }
            return bVarF.e();
        }
    }

    static {
        HashMap map = new HashMap();
        converters = map;
        map.put(e9.e.qTESLA_p_I, new e());
        converters.put(e9.e.qTESLA_p_III, new e());
        converters.put(e9.e.sphincs256, new f());
        converters.put(e9.e.newHope, new d());
        converters.put(e9.e.xmss, new h());
        converters.put(e9.e.xmss_mt, new i());
        converters.put(s8.a.id_alg_xmss, new h());
        converters.put(s8.a.id_alg_xmssmt, new i());
        converters.put(v8.a.id_alg_hss_lms_hashsig, new b());
        converters.put(e9.e.mcElieceCca2, new C0477c());
    }

    public static org.bouncycastle.crypto.params.a a(w8.b bVar) throws IOException {
        return b(bVar, null);
    }

    public static org.bouncycastle.crypto.params.a b(w8.b bVar, Object obj) throws IOException {
        w8.a aVarJ = bVar.j();
        g gVar = (g) converters.get(aVarJ.j());
        if (gVar != null) {
            return gVar.a(bVar, obj);
        }
        throw new IOException("algorithm identifier in public key not recognised: " + aVarJ.j());
    }
}
