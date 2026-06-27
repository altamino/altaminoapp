package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;

/* loaded from: classes2.dex */
final class zzbzo implements zzadx {
    private final /* synthetic */ zzcab zzfpw;
    private final /* synthetic */ ViewGroup zzfpx;
    private final /* synthetic */ zzbzl zzfpy;

    zzbzo(zzbzl zzbzlVar, zzcab zzcabVar, ViewGroup viewGroup) {
        this.zzfpy = zzbzlVar;
        this.zzfpw = zzcabVar;
        this.zzfpx = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzrg() {
        zzbzl zzbzlVar = this.zzfpy;
        if (zzbzl.zza(this.zzfpw, zzbzj.zzfpm)) {
            this.zzfpw.onClick(this.zzfpx);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadx
    public final void zzc(MotionEvent motionEvent) {
        this.zzfpw.onTouch(null, motionEvent);
    }
}
