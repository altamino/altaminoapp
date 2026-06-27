package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzbpo implements zzban<zzbph> {
    private final /* synthetic */ zzban zzfja;
    private final /* synthetic */ zzbpk zzfjb;

    zzbpo(zzbpk zzbpkVar, zzban zzbanVar) {
        this.zzfjb = zzbpkVar;
        this.zzfja = zzbanVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzfja.zzb(th);
        this.zzfjb.zzafz();
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final /* synthetic */ void zzk(zzbph zzbphVar) {
        this.zzfjb.zza(zzbphVar.zzfiv, this.zzfja);
    }
}
