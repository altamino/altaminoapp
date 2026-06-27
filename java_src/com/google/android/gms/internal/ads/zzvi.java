package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzvi {
    final long value;
    final int zzbvw;
    final String zzbwd;

    zzvi(long j, String str, int i) {
        this.value = j;
        this.zzbwd = str;
        this.zzbvw = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzvi)) {
            zzvi zzviVar = (zzvi) obj;
            if (zzviVar.value == this.value && zzviVar.zzbvw == this.zzbvw) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (int) this.value;
    }
}
