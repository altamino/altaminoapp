package com.google.android.gms.internal.ads;

import java.io.InputStream;

/* loaded from: classes2.dex */
final class zzwc extends zzbbr<InputStream> {
    private final /* synthetic */ zzwb zzbxa;

    zzwc(zzwb zzwbVar) {
        this.zzbxa = zzwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbbr, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        this.zzbxa.disconnect();
        return super.cancel(z);
    }
}
