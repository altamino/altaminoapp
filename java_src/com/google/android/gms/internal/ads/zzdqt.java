package com.google.android.gms.internal.ads;

import java.io.IOException;

/* loaded from: classes2.dex */
abstract class zzdqt<T, B> {
    zzdqt() {
    }

    abstract void zza(B b, int i, long j);

    abstract void zza(B b, int i, zzdmr zzdmrVar);

    abstract void zza(B b, int i, T t);

    abstract void zza(T t, zzdro zzdroVar) throws IOException;

    abstract boolean zza(zzdqa zzdqaVar);

    abstract void zzaa(Object obj);

    abstract T zzah(B b);

    abstract int zzak(T t);

    abstract T zzao(Object obj);

    abstract B zzap(Object obj);

    abstract int zzaq(T t);

    abstract B zzazy();

    abstract void zzb(B b, int i, long j);

    abstract void zzc(B b, int i, int i2);

    abstract void zzc(T t, zzdro zzdroVar) throws IOException;

    abstract void zzf(Object obj, T t);

    abstract void zzg(Object obj, B b);

    abstract T zzh(T t, T t2);

    final boolean zza(B b, zzdqa zzdqaVar) throws IOException {
        int tag = zzdqaVar.getTag();
        int i = tag >>> 3;
        int i2 = tag & 7;
        if (i2 == 0) {
            zza((zzdqt<T, B>) b, i, zzdqaVar.zzavw());
            return true;
        }
        if (i2 == 1) {
            zzb(b, i, zzdqaVar.zzavy());
            return true;
        }
        if (i2 == 2) {
            zza((zzdqt<T, B>) b, i, zzdqaVar.zzawc());
            return true;
        }
        if (i2 != 3) {
            if (i2 == 4) {
                return false;
            }
            if (i2 != 5) {
                throw zzdok.zzayi();
            }
            zzc(b, i, zzdqaVar.zzavz());
            return true;
        }
        B bZzazy = zzazy();
        int i3 = 4 | (i << 3);
        while (zzdqaVar.zzaws() != Integer.MAX_VALUE && zza((zzdqt<T, B>) bZzazy, zzdqaVar)) {
        }
        if (i3 != zzdqaVar.getTag()) {
            throw zzdok.zzayh();
        }
        zza((zzdqt<T, B>) b, i, (int) zzah(bZzazy));
        return true;
    }
}
