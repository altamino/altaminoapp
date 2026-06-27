package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
final class zzapm implements com.google.android.gms.ads.internal.overlay.zzo {
    private final /* synthetic */ zzapl zzdhp;

    zzapm(zzapl zzaplVar) {
        this.zzdhp = zzaplVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzsz() {
        zzbad.zzdp("AdMobCustomTabsAdapter overlay is closed.");
        this.zzdhp.zzdho.onAdClosed(this.zzdhp);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onPause() {
        zzbad.zzdp("AdMobCustomTabsAdapter overlay is paused.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void onResume() {
        zzbad.zzdp("AdMobCustomTabsAdapter overlay is resumed.");
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzta() {
        zzbad.zzdp("Opening AdMobCustomTabsAdapter overlay.");
        this.zzdhp.zzdho.onAdOpened(this.zzdhp);
    }
}
