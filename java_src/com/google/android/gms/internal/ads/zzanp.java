package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes2.dex */
public final class zzanp extends zzamw {
    private final zzatk zzdge;
    private final Adapter zzdgp;

    zzanp(Adapter adapter, zzatk zzatkVar) {
        this.zzdgp = adapter;
        this.zzdge = zzatkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdImpression() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdLeftApplication() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAppEvent(String str, String str2) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onVideoEnd() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onVideoPause() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onVideoPlay() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zza(zzafe zzafeVar, String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zza(zzamy zzamyVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzb(Bundle bundle) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzb(zzato zzatoVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzcs(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzcz(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdLoaded() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzaf(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdOpened() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzag(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdClosed() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzai(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zza(zzatq zzatqVar) throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zza(ObjectWrapper.wrap(this.zzdgp), new zzato(zzatqVar.getType(), zzatqVar.getAmount()));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzsm() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzah(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzsn() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzal(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdClicked() throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zzaj(ObjectWrapper.wrap(this.zzdgp));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdFailedToLoad(int i) throws RemoteException {
        zzatk zzatkVar = this.zzdge;
        if (zzatkVar != null) {
            zzatkVar.zze(ObjectWrapper.wrap(this.zzdgp), i);
        }
    }
}
