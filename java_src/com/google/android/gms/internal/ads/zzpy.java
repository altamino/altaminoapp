package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzpy implements zzqx {
    private final zzqx[] zzbhz;

    public zzpy(zzqx[] zzqxVarArr) {
        this.zzbhz = zzqxVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzqx
    public final long zzix() {
        long jMin = Long.MAX_VALUE;
        for (zzqx zzqxVar : this.zzbhz) {
            long jZzix = zzqxVar.zzix();
            if (jZzix != Long.MIN_VALUE) {
                jMin = Math.min(jMin, jZzix);
            }
        }
        if (jMin == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return jMin;
    }

    @Override // com.google.android.gms.internal.ads.zzqx
    public final boolean zzel(long j) {
        boolean zZzel;
        boolean z = false;
        do {
            long jZzix = zzix();
            if (jZzix == Long.MIN_VALUE) {
                break;
            }
            zZzel = false;
            for (zzqx zzqxVar : this.zzbhz) {
                if (zzqxVar.zzix() == jZzix) {
                    zZzel |= zzqxVar.zzel(j);
                }
            }
            z |= zZzel;
        } while (zZzel);
        return z;
    }
}
