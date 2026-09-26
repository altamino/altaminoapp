package org.bouncycastle.pqc.crypto.util;

import e9.h;
import e9.i;
import e9.j;
import e9.l;
import e9.n;
import java.io.IOException;
import l9.t;
import l9.z;
import org.bouncycastle.asn1.r1;
import org.bouncycastle.pqc.crypto.lms.m;

/* JADX INFO: loaded from: classes10.dex */
public class d {
    public static w8.b a(org.bouncycastle.crypto.params.a aVar) throws IOException {
        if (aVar instanceof h9.b) {
            h9.b bVar = (h9.b) aVar;
            return new w8.b(e.d(bVar.b()), bVar.a());
        }
        if (aVar instanceof k9.c) {
            k9.c cVar = (k9.c) aVar;
            return new w8.b(new w8.a(e9.e.sphincs256, new h(e.f(cVar.a()))), cVar.b());
        }
        if (aVar instanceof org.bouncycastle.pqc.crypto.newhope.b) {
            return new w8.b(new w8.a(e9.e.newHope), ((org.bouncycastle.pqc.crypto.newhope.b) aVar).a());
        }
        if (aVar instanceof m) {
            return new w8.b(new w8.a(v8.a.id_alg_hss_lms_hashsig), new r1(org.bouncycastle.pqc.crypto.lms.a.f().i(1).c((m) aVar).b()));
        }
        if (aVar instanceof org.bouncycastle.pqc.crypto.lms.d) {
            org.bouncycastle.pqc.crypto.lms.d dVar = (org.bouncycastle.pqc.crypto.lms.d) aVar;
            return new w8.b(new w8.a(v8.a.id_alg_hss_lms_hashsig), new r1(org.bouncycastle.pqc.crypto.lms.a.f().i(dVar.b()).c(dVar.c()).b()));
        }
        if (aVar instanceof z) {
            z zVar = (z) aVar;
            byte[] bArrC = zVar.c();
            byte[] bArrD = zVar.d();
            byte[] encoded = zVar.getEncoded();
            return encoded.length > bArrC.length + bArrD.length ? new w8.b(new w8.a(s8.a.id_alg_xmss), new r1(encoded)) : new w8.b(new w8.a(e9.e.xmss, new i(zVar.b().b(), e.h(zVar.a()))), new n(bArrC, bArrD));
        }
        if (!(aVar instanceof t)) {
            if (!(aVar instanceof g9.c)) {
                throw new IOException("key parameters not recognized");
            }
            g9.c cVar2 = (g9.c) aVar;
            return new w8.b(new w8.a(e9.e.mcElieceCca2), new e9.b(cVar2.c(), cVar2.d(), cVar2.b(), e.a(cVar2.a())));
        }
        t tVar = (t) aVar;
        byte[] bArrC2 = tVar.c();
        byte[] bArrD2 = tVar.d();
        byte[] encoded2 = tVar.getEncoded();
        return encoded2.length > bArrC2.length + bArrD2.length ? new w8.b(new w8.a(s8.a.id_alg_xmssmt), new r1(encoded2)) : new w8.b(new w8.a(e9.e.xmss_mt, new j(tVar.b().a(), tVar.b().b(), e.h(tVar.a()))), new l(tVar.c(), tVar.d()));
    }
}
