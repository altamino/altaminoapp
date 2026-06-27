package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzayt {
    private final List<String> zzdxe = new ArrayList();
    private final List<Double> zzdxf = new ArrayList();
    private final List<Double> zzdxg = new ArrayList();

    public final zzayt zza(String str, double d, double d2) {
        int i = 0;
        while (i < this.zzdxe.size()) {
            double dDoubleValue = this.zzdxg.get(i).doubleValue();
            double dDoubleValue2 = this.zzdxf.get(i).doubleValue();
            if (d < dDoubleValue || (dDoubleValue == d && d2 < dDoubleValue2)) {
                break;
            }
            i++;
        }
        this.zzdxe.add(i, str);
        this.zzdxg.add(i, Double.valueOf(d));
        this.zzdxf.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzayq zzwq() {
        return new zzayq(this);
    }
}
