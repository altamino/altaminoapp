package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes2.dex */
final class zzfu extends zzfr {
    private zzfu() {
        super();
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final <L> List<L> zza(Object obj, long j) {
        zzfg zzfgVarZzd = zzd(obj, j);
        if (zzfgVarZzd.zzjy()) {
            return zzfgVarZzd;
        }
        int size = zzfgVarZzd.size();
        zzfg zzfgVarZzq = zzfgVarZzd.zzq(size == 0 ? 10 : size << 1);
        zzhw.zza(obj, j, zzfgVarZzq);
        return zzfgVarZzq;
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final void zzb(Object obj, long j) {
        zzd(obj, j).zzjz();
    }

    @Override // com.google.android.gms.internal.measurement.zzfr
    final <E> void zza(Object obj, Object obj2, long j) {
        zzfg zzfgVarZzd = zzd(obj, j);
        zzfg zzfgVarZzd2 = zzd(obj2, j);
        int size = zzfgVarZzd.size();
        int size2 = zzfgVarZzd2.size();
        if (size > 0 && size2 > 0) {
            if (!zzfgVarZzd.zzjy()) {
                zzfgVarZzd = zzfgVarZzd.zzq(size2 + size);
            }
            zzfgVarZzd.addAll(zzfgVarZzd2);
        }
        if (size > 0) {
            zzfgVarZzd2 = zzfgVarZzd;
        }
        zzhw.zza(obj, j, zzfgVarZzd2);
    }

    private static <E> zzfg<E> zzd(Object obj, long j) {
        return (zzfg) zzhw.zzp(obj, j);
    }
}
