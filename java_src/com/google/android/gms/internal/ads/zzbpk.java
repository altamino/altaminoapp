package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzbpk {
    private volatile boolean zzarx = true;
    private final Executor zzffi;
    private final ScheduledExecutorService zzfiw;
    private final zzbbh<zzbph> zzfix;

    public zzbpk(Executor executor, ScheduledExecutorService scheduledExecutorService, zzbbh<zzbph> zzbbhVar) {
        this.zzffi = executor;
        this.zzfiw = scheduledExecutorService;
        this.zzfix = zzbbhVar;
    }

    public final void zza(zzban<zzbpc> zzbanVar) {
        zzbar.zza(this.zzfix, new zzbpo(this, zzbanVar), this.zzffi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zza(List<? extends zzbbh<? extends zzbpc>> list, final zzban<zzbpc> zzbanVar) {
        if (list == null || list.isEmpty()) {
            this.zzffi.execute(new Runnable(zzbanVar) { // from class: com.google.android.gms.internal.ads.zzbpl
                private final zzban zzdzh;

                {
                    this.zzdzh = zzbanVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdzh.zzb(new zzcgm(3));
                }
            });
            return;
        }
        zzbbh zzbbhVarZzm = zzbar.zzm(null);
        for (final zzbbh<? extends zzbpc> zzbbhVar : list) {
            zzbbhVarZzm = zzbar.zza(zzbar.zza(zzbbhVarZzm, Throwable.class, new zzbal(zzbanVar) { // from class: com.google.android.gms.internal.ads.zzbpm
                private final zzban zzdzh;

                {
                    this.zzdzh = zzbanVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    this.zzdzh.zzb((Throwable) obj);
                    return zzbar.zzm(null);
                }
            }, this.zzffi), new zzbal(this, zzbanVar, zzbbhVar) { // from class: com.google.android.gms.internal.ads.zzbpn
                private final zzbbh zzdzk;
                private final zzbpk zzfiy;
                private final zzban zzfiz;

                {
                    this.zzfiy = this;
                    this.zzfiz = zzbanVar;
                    this.zzdzk = zzbbhVar;
                }

                @Override // com.google.android.gms.internal.ads.zzbal
                public final zzbbh zzf(Object obj) {
                    return this.zzfiy.zza(this.zzfiz, this.zzdzk, (zzbpc) obj);
                }
            }, this.zzffi);
        }
        zzbar.zza(zzbbhVarZzm, new zzbpp(this, zzbanVar), this.zzffi);
    }

    public final boolean isLoading() {
        return this.zzarx;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzafz() {
        this.zzarx = false;
    }

    final /* synthetic */ zzbbh zza(zzban zzbanVar, zzbbh zzbbhVar, zzbpc zzbpcVar) throws Exception {
        if (zzbpcVar != null) {
            zzbanVar.zzk(zzbpcVar);
        }
        return zzbar.zza(zzbbhVar, ((Long) zzyt.zzpe().zzd(zzacu.zzcqx)).longValue(), TimeUnit.MILLISECONDS, this.zzfiw);
    }
}
