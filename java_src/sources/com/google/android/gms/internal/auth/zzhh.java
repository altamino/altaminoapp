package com.google.android.gms.internal.auth;

import java.lang.reflect.Field;
import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes9.dex */
abstract class zzhh {
    final Unsafe zza;

    zzhh(Unsafe unsafe) {
        this.zza = unsafe;
    }

    public abstract double zza(Object obj, long j6);

    public abstract float zzb(Object obj, long j6);

    public abstract void zzc(Object obj, long j6, boolean z6);

    public abstract void zzd(Object obj, long j6, double d);

    public abstract void zze(Object obj, long j6, float f);

    public abstract boolean zzf(Object obj, long j6);

    public final int zzg(Class cls) {
        return this.zza.arrayBaseOffset(cls);
    }

    public final int zzh(Class cls) {
        return this.zza.arrayIndexScale(cls);
    }

    public final int zzi(Object obj, long j6) {
        return this.zza.getInt(obj, j6);
    }

    public final long zzj(Object obj, long j6) {
        return this.zza.getLong(obj, j6);
    }

    public final long zzk(Field field) {
        return this.zza.objectFieldOffset(field);
    }

    public final Object zzl(Object obj, long j6) {
        return this.zza.getObject(obj, j6);
    }

    public final void zzm(Object obj, long j6, int i10) {
        this.zza.putInt(obj, j6, i10);
    }

    public final void zzn(Object obj, long j6, long j10) {
        this.zza.putLong(obj, j6, j10);
    }

    public final void zzo(Object obj, long j6, Object obj2) {
        this.zza.putObject(obj, j6, obj2);
    }
}
