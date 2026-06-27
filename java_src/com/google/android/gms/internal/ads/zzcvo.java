package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcvo implements zzcva<zzcvn> {
    private final Executor zzffi;
    private final ScheduledExecutorService zzfiw;
    private final zzawi zzgir;
    private final Context zzlj;

    public zzcvo(zzawi zzawiVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zzgir = zzawiVar;
        this.zzlj = context;
        this.zzfiw = scheduledExecutorService;
        this.zzffi = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcvn> zzalm() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoz)).booleanValue()) {
            final zzbbr zzbbrVar = new zzbbr();
            final zzbbh<AdvertisingIdClient.Info> zzbbhVarZzag = this.zzgir.zzag(this.zzlj);
            zzbbhVarZzag.zza(new Runnable(this, zzbbhVarZzag, zzbbrVar) { // from class: com.google.android.gms.internal.ads.zzcvp
                private final zzbbh zzdzi;
                private final zzbbr zzfvh;
                private final zzcvo zzgis;

                {
                    this.zzgis = this;
                    this.zzdzi = zzbbhVarZzag;
                    this.zzfvh = zzbbrVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzgis.zzb(this.zzdzi, this.zzfvh);
                }
            }, this.zzffi);
            this.zzfiw.schedule(new Runnable(zzbbhVarZzag) { // from class: com.google.android.gms.internal.ads.zzcvq
                private final zzbbh zzdzo;

                {
                    this.zzdzo = zzbbhVarZzag;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.zzdzo.cancel(true);
                }
            }, ((Long) zzyt.zzpe().zzd(zzacu.zzcpa)).longValue(), TimeUnit.MILLISECONDS);
            return zzbbrVar;
        }
        return zzbar.zzd(new Exception("Did not ad Ad ID into query param."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ void zzb(zzbbh zzbbhVar, zzbbr zzbbrVar) {
        String strZzbf;
        try {
            AdvertisingIdClient.Info info = (AdvertisingIdClient.Info) zzbbhVar.get();
            if (info == null || !TextUtils.isEmpty(info.getId())) {
                strZzbf = null;
            } else {
                zzyt.zzpa();
                strZzbf = zzazt.zzbf(this.zzlj);
            }
            zzbbrVar.set(new zzcvn(info, this.zzlj, strZzbf));
        } catch (InterruptedException | CancellationException | ExecutionException unused) {
            zzyt.zzpa();
            zzbbrVar.set(new zzcvn(null, this.zzlj, zzazt.zzbf(this.zzlj)));
        }
    }
}
