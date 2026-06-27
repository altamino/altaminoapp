package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zzro {
    public final int length;
    private int zzafx;
    private final zzrm[] zzblw;

    public zzro(zzrm... zzrmVarArr) {
        this.zzblw = zzrmVarArr;
        this.length = zzrmVarArr.length;
    }

    public final zzrm zzbi(int i) {
        return this.zzblw[i];
    }

    public final zzrm[] zzjs() {
        return (zzrm[]) this.zzblw.clone();
    }

    public final int hashCode() {
        if (this.zzafx == 0) {
            this.zzafx = Arrays.hashCode(this.zzblw) + 527;
        }
        return this.zzafx;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || zzro.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.zzblw, ((zzro) obj).zzblw);
    }
}
