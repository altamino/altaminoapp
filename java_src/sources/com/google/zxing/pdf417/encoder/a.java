package com.google.zxing.pdf417.encoder;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes10.dex */
public final class a {
    private int currentRow;
    private final int height;
    private final b[] matrix;
    private final int width;

    void c() {
        this.currentRow++;
    }

    b a() {
        return this.matrix[this.currentRow];
    }

    public byte[][] b(int i10, int i11) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, this.height * i11, this.width * i10);
        int i12 = this.height * i11;
        for (int i13 = 0; i13 < i12; i13++) {
            bArr[(i12 - i13) - 1] = this.matrix[i13 / i11].b(i10);
        }
        return bArr;
    }

    a(int i10, int i11) {
        b[] bVarArr = new b[i10];
        this.matrix = bVarArr;
        int length = bVarArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            this.matrix[i12] = new b(((i11 + 4) * 17) + 1);
        }
        this.width = i11 * 17;
        this.height = i10;
        this.currentRow = -1;
    }
}
