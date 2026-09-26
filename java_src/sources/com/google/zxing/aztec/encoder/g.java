package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes7.dex */
abstract class g {
    static final g EMPTY = new e(null, 0, 0);
    private final g previous;

    abstract void c(g5.a aVar, byte[] bArr);

    final g d() {
        return this.previous;
    }

    final g a(int i10, int i11) {
        return new e(this, i10, i11);
    }

    final g b(int i10, int i11) {
        return new b(this, i10, i11);
    }

    g(g gVar) {
        this.previous = gVar;
    }
}
