package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcuv implements zzcuz<Bundle> {
    private final String zzbsx;
    private final int zzdme;
    private final boolean zzdnb;
    private final boolean zzdzf;
    private final boolean zzgie;
    private final int zzgif;

    public zzcuv(boolean z, boolean z2, String str, boolean z3, int i, int i2) {
        this.zzgie = z;
        this.zzdzf = z2;
        this.zzbsx = str;
        this.zzdnb = z3;
        this.zzdme = i;
        this.zzgif = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("js", this.zzbsx);
        bundle2.putBoolean("is_nonagon", true);
        bundle2.putString("extra_caps", (String) zzyt.zzpe().zzd(zzacu.zzcrv));
        bundle2.putInt("target_api", this.zzdme);
        bundle2.putInt("dv", this.zzgif);
        Bundle bundleZza = zzcxz.zza(bundle2, "sdk_env");
        bundleZza.putBoolean("mf", ((Boolean) zzyt.zzpe().zzd(zzacu.zzcrx)).booleanValue());
        bundleZza.putBoolean("instant_app", this.zzgie);
        bundleZza.putBoolean("lite", this.zzdzf);
        bundleZza.putBoolean("is_privileged_process", this.zzdnb);
        bundle2.putBundle("sdk_env", bundleZza);
        Bundle bundleZza2 = zzcxz.zza(bundleZza, "build_meta");
        bundleZza2.putString("cl", "248613007");
        bundleZza2.putString("rapid_rc", "dev");
        bundleZza2.putString("rapid_rollup", "HEAD");
        bundleZza.putBundle("build_meta", bundleZza2);
    }
}
