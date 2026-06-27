package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class zznx {
    public final int zzazp = 1;
    public final byte[] zzazq;

    public zznx(int i, byte[] bArr) {
        this.zzazq = bArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zznx.class == obj.getClass()) {
            zznx zznxVar = (zznx) obj;
            if (this.zzazp == zznxVar.zzazp && Arrays.equals(this.zzazq, zznxVar.zzazq)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zzazp * 31) + Arrays.hashCode(this.zzazq);
    }
}
