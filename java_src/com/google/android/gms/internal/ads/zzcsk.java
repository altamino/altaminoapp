package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import com.google.android.gms.internal.ads.zzcuz;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public final class zzcsk<S extends zzcuz> implements zzcva<S> {
    private final Clock zzbsa;
    private final AtomicReference<zzcsl<S>> zzggv = new AtomicReference<>();
    private final zzcva<S> zzggw;
    private final long zzggx;

    public zzcsk(zzcva<S> zzcvaVar, long j, Clock clock) {
        this.zzbsa = clock;
        this.zzggw = zzcvaVar;
        this.zzggx = j;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<S> zzalm() {
        zzcsl<S> zzcslVar = this.zzggv.get();
        if (zzcslVar == null || zzcslVar.hasExpired()) {
            zzcslVar = new zzcsl<>(this.zzggw.zzalm(), this.zzggx, this.zzbsa);
            this.zzggv.set(zzcslVar);
        }
        return zzcslVar.zzggy;
    }
}
