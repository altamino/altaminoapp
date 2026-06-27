package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbpp implements zzban<zzbpc> {
    private final /* synthetic */ zzban zzfja;
    private final /* synthetic */ zzbpk zzfjb;

    zzbpp(zzbpk zzbpkVar, zzban zzbanVar) {
        this.zzfjb = zzbpkVar;
        this.zzfja = zzbanVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzfja.zzb(th);
        this.zzfjb.zzafz();
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbpc zzbpcVar) {
        this.zzfja.zzk(zzbpcVar);
        this.zzfjb.zzafz();
    }
}
