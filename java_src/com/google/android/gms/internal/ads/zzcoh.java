package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzcoh implements zzbsn {
    private final /* synthetic */ zzcjy zzgbz;
    private final /* synthetic */ zzbbr zzgck;

    zzcoh(zzcoe zzcoeVar, zzbbr zzbbrVar, zzcjy zzcjyVar) {
        this.zzgck = zzbbrVar;
        this.zzgbz = zzcjyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsn
    public final synchronized void onAdFailedToLoad(int i) {
        if (((Boolean) zzyt.zzpe().zzd(zzacu.zzcvj)).booleanValue()) {
            i = 3;
        }
        zzbbr zzbbrVar = this.zzgck;
        String str = this.zzgbz.zzfis;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 23);
        sb.append("adapter ");
        sb.append(str);
        sb.append(" failed to load");
        zzbbrVar.setException(new zzcmw(sb.toString(), i));
    }

    @Override // com.google.android.gms.internal.ads.zzbsn
    public final synchronized void onAdLoaded() {
        this.zzgck.set(null);
    }
}
