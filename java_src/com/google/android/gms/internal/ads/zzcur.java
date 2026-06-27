package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes2.dex */
public final class zzcur implements zzcuz<Bundle> {
    private final String zzdsf;
    private final String zzghz;
    private final String zzgia;
    private final String zzgib;
    private final Long zzgic;

    public zzcur(String str, String str2, String str3, String str4, Long l) {
        this.zzdsf = str;
        this.zzghz = str2;
        this.zzgia = str3;
        this.zzgib = str4;
        this.zzgic = l;
    }

    @Override // com.google.android.gms.internal.ads.zzcuz
    public final /* synthetic */ void zzt(Bundle bundle) {
        Bundle bundle2 = bundle;
        zzcxz.zza(bundle2, "gmp_app_id", this.zzdsf);
        zzcxz.zza(bundle2, "fbs_aiid", this.zzghz);
        zzcxz.zza(bundle2, "fbs_aeid", this.zzgia);
        zzcxz.zza(bundle2, "apm_id_origin", this.zzgib);
        Long l = this.zzgic;
        if (l != null) {
            bundle2.putLong("sai_timeout", l.longValue());
        }
    }
}
