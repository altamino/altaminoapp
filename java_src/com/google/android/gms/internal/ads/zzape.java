package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialAd;
import com.google.android.gms.ads.mediation.MediationInterstitialAdCallback;

/* loaded from: classes2.dex */
final class zzape implements MediationAdLoadCallback<MediationInterstitialAd, MediationInterstitialAdCallback> {
    private final /* synthetic */ zzamv zzdhf;
    private final /* synthetic */ zzaom zzdhg;
    private final /* synthetic */ zzapc zzdhh;

    zzape(zzapc zzapcVar, zzaom zzaomVar, zzamv zzamvVar) {
        this.zzdhh = zzapcVar;
        this.zzdhg = zzaomVar;
        this.zzdhf = zzamvVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final MediationInterstitialAdCallback onSuccess(MediationInterstitialAd mediationInterstitialAd) {
        try {
            this.zzdhh.zzdhd = mediationInterstitialAd;
            this.zzdhg.zzsw();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
        return new zzapi(this.zzdhf);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            this.zzdhg.zzdb(str);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
