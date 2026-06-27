package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;

/* loaded from: classes2.dex */
final /* synthetic */ class zzbvr implements zzbtu {
    static final zzbtu zzfka = new zzbvr();

    private zzbvr() {
    }

    @Override // com.google.android.gms.internal.ads.zzbtu
    public final void zzr(Object obj) {
        ((VideoController.VideoLifecycleCallbacks) obj).onVideoPause();
    }
}
