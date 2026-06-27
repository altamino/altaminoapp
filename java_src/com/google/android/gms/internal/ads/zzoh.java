package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
final class zzoh {
    private final zzst zzbac = new zzst(8);
    private int zzbch;

    public final boolean zza(zzno zznoVar) throws InterruptedException, IOException {
        long length = zznoVar.getLength();
        long j = 1024;
        if (length != -1 && length <= 1024) {
            j = length;
        }
        int i = (int) j;
        zznoVar.zzc(this.zzbac.data, 0, 4);
        long jZzge = this.zzbac.zzge();
        this.zzbch = 4;
        while (jZzge != 440786851) {
            int i2 = this.zzbch + 1;
            this.zzbch = i2;
            if (i2 == i) {
                return false;
            }
            zznoVar.zzc(this.zzbac.data, 0, 1);
            jZzge = ((jZzge << 8) & (-256)) | (this.zzbac.data[0] & 255);
        }
        long jZzc = zzc(zznoVar);
        long j2 = this.zzbch;
        if (jZzc != Long.MIN_VALUE && (length == -1 || j2 + jZzc < length)) {
            while (true) {
                int i3 = this.zzbch;
                long j3 = j2 + jZzc;
                if (i3 < j3) {
                    if (zzc(zznoVar) == Long.MIN_VALUE) {
                        return false;
                    }
                    long jZzc2 = zzc(zznoVar);
                    if (jZzc2 < 0 || jZzc2 > 2147483647L) {
                        break;
                    }
                    if (jZzc2 != 0) {
                        zznoVar.zzar((int) jZzc2);
                        this.zzbch = (int) (this.zzbch + jZzc2);
                    }
                } else if (i3 == j3) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    private final long zzc(zzno zznoVar) throws InterruptedException, IOException {
        int i = 0;
        zznoVar.zzc(this.zzbac.data, 0, 1);
        int i2 = this.zzbac.data[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        zznoVar.zzc(this.zzbac.data, 1, i4);
        while (i < i4) {
            i++;
            i5 = (this.zzbac.data[i] & 255) + (i5 << 8);
        }
        this.zzbch += i4 + 1;
        return i5;
    }
}
