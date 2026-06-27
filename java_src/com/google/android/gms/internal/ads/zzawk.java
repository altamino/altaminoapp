package com.google.android.gms.internal.ads;

import android.os.Bundle;

@zzard
/* loaded from: classes2.dex */
final class zzawk {
    private long zzdte = -1;
    private long zzdtf = -1;
    private final /* synthetic */ zzawj zzdtg;

    public zzawk(zzawj zzawjVar) {
        this.zzdtg = zzawjVar;
    }

    public final long zzun() {
        return this.zzdtf;
    }

    public final void zzuo() {
        this.zzdtf = this.zzdtg.zzbsa.elapsedRealtime();
    }

    public final void zzup() {
        this.zzdte = this.zzdtg.zzbsa.elapsedRealtime();
    }

    public final Bundle toBundle() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.zzdte);
        bundle.putLong("tclose", this.zzdtf);
        return bundle;
    }
}
