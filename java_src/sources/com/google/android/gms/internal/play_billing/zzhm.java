package com.google.android.gms.internal.play_billing;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes10.dex */
abstract class zzhm {
    final Unsafe zza;

    zzhm(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract double zza(Object obj, long j6);

    public abstract float zzb(Object obj, long j6);

    public abstract void zzc(Object obj, long j6, boolean z6);

    public abstract void zzd(Object obj, long j6, byte b7);

    public abstract void zze(Object obj, long j6, double d);

    public abstract void zzf(Object obj, long j6, float f);

    public abstract boolean zzg(Object obj, long j6);
}
