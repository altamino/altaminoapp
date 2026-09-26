package com.google.zxing.aztec.encoder;

/* JADX INFO: loaded from: classes7.dex */
final class e extends g {
    private final short bitCount;
    private final short value;

    @Override // com.google.zxing.aztec.encoder.g
    void c(g5.a aVar, byte[] bArr) {
        aVar.d(this.value, this.bitCount);
    }

    public String toString() {
        short s = this.value;
        short s5 = this.bitCount;
        return "<" + Integer.toBinaryString((s & ((1 << s5) - 1)) | (1 << s5) | (1 << this.bitCount)).substring(1) + '>';
    }

    e(g gVar, int i10, int i11) {
        super(gVar);
        this.value = (short) i10;
        this.bitCount = (short) i11;
    }
}
