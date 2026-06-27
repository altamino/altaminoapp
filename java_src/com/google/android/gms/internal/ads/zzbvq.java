package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;

/* loaded from: classes2.dex */
public final class zzbvq extends zzbts<VideoController.VideoLifecycleCallbacks> {
    private boolean zzelx;

    protected zzbvq(Set<zzbuz<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void onVideoPause() {
        zza(zzbvr.zzfka);
    }

    public final void onVideoEnd() {
        zza(zzbvs.zzfka);
    }

    public final synchronized void onVideoStart() {
        zza(zzbvt.zzfka);
        this.zzelx = true;
    }

    public final synchronized void onVideoPlay() {
        if (!this.zzelx) {
            zza(zzbvu.zzfka);
            this.zzelx = true;
        }
        zza(zzbvv.zzfka);
    }
}
