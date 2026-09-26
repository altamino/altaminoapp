package org.bouncycastle.pqc.crypto.util;

import e9.h;
import e9.i;
import e9.j;
import e9.k;
import e9.m;
import java.io.IOException;
import l9.a0;
import l9.r;
import l9.s;
import l9.x;
import l9.y;
import org.bouncycastle.asn1.u;
import org.bouncycastle.asn1.v;
import org.bouncycastle.pqc.crypto.lms.l;
import org.bouncycastle.util.f;

/* JADX INFO: loaded from: classes10.dex */
public class a {
    private static short[] a(byte[] bArr) {
        int length = bArr.length / 2;
        short[] sArr = new short[length];
        for (int i10 = 0; i10 != length; i10++) {
            sArr[i10] = f.g(bArr, i10 * 2);
        }
        return sArr;
    }

    public static org.bouncycastle.crypto.params.a b(v8.b bVar) throws IOException {
        u uVarJ = bVar.p().j();
        if (uVarJ.E(r8.a.qTESLA)) {
            return new h9.a(e.e(bVar.p()), v.x(bVar.s()).z());
        }
        if (uVarJ.s(r8.a.sphincs256)) {
            return new k9.b(v.x(bVar.s()).z(), e.g(h.b(bVar.p().p())));
        }
        if (uVarJ.s(r8.a.newHope)) {
            return new org.bouncycastle.pqc.crypto.newhope.a(a(v.x(bVar.s()).z()));
        }
        if (uVarJ.s(v8.a.id_alg_hss_lms_hashsig)) {
            byte[] bArrZ = v.x(bVar.s()).z();
            org.bouncycastle.asn1.c cVarQ = bVar.q();
            if (f.a(bArrZ, 0) == 1) {
                if (cVarQ == null) {
                    return l.g(org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length));
                }
                byte[] bArrB = cVarQ.B();
                return l.h(org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length), org.bouncycastle.util.a.j(bArrB, 4, bArrB.length));
            }
            if (cVarQ == null) {
                return org.bouncycastle.pqc.crypto.lms.c.b(org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length));
            }
            return org.bouncycastle.pqc.crypto.lms.c.c(org.bouncycastle.util.a.j(bArrZ, 4, bArrZ.length), cVarQ.B());
        }
        if (uVarJ.s(r8.a.xmss)) {
            i iVarM = i.m(bVar.p().p());
            u uVarJ2 = iVarM.p().j();
            m mVarP = m.p(bVar.s());
            try {
                y.b bVarO = new y.b(new x(iVarM.j(), e.b(uVarJ2))).l(mVarP.m()).q(mVarP.u()).p(mVarP.t()).n(mVarP.r()).o(mVarP.s());
                if (mVarP.v() != 0) {
                    bVarO.m(mVarP.q());
                }
                if (mVarP.j() != null) {
                    bVarO.k(((l9.a) a0.f(mVarP.j(), l9.a.class)).h(uVarJ2));
                }
                return bVarO.j();
            } catch (ClassNotFoundException e) {
                throw new IOException("ClassNotFoundException processing BDS state: " + e.getMessage());
            }
        }
        if (!uVarJ.s(e9.e.xmss_mt)) {
            if (!uVarJ.s(e9.e.mcElieceCca2)) {
                throw new RuntimeException("algorithm identifier in private key not recognised");
            }
            e9.a aVarQ = e9.a.q(bVar.s());
            return new g9.b(aVarQ.s(), aVarQ.r(), aVarQ.m(), aVarQ.p(), aVarQ.t(), e.c(aVarQ.j().j()));
        }
        j jVarM = j.m(bVar.p().p());
        u uVarJ3 = jVarM.q().j();
        try {
            k kVarP = k.p(bVar.s());
            s.b bVarP = new s.b(new r(jVarM.j(), jVarM.p(), e.b(uVarJ3))).m(kVarP.m()).r(kVarP.u()).q(kVarP.t()).o(kVarP.r()).p(kVarP.s());
            if (kVarP.v() != 0) {
                bVarP.n(kVarP.q());
            }
            if (kVarP.j() != null) {
                bVarP.l(((l9.b) a0.f(kVarP.j(), l9.b.class)).f(uVarJ3));
            }
            return bVarP.k();
        } catch (ClassNotFoundException e2) {
            throw new IOException("ClassNotFoundException processing BDS state: " + e2.getMessage());
        }
    }
}
