package com.google.android.gms.internal.measurement;

import java.util.List;

/* loaded from: classes2.dex */
abstract class zzfr {
    private static final zzfr zzaik;
    private static final zzfr zzail;

    private zzfr() {
    }

    abstract <L> List<L> zza(Object obj, long j);

    abstract <L> void zza(Object obj, Object obj2, long j);

    abstract void zzb(Object obj, long j);

    static zzfr zzni() {
        return zzaik;
    }

    static zzfr zznj() {
        return zzail;
    }

    static {
        zzfs zzfsVar = null;
        zzaik = new zzft();
        zzail = new zzfu();
    }
}
