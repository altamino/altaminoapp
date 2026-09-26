package org.bouncycastle.pqc.crypto.lms;

/* JADX INFO: loaded from: classes5.dex */
class r {
    static void a(byte[] bArr, x8.c cVar) {
        cVar.update(bArr, 0, bArr.length);
    }

    static void b(short s, x8.c cVar) {
        cVar.c((byte) (s >>> 8));
        cVar.c((byte) s);
    }

    static void c(int i10, x8.c cVar) {
        cVar.c((byte) (i10 >>> 24));
        cVar.c((byte) (i10 >>> 16));
        cVar.c((byte) (i10 >>> 8));
        cVar.c((byte) i10);
    }
}
