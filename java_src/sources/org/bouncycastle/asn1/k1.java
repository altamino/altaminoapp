package org.bouncycastle.asn1;

/* JADX INFO: loaded from: classes10.dex */
class k1 {
    static final v1 EMPTY_SEQUENCE = new v1();
    static final w1 EMPTY_SET = new w1();

    static v1 a(g gVar) {
        return gVar.f() < 1 ? EMPTY_SEQUENCE : new v1(gVar);
    }
}
