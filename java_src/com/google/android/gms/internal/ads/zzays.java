package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.measurement.api.AppMeasurementSdk;

/* loaded from: classes2.dex */
public final class zzays {
    public final int count;
    public final String name;
    private final double zzdxb;
    private final double zzdxc;
    public final double zzdxd;

    public zzays(String str, double d, double d2, double d3, int i) {
        this.name = str;
        this.zzdxc = d;
        this.zzdxb = d2;
        this.zzdxd = d3;
        this.count = i;
    }

    public final String toString() {
        return Objects.toStringHelper(this).add(AppMeasurementSdk.ConditionalUserProperty.NAME, this.name).add("minBound", Double.valueOf(this.zzdxc)).add("maxBound", Double.valueOf(this.zzdxb)).add("percent", Double.valueOf(this.zzdxd)).add("count", Integer.valueOf(this.count)).toString();
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzays)) {
            return false;
        }
        zzays zzaysVar = (zzays) obj;
        return Objects.equal(this.name, zzaysVar.name) && this.zzdxb == zzaysVar.zzdxb && this.zzdxc == zzaysVar.zzdxc && this.count == zzaysVar.count && Double.compare(this.zzdxd, zzaysVar.zzdxd) == 0;
    }

    public final int hashCode() {
        return Objects.hashCode(this.name, Double.valueOf(this.zzdxb), Double.valueOf(this.zzdxc), Double.valueOf(this.zzdxd), Integer.valueOf(this.count));
    }
}
