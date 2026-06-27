package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes2.dex */
abstract class zzhq<T, B> {
    zzhq() {
    }

    abstract void zza(B b, int i, long j);

    abstract void zza(B b, int i, zzdp zzdpVar);

    abstract void zza(B b, int i, T t);

    abstract void zza(T t, zzil zzilVar) throws IOException;

    abstract boolean zza(zzgx zzgxVar);

    abstract void zzb(B b, int i, long j);

    abstract void zzc(B b, int i, int i2);

    abstract void zzc(T t, zzil zzilVar) throws IOException;

    abstract void zze(Object obj, T t);

    abstract void zzf(Object obj, B b);

    abstract T zzg(T t, T t2);

    abstract void zzi(Object obj);

    abstract B zzoq();

    abstract T zzp(B b);

    abstract int zzs(T t);

    abstract T zzw(Object obj);

    abstract B zzx(Object obj);

    abstract int zzy(T t);

    final boolean zza(B b, zzgx zzgxVar) throws IOException {
        int tag = zzgxVar.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            zza((zzhq<T, B>) b, i, zzgxVar.zzkl());
            return true;
        }
        if (i2 == 1) {
            zzb(b, i, zzgxVar.zzkn());
            return true;
        }
        if (i2 == 2) {
            zza((zzhq<T, B>) b, i, zzgxVar.zzkr());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzfh.zzmz();
            }
            zzc(b, i, zzgxVar.zzko());
            return true;
        }
        B bZzoq = zzoq();
        int i3 = 4 | (i << 3);
        while (zzgxVar.zzlh() != Integer.MAX_VALUE && zza((zzhq<T, B>) bZzoq, zzgxVar)) {
        }
        if (i3 != zzgxVar.getTag()) {
            throw zzfh.zzmy();
        }
        zza((zzhq<T, B>) b, i, (int) zzp(bZzoq));
        return true;
    }
}
