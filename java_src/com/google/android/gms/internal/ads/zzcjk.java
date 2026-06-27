package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzcjk implements zzczz {
    private final zzcji zzfyt;

    zzcjk(zzcji zzcjiVar) {
        this.zzfyt = zzcjiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzb(zzczs zzczsVar, String str) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue() && zzczs.RENDERER == zzczsVar) {
            this.zzfyt.zzfh(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zza(zzczs zzczsVar, String str, Throwable th) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue() && zzczs.RENDERER == zzczsVar && this.zzfyt.zzakm() != 0) {
            this.zzfyt.zzev(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfyt.zzakm());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzczz
    public final void zzc(zzczs zzczsVar, String str) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcwt)).booleanValue() && zzczs.RENDERER == zzczsVar && this.zzfyt.zzakm() != 0) {
            this.zzfyt.zzev(com.google.android.gms.ads.internal.zzk.zzln().elapsedRealtime() - this.zzfyt.zzakm());
        }
    }
}
