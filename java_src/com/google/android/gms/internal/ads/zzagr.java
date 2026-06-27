package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.doubleclick.PublisherAdView;

/* loaded from: classes2.dex */
final class zzagr implements Runnable {
    private final /* synthetic */ PublisherAdView zzczj;
    private final /* synthetic */ zzzk zzczk;
    private final /* synthetic */ zzagq zzczl;

    zzagr(zzagq zzagqVar, PublisherAdView publisherAdView, zzzk zzzkVar) {
        this.zzczl = zzagqVar;
        this.zzczj = publisherAdView;
        this.zzczk = zzzkVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.zzczj.zza(this.zzczk)) {
            this.zzczl.zzczi.onPublisherAdViewLoaded(this.zzczj);
        } else {
            zzbad.zzep("Could not bind.");
        }
    }
}
