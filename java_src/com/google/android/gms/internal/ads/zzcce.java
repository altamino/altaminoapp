package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* loaded from: classes2.dex */
final class zzcce implements zzadx {
    private final /* synthetic */ zzccd zzfsf;

    zzcce(zzccd zzccdVar) {
        this.zzfsf = zzccdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzc(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzrg() {
        this.zzfsf.zzfpj.zzfi(NativeCustomTemplateAd.ASSET_NAME_VIDEO);
    }
}
