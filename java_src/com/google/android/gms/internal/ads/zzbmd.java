package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzbmd implements zzbro {
    private final zzcxo zzfez;
    private final zzcxu zzffa;
    private final zzdae zzffb;

    public zzbmd(zzcxu zzcxuVar, zzdae zzdaeVar) {
        this.zzffa = zzcxuVar;
        this.zzffb = zzdaeVar;
        this.zzfez = zzcxuVar.zzgky.zzgku;
    }

    @Override // com.google.android.gms.internal.ads.zzbro
    public final void onAdFailedToLoad(int i) {
        this.zzffb.zza(this.zzffa, null, this.zzfez.zzdfh);
    }
}
