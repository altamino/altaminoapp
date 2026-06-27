package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.NativeAppInstallAd;

@zzard
/* loaded from: classes2.dex */
public final class zzagm extends zzafj {
    private final NativeAppInstallAd.OnAppInstallAdLoadedListener zzcze;

    public zzagm(NativeAppInstallAd.OnAppInstallAdLoadedListener onAppInstallAdLoadedListener) {
        this.zzcze = onAppInstallAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzafi
    public final void zza(zzaew zzaewVar) {
        this.zzcze.onAppInstallAdLoaded(new zzaez(zzaewVar));
    }
}
