package com.google.android.gms.internal.measurement;

import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
abstract class zzjs {
    private static final zzjs zza = new zzjr();
    private static final zzjs zzb = new zzjt();

    private zzjs() {
    }

    static zzjs zza() {
        return zza;
    }

    static zzjs zzb() {
        return zzb;
    }

    abstract <L> List<L> zza(Object obj, long j6);

    abstract <L> void zza(Object obj, Object obj2, long j6);

    abstract void zzb(Object obj, long j6);
}
