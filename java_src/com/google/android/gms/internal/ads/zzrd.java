package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public class zzrd implements zzrm {
    private final int length;
    private int zzafx;
    private final zzlh[] zzbju;
    private final zzra zzbky;
    private final int[] zzbkz;
    private final long[] zzbla;

    public zzrd(zzra zzraVar, int... iArr) {
        int i = 0;
        zzsk.checkState(iArr.length > 0);
        this.zzbky = (zzra) zzsk.checkNotNull(zzraVar);
        this.length = iArr.length;
        this.zzbju = new zzlh[this.length];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.zzbju[i2] = zzraVar.zzbf(iArr[i2]);
        }
        Arrays.sort(this.zzbju, new zzrf());
        this.zzbkz = new int[this.length];
        while (true) {
            int i3 = this.length;
            if (i >= i3) {
                this.zzbla = new long[i3];
                return;
            } else {
                this.zzbkz[i] = zzraVar.zzh(this.zzbju[i]);
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final zzra zzjr() {
        return this.zzbky;
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final int length() {
        return this.zzbkz.length;
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final zzlh zzbf(int i) {
        return this.zzbju[i];
    }

    @Override // com.google.android.gms.internal.ads.zzrm
    public final int zzbh(int i) {
        return this.zzbkz[0];
    }

    public int hashCode() {
        if (this.zzafx == 0) {
            this.zzafx = (System.identityHashCode(this.zzbky) * 31) + Arrays.hashCode(this.zzbkz);
        }
        return this.zzafx;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzrd zzrdVar = (zzrd) obj;
            if (this.zzbky == zzrdVar.zzbky && Arrays.equals(this.zzbkz, zzrdVar.zzbkz)) {
                return true;
            }
        }
        return false;
    }
}
