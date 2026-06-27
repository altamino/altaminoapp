package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcsc implements zzcuz<Bundle> {
    private final float zzdmd;
    private final int zzdpe;
    private final boolean zzdpm;
    private final boolean zzdpn;
    private final int zzdpr;
    private final int zzdpv;
    private final int zzdpw;
    private final boolean zzggs;

    public zzcsc(int i, boolean z, boolean z2, int i2, int i3, int i4, float f, boolean z3) {
        this.zzdpe = i;
        this.zzdpm = z;
        this.zzdpn = z2;
        this.zzdpr = i2;
        this.zzdpv = i3;
        this.zzdpw = i4;
        this.zzdmd = f;
        this.zzggs = z3;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putInt("am", this.zzdpe);
        bundle2.putBoolean("ma", this.zzdpm);
        bundle2.putBoolean("sp", this.zzdpn);
        bundle2.putInt("muv", this.zzdpr);
        bundle2.putInt("rm", this.zzdpv);
        bundle2.putInt("riv", this.zzdpw);
        bundle2.putFloat("android_app_volume", this.zzdmd);
        bundle2.putBoolean("android_app_muted", this.zzggs);
    }
}
