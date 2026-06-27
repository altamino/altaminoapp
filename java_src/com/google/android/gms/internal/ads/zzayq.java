package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;

@zzard
/* loaded from: classes2.dex */
public final class zzayq {
    private final String[] zzdww;
    private final double[] zzdwx;
    private final double[] zzdwy;
    private final int[] zzdwz;
    private int zzdxa;

    private zzayq(zzayt zzaytVar) {
        int size = zzaytVar.zzdxf.size();
        this.zzdww = (String[]) zzaytVar.zzdxe.toArray(new String[size]);
        this.zzdwx = zzd(zzaytVar.zzdxf);
        this.zzdwy = zzd(zzaytVar.zzdxg);
        this.zzdwz = new int[size];
        this.zzdxa = 0;
    }

    private static double[] zzd(List<Double> list) {
        double[] dArr = new double[list.size()];
        for (int i = 0; i < dArr.length; i++) {
            dArr[i] = list.get(i).doubleValue();
        }
        return dArr;
    }

    public final void zza(double d) {
        this.zzdxa++;
        int i = 0;
        while (true) {
            double[] dArr = this.zzdwy;
            if (i >= dArr.length) {
                return;
            }
            if (dArr[i] <= d && d < this.zzdwx[i]) {
                int[] iArr = this.zzdwz;
                iArr[i] = iArr[i] + 1;
            }
            if (d < this.zzdwy[i]) {
                return;
            } else {
                i++;
            }
        }
    }

    public final List<zzays> zzwp() {
        ArrayList arrayList = new ArrayList(this.zzdww.length);
        int i = 0;
        while (true) {
            String[] strArr = this.zzdww;
            if (i >= strArr.length) {
                return arrayList;
            }
            String str = strArr[i];
            double d = this.zzdwy[i];
            double d2 = this.zzdwx[i];
            int[] iArr = this.zzdwz;
            double d3 = iArr[i];
            double d4 = this.zzdxa;
            Double.isNaN(d3);
            Double.isNaN(d4);
            arrayList.add(new zzays(str, d, d2, d3 / d4, iArr[i]));
            i++;
        }
    }
}
