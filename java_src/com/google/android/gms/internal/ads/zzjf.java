package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzjf {
    private static final int[] zzann = {128, 64, 32, 16, 8, 4, 2, 1};
    private int length;
    private int state;
    private final byte[] zzanf = new byte[8];

    public final void reset() {
        this.state = 0;
        this.length = 0;
    }

    public final long zza(zzie zzieVar, boolean z, boolean z2) throws InterruptedException, IOException {
        if (this.state == 0) {
            if (!zzieVar.zza(this.zzanf, 0, 1, z)) {
                return -1L;
            }
            int i = this.zzanf[0] & 255;
            this.length = -1;
            int i2 = 0;
            while (true) {
                int[] iArr = zzann;
                if (i2 >= iArr.length) {
                    break;
                }
                if ((iArr[i2] & i) != 0) {
                    this.length = i2 + 1;
                    break;
                }
                i2++;
            }
            if (this.length == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.state = 1;
        }
        zzieVar.readFully(this.zzanf, 1, this.length - 1);
        if (z2) {
            byte[] bArr = this.zzanf;
            bArr[0] = (byte) (bArr[0] & (zzann[this.length - 1] ^ (-1)));
        }
        long j = 0;
        for (int i3 = 0; i3 < this.length; i3++) {
            j = (j << 8) | (this.zzanf[i3] & 255);
        }
        this.state = 0;
        return j;
    }

    public final int zzfw() {
        return this.length;
    }
}
