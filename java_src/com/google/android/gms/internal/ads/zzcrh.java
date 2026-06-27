package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class zzcrh implements zzcuz<Bundle> {
    private final zzcxv zzfjp;

    public zzcrh(zzcxv zzcxvVar) {
        Preconditions.checkNotNull(zzcxvVar, "the targeting must not be null");
        this.zzfjp = zzcxvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcxv zzcxvVar = this.zzfjp;
        zzxz zzxzVar = zzcxvVar.zzghg;
        bundle2.putString("slotname", zzcxvVar.zzglb);
        if (this.zzfjp.zzglj.contains("new_rewarded")) {
            bundle2.putBoolean("is_new_rewarded", true);
        }
        zzcxz.zza(bundle2, "cust_age", new SimpleDateFormat("yyyyMMdd", Locale.US).format(new Date(zzxzVar.zzcgn)), zzxzVar.zzcgn != -1);
        zzcxz.zza(bundle2, "extras", zzxzVar.extras);
        zzcxz.zza(bundle2, "cust_gender", Integer.valueOf(zzxzVar.zzcgo), zzxzVar.zzcgo != -1);
        zzcxz.zza(bundle2, "kw", zzxzVar.zzcgp);
        zzcxz.zza(bundle2, "tag_for_child_directed_treatment", Integer.valueOf(zzxzVar.zzcgr), zzxzVar.zzcgr != -1);
        boolean z = zzxzVar.zzcgq;
        if (z) {
            bundle2.putBoolean("test_request", z);
        }
        zzcxz.zza(bundle2, "d_imp_hdr", (Integer) 1, zzxzVar.versionCode >= 2 && zzxzVar.zzbqn);
        String str = zzxzVar.zzcgs;
        zzcxz.zza(bundle2, "ppid", str, zzxzVar.versionCode >= 2 && !TextUtils.isEmpty(str));
        Location location = zzxzVar.zzmw;
        if (location != null) {
            Float fValueOf = Float.valueOf(location.getAccuracy() * 1000.0f);
            Long lValueOf = Long.valueOf(location.getTime() * 1000);
            Long lValueOf2 = Long.valueOf((long) (location.getLatitude() * 1.0E7d));
            Long lValueOf3 = Long.valueOf((long) (location.getLongitude() * 1.0E7d));
            Bundle bundle3 = new Bundle();
            bundle3.putFloat("radius", fValueOf.floatValue());
            bundle3.putLong("lat", lValueOf2.longValue());
            bundle3.putLong("long", lValueOf3.longValue());
            bundle3.putLong("time", lValueOf.longValue());
            bundle2.putBundle("uule", bundle3);
        }
        zzcxz.zza(bundle2, "url", zzxzVar.zzcgu);
        zzcxz.zza(bundle2, "custom_targeting", zzxzVar.zzcgw);
        zzcxz.zza(bundle2, "category_exclusions", zzxzVar.zzcgx);
        zzcxz.zza(bundle2, "request_agent", zzxzVar.zzcgy);
        zzcxz.zza(bundle2, "request_pkg", zzxzVar.zzcgz);
        zzcxz.zza(bundle2, "is_designed_for_families", Boolean.valueOf(zzxzVar.zzcha), zzxzVar.versionCode >= 7);
        if (zzxzVar.versionCode >= 8) {
            zzcxz.zza(bundle2, "tag_for_under_age_of_consent", Integer.valueOf(zzxzVar.zzchc), zzxzVar.zzchc != -1);
            zzcxz.zza(bundle2, "max_ad_content_rating", zzxzVar.zzchd);
        }
    }
}
