package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class zzcwq implements zzcva<zzcwp> {
    private ApplicationInfo applicationInfo;
    private boolean zzdou;
    private ScheduledExecutorService zzfiw;
    private zzamg zzgjk;

    public zzcwq(zzamg zzamgVar, ScheduledExecutorService scheduledExecutorService, boolean z, ApplicationInfo applicationInfo) {
        this.zzgjk = zzamgVar;
        this.zzfiw = scheduledExecutorService;
        this.zzdou = z;
        this.applicationInfo = applicationInfo;
    }

    @Override // com.google.android.gms.internal.ads.zzcva
    public final zzbbh<zzcwp> zzalm() {
        if (!this.zzdou) {
            return zzbar.zzd(new Exception("Auto Collect Location is false."));
        }
        return zzbar.zza(zzbar.zza(this.zzgjk.zza(this.applicationInfo), ((Long) zzyt.zzpe().zzd(zzacu.zzcsq)).longValue(), TimeUnit.MILLISECONDS, this.zzfiw), zzcwr.zzdrn, zzaxg.zzdvp);
    }
}
