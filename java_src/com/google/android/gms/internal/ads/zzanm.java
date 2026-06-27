package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.Adapter;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationRewardedAd;
import com.google.android.gms.ads.mediation.MediationRewardedAdCallback;

/* loaded from: classes2.dex */
final class zzanm implements MediationAdLoadCallback<MediationRewardedAd, MediationRewardedAdCallback> {
    private final /* synthetic */ zzamv zzdgh;
    private final /* synthetic */ Adapter zzdgi;
    private final /* synthetic */ zzanl zzdgj;

    zzanm(zzanl zzanlVar, zzamv zzamvVar, Adapter adapter) {
        this.zzdgj = zzanlVar;
        this.zzdgh = zzamvVar;
        this.zzdgi = adapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    /* renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final MediationRewardedAdCallback onSuccess(MediationRewardedAd mediationRewardedAd) {
        try {
            this.zzdgj.zzdgg = mediationRewardedAd;
            this.zzdgh.onAdLoaded();
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
        return new zzauo(this.zzdgh);
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdLoadCallback
    public final void onFailure(String str) {
        try {
            String canonicalName = this.zzdgi.getClass().getCanonicalName();
            StringBuilder sb = new StringBuilder(String.valueOf(canonicalName).length() + 30 + String.valueOf(str).length());
            sb.append(canonicalName);
            sb.append("failed to loaded medation ad: ");
            sb.append(str);
            zzbad.zzdp(sb.toString());
            this.zzdgh.onAdFailedToLoad(0);
        } catch (RemoteException e) {
            zzbad.zzc("", e);
        }
    }
}
