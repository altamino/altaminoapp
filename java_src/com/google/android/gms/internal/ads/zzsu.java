package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzsu {
    private byte[] data;
    private int zzbnl;
    private int zzbnm = 0;
    private int zzbnn;

    public zzsu(byte[] bArr, int i, int i2) {
        this.data = bArr;
        this.zzbnl = i;
        this.zzbnn = i2;
        zzkg();
    }

    public final void zzbq(int i) {
        int i2 = this.zzbnl;
        this.zzbnl = (i / 8) + i2;
        this.zzbnm += i % 8;
        int i3 = this.zzbnm;
        if (i3 > 7) {
            this.zzbnl++;
            this.zzbnm = i3 - 8;
        }
        while (true) {
            i2++;
            if (i2 <= this.zzbnl) {
                if (zzbr(i2)) {
                    this.zzbnl++;
                    i2 += 2;
                }
            } else {
                zzkg();
                return;
            }
        }
    }

    public final boolean zzkc() {
        return zzbn(1) == 1;
    }

    public final int zzbn(int i) {
        int i2;
        int i3;
        if (i == 0) {
            return 0;
        }
        int i4 = i / 8;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            int i7 = zzbr(this.zzbnl + 1) ? this.zzbnl + 2 : this.zzbnl + 1;
            int i8 = this.zzbnm;
            if (i8 != 0) {
                byte[] bArr = this.data;
                i3 = ((bArr[i7] & 255) >>> (8 - i8)) | ((bArr[this.zzbnl] & 255) << i8);
            } else {
                i3 = this.data[this.zzbnl];
            }
            i -= 8;
            i5 |= (255 & i3) << i;
            this.zzbnl = i7;
        }
        if (i > 0) {
            int i9 = this.zzbnm + i;
            byte b = (byte) (255 >> (8 - i));
            int i10 = zzbr(this.zzbnl + 1) ? this.zzbnl + 2 : this.zzbnl + 1;
            if (i9 > 8) {
                byte[] bArr2 = this.data;
                i2 = (b & (((255 & bArr2[i10]) >> (16 - i9)) | ((bArr2[this.zzbnl] & 255) << (i9 - 8)))) | i5;
                this.zzbnl = i10;
            } else {
                i2 = (b & ((255 & this.data[this.zzbnl]) >> (8 - i9))) | i5;
                if (i9 == 8) {
                    this.zzbnl = i10;
                }
            }
            i5 = i2;
            this.zzbnm = i9 % 8;
        }
        zzkg();
        return i5;
    }

    public final int zzkd() {
        return zzkf();
    }

    public final int zzke() {
        int iZzkf = zzkf();
        return (iZzkf % 2 == 0 ? -1 : 1) * ((iZzkf + 1) / 2);
    }

    private final int zzkf() {
        int i = 0;
        while (!zzkc()) {
            i++;
        }
        return ((1 << i) - 1) + (i > 0 ? zzbn(i) : 0);
    }

    private final boolean zzbr(int i) {
        if (2 > i || i >= this.zzbnn) {
            return false;
        }
        byte[] bArr = this.data;
        return bArr[i] == 3 && bArr[i + (-2)] == 0 && bArr[i - 1] == 0;
    }

    private final void zzkg() {
        int i;
        int i2;
        int i3 = this.zzbnl;
        zzsk.checkState(i3 >= 0 && (i = this.zzbnm) >= 0 && i < 8 && (i3 < (i2 = this.zzbnn) || (i3 == i2 && i == 0)));
    }
}
