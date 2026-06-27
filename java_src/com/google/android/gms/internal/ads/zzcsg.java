package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcsg implements zzcuz<Bundle> {
    private final double zzdpx;
    private final boolean zzdpy;

    public zzcsg(double d, boolean z) {
        this.zzdpx = d;
        this.zzdpy = z;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        Bundle bundleZza = zzcxz.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        Bundle bundleZza2 = zzcxz.zza(bundleZza, "battery");
        bundleZza.putBundle("battery", bundleZza2);
        bundleZza2.putBoolean("is_charging", this.zzdpy);
        bundleZza2.putDouble("battery_level", this.zzdpx);
    }
}
