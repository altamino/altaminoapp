package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzctg implements zzcuz<Bundle> {
    private final Bundle zzdmm;

    public zzctg(Bundle bundle) {
        this.zzdmm = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundleZza = zzcxz.zza(bundle2, "device");
        bundleZza.putBundle("android_mem_info", this.zzdmm);
        bundle2.putBundle("device", bundleZza);
    }
}
