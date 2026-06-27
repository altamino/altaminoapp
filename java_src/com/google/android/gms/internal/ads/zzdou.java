package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes2.dex */
abstract class zzdou {
    private static final zzdou zzhja;
    private static final zzdou zzhjb;

    private zzdou() {
    }

    abstract <L> List<L> zza(Object obj, long j);

    abstract <L> void zza(Object obj, Object obj2, long j);

    abstract void zzb(Object obj, long j);

    static zzdou zzayq() {
        return zzhja;
    }

    static zzdou zzayr() {
        return zzhjb;
    }

    static {
        zzdov zzdovVar = null;
        zzhja = new zzdow();
        zzhjb = new zzdox();
    }
}
