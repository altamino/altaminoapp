package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
class i {
    static final short D_INTR = -31869;
    static final short D_LEAF = -32126;

    public static l a(p pVar, e eVar, int i10, byte[] bArr, byte[] bArr2) throws IllegalArgumentException {
        if (bArr2 != null && bArr2.length >= pVar.d()) {
            return new l(pVar, eVar, i10, bArr, 1 << pVar.c(), bArr2);
        }
        throw new IllegalArgumentException("root seed is less than " + pVar.d());
    }

    public static n b(j jVar) {
        return new n(jVar.h().d(), q.c(jVar.h(), jVar.i(), jVar.f()), jVar.j(), jVar.g());
    }

    public static n c(l lVar, byte[] bArr) {
        j jVarD = lVar.d();
        jVarD.update(bArr, 0, bArr.length);
        return b(jVarD);
    }
}
