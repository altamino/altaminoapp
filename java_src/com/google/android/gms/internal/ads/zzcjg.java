package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjg implements zzbro, zzbsr {
    private static final Object zzfyh = new Object();
    private static int zzfyi;
    private final zzcjm zzfyj;

    public zzcjg(zzcjm zzcjmVar) {
        this.zzfyj = zzcjmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsr
    public final void onAdLoaded() {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue() && zzakk()) {
            this.zzfyj.zzba(true);
            zzakj();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(int i) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue() && zzakk()) {
            this.zzfyj.zzba(false);
            zzakj();
        }
    }

    private static void zzakj() {
        synchronized (zzfyh) {
            zzfyi++;
        }
    }

    private static boolean zzakk() {
        boolean z;
        synchronized (zzfyh) {
            z = zzfyi < ((Integer) zzyt.zzpe().zzd(zzacu.zzcwu)).intValue();
        }
        return z;
    }
}
