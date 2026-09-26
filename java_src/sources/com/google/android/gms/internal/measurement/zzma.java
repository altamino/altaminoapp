package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
abstract class zzma<T, B> {
    zzma() {
    }

    abstract int zza(T t5);

    abstract B zza();

    abstract T zza(T t5, T t10);

    abstract void zza(B b7, int i10, int i11);

    abstract void zza(B b7, int i10, long j6);

    abstract void zza(B b7, int i10, zzhm zzhmVar);

    abstract void zza(B b7, int i10, T t5);

    abstract void zza(T t5, zzmw zzmwVar) throws IOException;

    abstract boolean zza(zzlc zzlcVar);

    final boolean zza(B b7, zzlc zzlcVar) throws IOException {
        int iZzd = zzlcVar.zzd();
        int i10 = iZzd >>> 3;
        int i11 = iZzd & 7;
        if (i11 == 0) {
            zzb(b7, i10, zzlcVar.zzl());
            return true;
        }
        if (i11 == 1) {
            zza(b7, i10, zzlcVar.zzk());
            return true;
        }
        if (i11 == 2) {
            zza((Object) b7, i10, zzlcVar.zzp());
            return true;
        }
        if (i11 != 3) {
            if (i11 == 4) {
                return false;
            }
            if (i11 != 5) {
                throw zzji.zza();
            }
            zza((Object) b7, i10, zzlcVar.zzf());
            return true;
        }
        B bZza = zza();
        int i12 = 4 | (i10 << 3);
        while (zzlcVar.zzc() != Integer.MAX_VALUE && zza((Object) bZza, zzlcVar)) {
        }
        if (i12 != zzlcVar.zzd()) {
            throw zzji.zzb();
        }
        zza(b7, i10, zze(bZza));
        return true;
    }

    abstract int zzb(T t5);

    abstract void zzb(B b7, int i10, long j6);

    abstract void zzb(T t5, zzmw zzmwVar) throws IOException;

    abstract void zzb(Object obj, B b7);

    abstract B zzc(Object obj);

    abstract void zzc(Object obj, T t5);

    abstract T zzd(Object obj);

    abstract T zze(B b7);

    abstract void zzf(Object obj);
}
