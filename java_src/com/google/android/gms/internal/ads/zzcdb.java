package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;

/* loaded from: classes2.dex */
public final class zzcdb extends zzbpc {
    private final zzatq zzdqw;
    private final zzbup zzflh;
    private final zzbpv zzflj;
    private final zzdan zzflk;
    private boolean zzfll = false;
    private final zzbwz zzflm;
    private final zzbrp zzftc;
    private final Context zzlj;

    zzcdb(Context context, zzbwz zzbwzVar, zzbup zzbupVar, zzbrp zzbrpVar, zzbry zzbryVar, zzbpv zzbpvVar, zzcxm zzcxmVar, zzdan zzdanVar) {
        this.zzlj = context;
        this.zzflm = zzbwzVar;
        this.zzflh = zzbupVar;
        this.zzftc = zzbrpVar;
        this.zzfiq = zzbryVar;
        this.zzflj = zzbpvVar;
        this.zzflk = zzdanVar;
        this.zzdqw = new zzaup(zzcxmVar.zzdnx);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.content.Context] */
    public final void zzb(boolean z, Activity activity) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoe)).booleanValue()) {
            com.google.android.gms.ads.internal.zzk.zzlg();
            if (zzaxi.zzaq(this.zzlj)) {
                zzbad.zzep("Rewarded ad can not be shown when app is not in foreground.");
                this.zzftc.zzcs(3);
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcof)).booleanValue()) {
                    this.zzflk.zzgb(this.zzffa.zzgky.zzgku.zzcep);
                    return;
                }
                return;
            }
        }
        if (this.zzfll) {
            zzbad.zzep("The rewarded ad have been showed.");
            this.zzftc.zzcs(1);
            return;
        }
        this.zzfll = true;
        this.zzflh.zzagu();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.zzlj;
        }
        this.zzflm.zza(z, activity2);
    }

    public final zzatq zzqh() {
        return this.zzdqw;
    }

    public final zzbry zzadd() {
        return this.zzfiq;
    }

    public final boolean isClosed() {
        return this.zzflj.isClosed();
    }
}
