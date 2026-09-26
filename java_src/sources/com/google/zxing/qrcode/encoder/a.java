package com.google.zxing.qrcode.encoder;

/* JADX INFO: loaded from: classes6.dex */
final class a {
    private final byte[] dataBytes;
    private final byte[] errorCorrectionBytes;

    public byte[] a() {
        return this.dataBytes;
    }

    public byte[] b() {
        return this.errorCorrectionBytes;
    }

    a(byte[] bArr, byte[] bArr2) {
        this.dataBytes = bArr;
        this.errorCorrectionBytes = bArr2;
    }
}
