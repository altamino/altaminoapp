package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes2.dex */
public final class zzbvx extends zzbpc {
    private final zzbup zzflh;
    private final zzbwz zzfli;
    private final zzbpv zzflj;
    private final zzdan zzflk;
    private boolean zzfll = false;
    private final Context zzlj;

    zzbvx(Context context, zzbry zzbryVar, zzbup zzbupVar, zzbwz zzbwzVar, zzbpv zzbpvVar, zzdan zzdanVar) {
        this.zzlj = context;
        this.zzfiq = zzbryVar;
        this.zzflh = zzbupVar;
        this.zzfli = zzbwzVar;
        this.zzflj = zzbpvVar;
        this.zzflk = zzdanVar;
    }

    public final void show(boolean z) {
        this.zzflh.zzagu();
        this.zzfli.zza(z, this.zzlj);
        this.zzfll = true;
    }

    public final zzbry zzadd() {
        return this.zzfiq;
    }

    public final boolean isClosed() {
        return this.zzflj.isClosed();
    }

    public final boolean zzagz() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcoe)).booleanValue()) {
            com.google.android.gms.ads.internal.zzk.zzlg();
            if (zzaxi.zzaq(this.zzlj)) {
                zzbad.zzep("It is not recommended to show an interstitial when app is not in foreground.");
                if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcof)).booleanValue()) {
                    this.zzflk.zzgb(this.zzffa.zzgky.zzgku.zzcep);
                }
                return false;
            }
        }
        return !this.zzfll;
    }
}
