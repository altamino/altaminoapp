package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class zzcvj implements zzcuz<Bundle> {
    private final String zzdph;
    private final int zzdps;
    private final int zzdpt;
    private final int zzdpu;
    private final boolean zzdpz;
    private final int zzdqa;

    public zzcvj(String str, int i, int i2, int i3, boolean z, int i4) {
        this.zzdph = str;
        this.zzdps = i;
        this.zzdpt = i2;
        this.zzdpu = i3;
        this.zzdpz = z;
        this.zzdqa = i4;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcxz.zza(bundle2, "carrier", this.zzdph, !TextUtils.isEmpty(r0));
        zzcxz.zza(bundle2, "cnt", Integer.valueOf(this.zzdps), this.zzdps != -2);
        bundle2.putInt("gnt", this.zzdpt);
        bundle2.putInt("pt", this.zzdpu);
        Bundle bundleZza = zzcxz.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        Bundle bundleZza2 = zzcxz.zza(bundleZza, "network");
        bundleZza.putBundle("network", bundleZza2);
        bundleZza2.putInt("active_network_state", this.zzdqa);
        bundleZza2.putBoolean("active_network_metered", this.zzdpz);
    }
}
