package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
final class zzdox extends zzdou {
    private zzdox() {
        super();
    }

    @Override // com.google.android.gms.internal.ads.zzdou
    final <L> List<L> zza(Object obj, long j) {
        zzdoj zzdojVarZzd = zzd(obj, j);
        if (zzdojVarZzd.zzavi()) {
            return zzdojVarZzd;
        }
        int size = zzdojVarZzd.size();
        zzdoj zzdojVarZzfl = zzdojVarZzd.zzfl(size == 0 ? 10 : size << 1);
        zzdqz.zza(obj, j, zzdojVarZzfl);
        return zzdojVarZzfl;
    }

    @Override // com.google.android.gms.internal.ads.zzdou
    final void zzb(Object obj, long j) {
        zzd(obj, j).zzavj();
    }

    @Override // com.google.android.gms.internal.ads.zzdou
    final <E> void zza(Object obj, Object obj2, long j) {
        zzdoj zzdojVarZzd = zzd(obj, j);
        zzdoj zzdojVarZzd2 = zzd(obj2, j);
        int size = zzdojVarZzd.size();
        int size2 = zzdojVarZzd2.size();
        if (size > 0 && size2 > 0) {
            if (!zzdojVarZzd.zzavi()) {
                zzdojVarZzd = zzdojVarZzd.zzfl(size2 + size);
            }
            zzdojVarZzd.addAll(zzdojVarZzd2);
        }
        if (size > 0) {
            zzdojVarZzd2 = zzdojVarZzd;
        }
        zzdqz.zza(obj, j, zzdojVarZzd2);
    }

    private static <E> zzdoj<E> zzd(Object obj, long j) {
        return (zzdoj) zzdqz.zzp(obj, j);
    }
}
