package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;

/* loaded from: classes2.dex */
final class zzapn implements Runnable {
    private final /* synthetic */ zzapl zzdhp;
    private final /* synthetic */ AdOverlayInfoParcel zzdhq;

    zzapn(zzapl zzaplVar, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdhp = zzaplVar;
        this.zzdhq = adOverlayInfoParcel;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.google.android.gms.ads.internal.zzk.zzlf();
        com.google.android.gms.ads.internal.overlay.zzm.zza(this.zzdhp.zzdhn, this.zzdhq, true);
    }
}
