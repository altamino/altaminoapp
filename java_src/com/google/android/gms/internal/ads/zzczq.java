package com.google.android.gms.internal.ads;

/* JADX INFO: Add missing generic type declarations: [O] */
/* loaded from: classes2.dex */
final class zzczq<O> implements zzban<O> {
    private final /* synthetic */ zzcze zzgmr;
    private final /* synthetic */ zzczl zzgms;

    zzczq(zzczl zzczlVar, zzcze zzczeVar) {
        this.zzgms = zzczlVar;
        this.zzgmr = zzczeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzk(O o) {
        this.zzgms.zzgmk.zzgmi.zzc(this.zzgmr);
    }

    @Override // com.google.android.gms.internal.ads.zzban
    public final void zzb(Throwable th) {
        this.zzgms.zzgmk.zzgmi.zza(this.zzgmr, th);
    }
}
