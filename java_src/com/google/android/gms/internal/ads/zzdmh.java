package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdmh {
    private final byte[] zzhcc = new byte[256];
    private int zzhcd;
    private int zzhce;

    public zzdmh(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.zzhcc[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.zzhcc;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & 255;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.zzhcd = 0;
        this.zzhce = 0;
    }

    public final void zzy(byte[] bArr) {
        int i = this.zzhcd;
        int i2 = this.zzhce;
        for (int i3 = 0; i3 < bArr.length; i3++) {
            i = (i + 1) & 255;
            byte[] bArr2 = this.zzhcc;
            i2 = (i2 + bArr2[i]) & 255;
            byte b = bArr2[i];
            bArr2[i] = bArr2[i2];
            bArr2[i2] = b;
            bArr[i3] = (byte) (bArr2[(bArr2[i] + bArr2[i2]) & 255] ^ bArr[i3]);
        }
        this.zzhcd = i;
        this.zzhce = i2;
    }
}
