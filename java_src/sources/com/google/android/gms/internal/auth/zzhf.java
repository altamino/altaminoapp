package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
final class zzhf extends zzhh {
    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zzc(Object obj, long j6, boolean z6) {
        if (zzhi.zza) {
            zzhi.zzi(obj, j6, z6);
        } else {
            zzhi.zzj(obj, j6, z6);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final boolean zzf(Object obj, long j6) {
        return zzhi.zza ? zzhi.zzq(obj, j6) : zzhi.zzr(obj, j6);
    }

    zzhf(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final double zza(Object obj, long j6) {
        return Double.longBitsToDouble(zzj(obj, j6));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final float zzb(Object obj, long j6) {
        return Float.intBitsToFloat(zzi(obj, j6));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zzd(Object obj, long j6, double d) {
        zzn(obj, j6, Double.doubleToLongBits(d));
    }

    @Override // com.google.android.gms.internal.auth.zzhh
    public final void zze(Object obj, long j6, float f) {
        zzm(obj, j6, Float.floatToIntBits(f));
    }
}
