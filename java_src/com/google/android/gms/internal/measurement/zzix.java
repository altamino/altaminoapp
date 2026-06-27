package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* loaded from: classes2.dex */
final class zzix {
    final int tag;
    final byte[] zzacg;

    zzix(int i, byte[] bArr) {
        this.tag = i;
        this.zzacg = bArr;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzix)) {
            return false;
        }
        zzix zzixVar = (zzix) obj;
        return this.tag == zzixVar.tag && Arrays.equals(this.zzacg, zzixVar.zzacg);
    }

    public final int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzacg);
    }
}
