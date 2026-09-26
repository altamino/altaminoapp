package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes7.dex */
class h2 {
    static final j2 EMPTY_SEQUENCE = new j2();
    static final l2 EMPTY_SET = new l2();

    static j2 a(g gVar) {
        return gVar.f() < 1 ? EMPTY_SEQUENCE : new j2(gVar);
    }

    static l2 b(g gVar) {
        return gVar.f() < 1 ? EMPTY_SET : new l2(gVar);
    }
}
