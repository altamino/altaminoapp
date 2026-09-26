package com.google.zxing.qrcode.encoder;

import java.lang.reflect.Array;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class b {
    private final byte[][] bytes;
    private final int height;
    private final int width;

    public byte[][] c() {
        return this.bytes;
    }

    public int d() {
        return this.height;
    }

    public int e() {
        return this.width;
    }

    public void a(byte b7) {
        for (byte[] bArr : this.bytes) {
            Arrays.fill(bArr, b7);
        }
    }

    public byte b(int i10, int i11) {
        return this.bytes[i11][i10];
    }

    public void f(int i10, int i11, int i12) {
        this.bytes[i11][i10] = (byte) i12;
    }

    public void g(int i10, int i11, boolean z6) {
        this.bytes[i11][i10] = z6 ? (byte) 1 : (byte) 0;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder((this.width * 2 * this.height) + 2);
        for (int i10 = 0; i10 < this.height; i10++) {
            byte[] bArr = this.bytes[i10];
            for (int i11 = 0; i11 < this.width; i11++) {
                byte b7 = bArr[i11];
                if (b7 == 0) {
                    sb.append(" 0");
                } else if (b7 != 1) {
                    sb.append("  ");
                } else {
                    sb.append(" 1");
                }
            }
            sb.append('\n');
        }
        return sb.toString();
    }

    public b(int i10, int i11) {
        this.bytes = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, i11, i10);
        this.width = i10;
        this.height = i11;
    }
}
