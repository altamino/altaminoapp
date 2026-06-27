package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjx {
    private zzbrt zzfij;
    private zzcxm zzflu;

    public zzcjx(zzcxm zzcxmVar) {
        this.zzflu = zzcxmVar;
    }

    public final void zzakq() {
        zzbrt zzbrtVar = this.zzfij;
        if (zzbrtVar != null && this.zzflu.zzgkp == 2) {
            zzbrtVar.onAdImpression();
        }
    }

    public final void zza(zzbrt zzbrtVar) {
        this.zzfij = zzbrtVar;
    }
}
