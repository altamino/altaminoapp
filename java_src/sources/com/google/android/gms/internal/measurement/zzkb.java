package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* JADX INFO: loaded from: classes7.dex */
public final class zzkb<K, V> {
    static <K, V> int zza(zzke<K, V> zzkeVar, K k, V v5) {
        return zziq.zza(zzkeVar.zza, 1, k) + zziq.zza(zzkeVar.zzc, 2, v5);
    }

    static <K, V> void zza(zzig zzigVar, zzke<K, V> zzkeVar, K k, V v5) throws IOException {
        zziq.zza(zzigVar, zzkeVar.zza, 1, k);
        zziq.zza(zzigVar, zzkeVar.zzc, 2, v5);
    }
}
