package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.MuteThisAdListener;

/* loaded from: classes2.dex */
public final class zzaaj extends zzaah {
    private final MuteThisAdListener zzcip;

    public zzaaj(MuteThisAdListener muteThisAdListener) {
        this.zzcip = muteThisAdListener;
    }

    @Override // com.google.android.gms.internal.ads.zzaag
    public final void onAdMuted() {
        this.zzcip.onAdMuted();
    }
}
