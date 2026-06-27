package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzckv implements zzcjv<zzbnf> {
    private final ScheduledExecutorService zzfiw;
    private final zzbrm zzfkw;
    private final zzbbl zzfqw;
    private final zzboc zzgad;
    private final zzckb zzgae;

    public zzckv(zzboc zzbocVar, zzckb zzckbVar, zzbrm zzbrmVar, ScheduledExecutorService scheduledExecutorService, zzbbl zzbblVar) {
        this.zzgad = zzbocVar;
        this.zzgae = zzckbVar;
        this.zzfkw = zzbrmVar;
        this.zzfiw = scheduledExecutorService;
        this.zzfqw = zzbblVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final boolean zza(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        return zzcxuVar.zzgkx.zzfjp.zzamn() != null && this.zzgae.zza(zzcxuVar, zzcxmVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcjv
    public final zzbbh<zzbnf> zzb(final zzcxu zzcxuVar, final zzcxm zzcxmVar) {
        return this.zzfqw.submit(new Callable(this, zzcxuVar, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzckw
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzckv zzgaf;

            {
                this.zzgaf = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zzgaf.zzc(this.zzfra, this.zzfhm);
            }
        });
    }

    final /* synthetic */ zzbnf zzc(final zzcxu zzcxuVar, final zzcxm zzcxmVar) throws Exception {
        return this.zzgad.zza(new zzbpr(zzcxuVar, zzcxmVar, null), new zzbop(zzcxuVar.zzgkx.zzfjp.zzamn(), new Runnable(this, zzcxuVar, zzcxmVar) { // from class: com.google.android.gms.internal.ads.zzckx
            private final zzcxm zzfhm;
            private final zzcxu zzfra;
            private final zzckv zzgaf;

            {
                this.zzgaf = this;
                this.zzfra = zzcxuVar;
                this.zzfhm = zzcxmVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgaf.zzd(this.zzfra, this.zzfhm);
            }
        })).zzaeb();
    }

    final /* synthetic */ void zzd(zzcxu zzcxuVar, zzcxm zzcxmVar) {
        zzbar.zza(zzbar.zza(this.zzgae.zzb(zzcxuVar, zzcxmVar), zzcxmVar.zzgkn, TimeUnit.SECONDS, this.zzfiw), new zzcky(this), this.zzfqw);
    }
}
