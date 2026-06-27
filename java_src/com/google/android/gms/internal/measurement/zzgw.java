package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzez;

/* loaded from: classes2.dex */
final class zzgw implements zzgf {
    private final int flags;
    private final String info;
    private final Object[] zzajb;
    private final zzgh zzaje;

    zzgw(zzgh zzghVar, String str, Object[] objArr) {
        this.zzaje = zzghVar;
        this.info = str;
        this.zzajb = objArr;
        char cCharAt = str.charAt(0);
        if (cCharAt < 55296) {
            this.flags = cCharAt;
            return;
        }
        int i = cCharAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = str.charAt(i3);
            if (cCharAt2 < 55296) {
                this.flags = i | (cCharAt2 << i2);
                return;
            } else {
                i |= (cCharAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            }
        }
    }

    final String zzob() {
        return this.info;
    }

    final Object[] zzoc() {
        return this.zzajb;
    }

    @Override // com.google.android.gms.internal.measurement.zzgf
    public final zzgh zznu() {
        return this.zzaje;
    }

    @Override // com.google.android.gms.internal.measurement.zzgf
    public final int zzns() {
        return (this.flags & 1) == 1 ? zzez.zze.zzahc : zzez.zze.zzahd;
    }

    @Override // com.google.android.gms.internal.measurement.zzgf
    public final boolean zznt() {
        return (this.flags & 2) == 2;
    }
}
