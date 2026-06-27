package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class zzcvf implements zzcuz<Bundle> {
    private final boolean zzdpf;
    private final boolean zzdpg;
    private final String zzdpi;
    private final boolean zzdpj;
    private final boolean zzdpk;
    private final boolean zzdpl;
    private final String zzdpo;
    private final String zzdpp;
    private final String zzdpq;
    private final boolean zzdqd;
    private final String zzgil;
    private final String zzgim;

    public zzcvf(boolean z, boolean z2, String str, boolean z3, boolean z4, boolean z5, String str2, String str3, String str4, String str5, boolean z6, String str6) {
        this.zzdpf = z;
        this.zzdpg = z2;
        this.zzdpi = str;
        this.zzdpj = z3;
        this.zzdpk = z4;
        this.zzdpl = z5;
        this.zzdpo = str2;
        this.zzdpp = str3;
        this.zzdpq = str4;
        this.zzgil = str5;
        this.zzdqd = z6;
        this.zzgim = str6;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putBoolean("cog", this.zzdpf);
        bundle2.putBoolean("coh", this.zzdpg);
        bundle2.putString("gl", this.zzdpi);
        bundle2.putBoolean("simulator", this.zzdpj);
        bundle2.putBoolean("is_latchsky", this.zzdpk);
        bundle2.putBoolean("is_sidewinder", this.zzdpl);
        bundle2.putString("hl", this.zzdpo);
        bundle2.putString("mv", this.zzdpp);
        bundle2.putString("submodel", this.zzgim);
        Bundle bundleZza = zzcxz.zza(bundle2, "device");
        bundle2.putBundle("device", bundleZza);
        bundleZza.putString("build", this.zzgil);
        Bundle bundleZza2 = zzcxz.zza(bundleZza, "browser");
        bundleZza.putBundle("browser", bundleZza2);
        bundleZza2.putBoolean("is_browser_custom_tabs_capable", this.zzdqd);
        if (TextUtils.isEmpty(this.zzdpq)) {
            return;
        }
        Bundle bundleZza3 = zzcxz.zza(bundleZza, "play_store");
        bundleZza.putBundle("play_store", bundleZza3);
        bundleZza3.putString("package_version", this.zzdpq);
    }
}
