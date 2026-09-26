package com.google.zxing.pdf417.encoder;

/* JADX INFO: loaded from: classes10.dex */
final class b {
    private int currentLocation = 0;
    private final byte[] row;

    void a(boolean z6, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            int i12 = this.currentLocation;
            this.currentLocation = i12 + 1;
            c(i12, z6);
        }
    }

    private void c(int i10, boolean z6) {
        this.row[i10] = z6 ? (byte) 1 : (byte) 0;
    }

    byte[] b(int i10) {
        int length = this.row.length * i10;
        byte[] bArr = new byte[length];
        for (int i11 = 0; i11 < length; i11++) {
            bArr[i11] = this.row[i11 / i10];
        }
        return bArr;
    }

    b(int i10) {
        this.row = new byte[i10];
    }
}
