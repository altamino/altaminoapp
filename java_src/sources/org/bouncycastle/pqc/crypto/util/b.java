package org.bouncycastle.pqc.crypto.util;

import e9.h;
import e9.i;
import e9.j;
import e9.k;
import e9.m;
import java.io.IOException;
import l9.a0;
import l9.s;
import l9.y;
import org.bouncycastle.asn1.d0;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.pqc.crypto.lms.l;
import org.bouncycastle.util.f;

/* JADX INFO: loaded from: classes10.dex */
public class b {
    public static v8.b a(org.bouncycastle.crypto.params.a aVar, d0 d0Var) throws IOException {
        if (aVar instanceof h9.a) {
            h9.a aVar2 = (h9.a) aVar;
            return new v8.b(e.d(aVar2.b()), new r1(aVar2.a()), d0Var);
        }
        if (aVar instanceof k9.b) {
            k9.b bVar = (k9.b) aVar;
            return new v8.b(new w8.a(e9.e.sphincs256, new h(e.f(bVar.a()))), new r1(bVar.b()));
        }
        if (aVar instanceof org.bouncycastle.pqc.crypto.newhope.a) {
            w8.a aVar3 = new w8.a(e9.e.newHope);
            short[] sArrA = ((org.bouncycastle.pqc.crypto.newhope.a) aVar).a();
            byte[] bArr = new byte[sArrA.length * 2];
            for (int i10 = 0; i10 != sArrA.length; i10++) {
                f.l(sArrA[i10], bArr, i10 * 2);
            }
            return new v8.b(aVar3, new r1(bArr));
        }
        if (aVar instanceof l) {
            l lVar = (l) aVar;
            byte[] bArrB = org.bouncycastle.pqc.crypto.lms.a.f().i(1).c(lVar).b();
            return new v8.b(new w8.a(v8.a.id_alg_hss_lms_hashsig), new r1(bArrB), d0Var, org.bouncycastle.pqc.crypto.lms.a.f().i(1).c(lVar.l()).b());
        }
        if (aVar instanceof org.bouncycastle.pqc.crypto.lms.c) {
            org.bouncycastle.pqc.crypto.lms.c cVar = (org.bouncycastle.pqc.crypto.lms.c) aVar;
            byte[] bArrB2 = org.bouncycastle.pqc.crypto.lms.a.f().i(cVar.e()).c(cVar).b();
            return new v8.b(new w8.a(v8.a.id_alg_hss_lms_hashsig), new r1(bArrB2), d0Var, org.bouncycastle.pqc.crypto.lms.a.f().i(cVar.e()).c(cVar.f().c()).b());
        }
        if (aVar instanceof y) {
            y yVar = (y) aVar;
            return new v8.b(new w8.a(e9.e.xmss, new i(yVar.b().b(), e.h(yVar.a()))), b(yVar), d0Var);
        }
        if (aVar instanceof s) {
            s sVar = (s) aVar;
            return new v8.b(new w8.a(e9.e.xmss_mt, new j(sVar.b().a(), sVar.b().b(), e.h(sVar.a()))), c(sVar), d0Var);
        }
        if (!(aVar instanceof g9.b)) {
            throw new IOException("key parameters not recognized");
        }
        g9.b bVar2 = (g9.b) aVar;
        return new v8.b(new w8.a(e9.e.mcElieceCca2), new e9.a(bVar2.f(), bVar2.e(), bVar2.b(), bVar2.c(), bVar2.g(), e.a(bVar2.a())));
    }

    private static m b(y yVar) throws IOException {
        byte[] encoded = yVar.getEncoded();
        int iH = yVar.b().h();
        int iB = yVar.b().b();
        int iA = (int) a0.a(encoded, 0, 4);
        if (!a0.l(iB, iA)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] bArrG = a0.g(encoded, 4, iH);
        int i10 = 4 + iH;
        byte[] bArrG2 = a0.g(encoded, i10, iH);
        int i11 = i10 + iH;
        byte[] bArrG3 = a0.g(encoded, i11, iH);
        int i12 = i11 + iH;
        byte[] bArrG4 = a0.g(encoded, i12, iH);
        int i13 = i12 + iH;
        byte[] bArrG5 = a0.g(encoded, i13, encoded.length - i13);
        try {
            l9.a aVar = (l9.a) a0.f(bArrG5, l9.a.class);
            return aVar.c() != (1 << iB) - 1 ? new m(iA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5, aVar.c()) : new m(iA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5);
        } catch (ClassNotFoundException e) {
            throw new IOException("cannot parse BDS: " + e.getMessage());
        }
    }

    private static k c(s sVar) throws IOException {
        byte[] encoded = sVar.getEncoded();
        int iF = sVar.b().f();
        int iA = sVar.b().a();
        int i10 = (iA + 7) / 8;
        long jA = (int) a0.a(encoded, 0, i10);
        if (!a0.l(iA, jA)) {
            throw new IllegalArgumentException("index out of bounds");
        }
        byte[] bArrG = a0.g(encoded, i10, iF);
        int i11 = i10 + iF;
        byte[] bArrG2 = a0.g(encoded, i11, iF);
        int i12 = i11 + iF;
        byte[] bArrG3 = a0.g(encoded, i12, iF);
        int i13 = i12 + iF;
        byte[] bArrG4 = a0.g(encoded, i13, iF);
        int i14 = i13 + iF;
        byte[] bArrG5 = a0.g(encoded, i14, encoded.length - i14);
        try {
            l9.b bVar = (l9.b) a0.f(bArrG5, l9.b.class);
            return bVar.b() != (1 << iA) - 1 ? new k(jA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5, bVar.b()) : new k(jA, bArrG, bArrG2, bArrG3, bArrG4, bArrG5);
        } catch (ClassNotFoundException e) {
            throw new IOException("cannot parse BDSStateMap: " + e.getMessage());
        }
    }
}
