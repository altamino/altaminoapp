package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzcuz;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzctz<S extends zzcuz> implements zzcva<S> {
    private final ScheduledExecutorService zzfkf;
    private final zzcva<S> zzggw;
    private final long zzgho;

    public zzctz(zzcva<S> zzcvaVar, long j, ScheduledExecutorService scheduledExecutorService) {
        this.zzggw = zzcvaVar;
        this.zzgho = j;
        this.zzfkf = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<S> zzalm() {
        zzbbh<S> zzbbhVarZzalm = this.zzggw.zzalm();
        long j = this.zzgho;
        if (j > 0) {
            zzbbhVarZzalm = zzbar.zza(zzbbhVarZzalm, j, TimeUnit.MILLISECONDS, this.zzfkf);
        }
        return zzbar.zza(zzbbhVarZzalm, Throwable.class, zzcua.zzbqz, zzbbm.zzeaf);
    }
}
