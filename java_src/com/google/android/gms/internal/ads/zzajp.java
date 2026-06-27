package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzajp extends zzbiz {
    private final /* synthetic */ zzajj zzdbm;

    private zzajp(zzajj zzajjVar) {
        this.zzdbm = zzajjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zza(zzbja zzbjaVar) {
        if (this.zzdbm.zzdbi != null) {
            this.zzdbm.zzdbi.zzrv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final void zzb(zzbja zzbjaVar) {
        this.zzdbm.zzg(zzbjaVar.uri);
    }

    @Override // com.google.android.gms.internal.ads.zzbiz
    public final boolean zzc(zzbja zzbjaVar) {
        return this.zzdbm.zzg(zzbjaVar.uri);
    }
}
