package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes9.dex */
class u0 {
    static final x0 EMPTY_SEQUENCE = new x0();
    static final z0 EMPTY_SET = new z0();

    static x0 a(g gVar) {
        return gVar.f() < 1 ? EMPTY_SEQUENCE : new x0(gVar);
    }
}
