package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzcuz;

/* loaded from: classes2.dex */
final class zzcsl<S extends zzcuz> {
    private final Clock zzbsa;
    public final zzbbh<S> zzggy;
    private final long zzggz;

    public zzcsl(zzbbh<S> zzbbhVar, long j, Clock clock) {
        this.zzggy = zzbbhVar;
        this.zzbsa = clock;
        this.zzggz = clock.elapsedRealtime() + j;
    }

    public final boolean hasExpired() {
        return this.zzggz < this.zzbsa.elapsedRealtime();
    }
}
