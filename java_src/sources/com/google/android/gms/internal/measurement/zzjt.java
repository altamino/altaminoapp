package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
final class zzjt extends zzjs {
    @Override // com.google.android.gms.internal.measurement.zzjs
    final <L> List<L> zza(Object obj, long j6) {
        zzjf zzjfVarZzc = zzc(obj, j6);
        if (zzjfVarZzc.zzc()) {
            return zzjfVarZzc;
        }
        int size = zzjfVarZzc.size();
        zzjf zzjfVarZza = zzjfVarZzc.zza(size == 0 ? 10 : size << 1);
        zzmg.zza(obj, j6, zzjfVarZza);
        return zzjfVarZza;
    }

    private zzjt() {
        super();
    }

    private static <E> zzjf<E> zzc(Object obj, long j6) {
        return (zzjf) zzmg.zze(obj, j6);
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    final void zzb(Object obj, long j6) {
        zzc(obj, j6).i_();
    }

    @Override // com.google.android.gms.internal.measurement.zzjs
    final <E> void zza(Object obj, Object obj2, long j6) {
        zzjf zzjfVarZzc = zzc(obj, j6);
        zzjf zzjfVarZzc2 = zzc(obj2, j6);
        int size = zzjfVarZzc.size();
        int size2 = zzjfVarZzc2.size();
        if (size > 0 && size2 > 0) {
            if (!zzjfVarZzc.zzc()) {
                zzjfVarZzc = zzjfVarZzc.zza(size2 + size);
            }
            zzjfVarZzc.addAll(zzjfVarZzc2);
        }
        if (size > 0) {
            zzjfVarZzc2 = zzjfVarZzc;
        }
        zzmg.zza(obj, j6, zzjfVarZzc2);
    }
}
