package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzrb {
    public static final zzrb zzbkw = new zzrb(new zzra[0]);
    public final int length;
    private int zzafx;
    private final zzra[] zzbkx;

    public zzrb(zzra... zzraVarArr) {
        this.zzbkx = zzraVarArr;
        this.length = zzraVarArr.length;
    }

    public final zzra zzbg(int i) {
        return this.zzbkx[i];
    }

    public final int zza(zzra zzraVar) {
        for (int i = 0; i < this.length; i++) {
            if (this.zzbkx[i] == zzraVar) {
                return i;
            }
        }
        return -1;
    }

    public final int hashCode() {
        if (this.zzafx == 0) {
            this.zzafx = Arrays.hashCode(this.zzbkx);
        }
        return this.zzafx;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzrb.class == obj.getClass()) {
            zzrb zzrbVar = (zzrb) obj;
            if (this.length == zzrbVar.length && Arrays.equals(this.zzbkx, zzrbVar.zzbkx)) {
                return true;
            }
        }
        return false;
    }
}
