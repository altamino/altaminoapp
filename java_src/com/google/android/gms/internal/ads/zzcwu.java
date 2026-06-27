package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcwu implements zzcva<zzcwt> {
    private ScheduledExecutorService zzfiw;
    private zzaqm zzgjn;
    private Context zzlj;

    public zzcwu(zzaqm zzaqmVar, ScheduledExecutorService scheduledExecutorService, Context context) {
        this.zzgjn = zzaqmVar;
        this.zzfiw = scheduledExecutorService;
        this.zzlj = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcwt> zzalm() {
        return zzbar.zza(zzbar.zza(this.zzgjn.zzn(this.zzlj), ((Long) zzyt.zzpe().zzd(zzacu.zzctg)).longValue(), TimeUnit.MILLISECONDS, this.zzfiw), zzcwv.zzdrn, zzaxg.zzdvp);
    }
}
