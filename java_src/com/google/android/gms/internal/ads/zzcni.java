package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public final class zzcni extends zzcoj {
    private zzbvj zzgbr;
    private zzbrp zzgbs;

    public zzcni(zzbri zzbriVar, zzbrt zzbrtVar, zzbse zzbseVar, zzbso zzbsoVar, zzbrp zzbrpVar, zzbtp zzbtpVar, zzbvq zzbvqVar, zzbsv zzbsvVar, zzbvj zzbvjVar) {
        super(zzbriVar, zzbrtVar, zzbseVar, zzbsoVar, zzbtpVar, zzbsvVar, zzbvqVar);
        this.zzgbr = zzbvjVar;
        this.zzgbs = zzbrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zzb(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zzsm() {
        this.zzgbr.zzrq();
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zzcs(int i) throws RemoteException {
        this.zzgbs.zzcs(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zzsn() throws RemoteException {
        this.zzgbr.zzrr();
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zza(zzatq zzatqVar) throws RemoteException {
        this.zzgbr.zza(new zzato(zzatqVar.getType(), zzatqVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void zzb(zzato zzatoVar) {
        this.zzgbr.zza(zzatoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcoj, com.google.android.gms.internal.ads.zzamv
    public final void onVideoEnd() {
        this.zzgbr.zzrr();
    }
}
