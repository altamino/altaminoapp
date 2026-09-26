package com.google.android.exoplayer2.extractor.ts;

import java.util.Arrays;

/* JADX INFO: loaded from: classes7.dex */
final class u {
    private boolean isCompleted;
    private boolean isFilling;
    public byte[] nalData;
    public int nalLength;
    private final int targetType;

    public boolean b(int i10) {
        if (!this.isFilling) {
            return false;
        }
        this.nalLength -= i10;
        this.isFilling = false;
        this.isCompleted = true;
        return true;
    }

    public boolean c() {
        return this.isCompleted;
    }

    public void d() {
        this.isFilling = false;
        this.isCompleted = false;
    }

    public void a(byte[] bArr, int i10, int i11) {
        if (this.isFilling) {
            int i12 = i11 - i10;
            byte[] bArr2 = this.nalData;
            int length = bArr2.length;
            int i13 = this.nalLength;
            if (length < i13 + i12) {
                this.nalData = Arrays.copyOf(bArr2, (i13 + i12) * 2);
            }
            System.arraycopy(bArr, i10, this.nalData, this.nalLength, i12);
            this.nalLength += i12;
        }
    }

    public void e(int i10) {
        com.google.android.exoplayer2.util.a.g(!this.isFilling);
        boolean z6 = i10 == this.targetType;
        this.isFilling = z6;
        if (z6) {
            this.nalLength = 3;
            this.isCompleted = false;
        }
    }

    public u(int i10, int i11) {
        this.targetType = i10;
        byte[] bArr = new byte[i11 + 3];
        this.nalData = bArr;
        bArr[2] = 1;
    }
}
