package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.nio.charset.Charset;
import java.security.MessageDigest;

@zzard
/* loaded from: classes2.dex */
public final class zzvj extends zzva {
    private MessageDigest zzbwc;
    private final int zzbwe;
    private final int zzbwf;

    public zzvj(int i) {
        int i2 = i / 8;
        this.zzbwe = i % 8 > 0 ? i2 + 1 : i2;
        this.zzbwf = i;
    }

    @Override // com.google.android.gms.internal.ads.zzva
    public final byte[] zzbl(String str) {
        synchronized (this.mLock) {
            this.zzbwc = zznf();
            if (this.zzbwc == null) {
                return new byte[0];
            }
            this.zzbwc.reset();
            this.zzbwc.update(str.getBytes(Charset.forName(C.UTF8_NAME)));
            byte[] bArrDigest = this.zzbwc.digest();
            byte[] bArr = new byte[bArrDigest.length > this.zzbwe ? this.zzbwe : bArrDigest.length];
            System.arraycopy(bArrDigest, 0, bArr, 0, bArr.length);
            if (this.zzbwf % 8 > 0) {
                long j = 0;
                for (int i = 0; i < bArr.length; i++) {
                    if (i > 0) {
                        j <<= 8;
                    }
                    j += bArr[i] & 255;
                }
                long j2 = j >>> (8 - (this.zzbwf % 8));
                for (int i2 = this.zzbwe - 1; i2 >= 0; i2--) {
                    bArr[i2] = (byte) (255 & j2);
                    j2 >>>= 8;
                }
            }
            return bArr;
        }
    }
}
