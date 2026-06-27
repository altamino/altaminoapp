package com.google.android.gms.internal.ads;

import android.location.Location;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import java.util.Date;
import java.util.Set;

@zzard
/* loaded from: classes2.dex */
public final class zzank implements MediationAdRequest {
    private final int zzcgo;
    private final boolean zzcha;
    private final String zzchd;
    private final int zzdga;
    private final int zzdgb;
    private final Date zzms;
    private final Set<String> zzmu;
    private final boolean zzmv;
    private final Location zzmw;

    public zzank(Date date, int i, Set<String> set, Location location, boolean z, int i2, boolean z2, int i3, String str) {
        this.zzms = date;
        this.zzcgo = i;
        this.zzmu = set;
        this.zzmw = location;
        this.zzmv = z;
        this.zzdga = i2;
        this.zzcha = z2;
        this.zzdgb = i3;
        this.zzchd = str;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final Date getBirthday() {
        return this.zzms;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final int getGender() {
        return this.zzcgo;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Set<String> getKeywords() {
        return this.zzmu;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final Location getLocation() {
        return this.zzmw;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final boolean isTesting() {
        return this.zzmv;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    public final int taggedForChildDirectedTreatment() {
        return this.zzdga;
    }

    @Override // com.google.android.gms.ads.mediation.MediationAdRequest
    @Deprecated
    public final boolean isDesignedForFamilies() {
        return this.zzcha;
    }
}
