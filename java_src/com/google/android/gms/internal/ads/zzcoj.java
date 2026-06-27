package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes2.dex */
public class zzcoj extends zzamw {
    private final zzbso zzfir;
    private final zzbse zzfjg;
    private final zzbsv zzflp;
    private final zzbrt zzfmr;
    private final zzbri zzfms;
    private final zzbtp zzfsr;
    private final zzbvq zzgcm;

    public zzcoj(zzbri zzbriVar, zzbrt zzbrtVar, zzbse zzbseVar, zzbso zzbsoVar, zzbtp zzbtpVar, zzbsv zzbsvVar, zzbvq zzbvqVar) {
        this.zzfms = zzbriVar;
        this.zzfmr = zzbrtVar;
        this.zzfjg = zzbseVar;
        this.zzfir = zzbsoVar;
        this.zzfsr = zzbtpVar;
        this.zzflp = zzbsvVar;
        this.zzgcm = zzbvqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdFailedToLoad(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zza(zzafe zzafeVar, String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zza(zzamy zzamyVar) {
    }

    public void zza(zzatq zzatqVar) throws RemoteException {
    }

    public void zzb(Bundle bundle) throws RemoteException {
    }

    public void zzb(zzato zzatoVar) {
    }

    public void zzcs(int i) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void zzcz(String str) {
    }

    public void zzsn() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdClicked() {
        this.zzfms.onAdClicked();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdClosed() {
        this.zzflp.zzsz();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdLeftApplication() {
        this.zzfjg.onAdLeftApplication();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdOpened() {
        this.zzflp.zzta();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAppEvent(String str, String str2) {
        this.zzfsr.onAppEvent(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdLoaded() {
        this.zzfir.onAdLoaded();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onAdImpression() {
        this.zzfmr.onAdImpression();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onVideoPause() {
        this.zzgcm.onVideoPause();
    }

    public void zzsm() {
        this.zzgcm.onVideoStart();
    }

    public void onVideoEnd() {
        this.zzgcm.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.ads.zzamv
    public final void onVideoPlay() throws RemoteException {
        this.zzgcm.onVideoPlay();
    }
}
