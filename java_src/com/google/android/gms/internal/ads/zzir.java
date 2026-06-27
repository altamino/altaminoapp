package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzir extends zziq {
    public final long zzalz;
    public final List<zzis> zzama;
    public final List<zzir> zzamb;

    public zzir(int i, long j) {
        super(i);
        this.zzama = new ArrayList();
        this.zzamb = new ArrayList();
        this.zzalz = j;
    }

    public final zzis zzv(int i) {
        int size = this.zzama.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzis zzisVar = this.zzama.get(i2);
            if (zzisVar.type == i) {
                return zzisVar;
            }
        }
        return null;
    }

    public final zzir zzw(int i) {
        int size = this.zzamb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzir zzirVar = this.zzamb.get(i2);
            if (zzirVar.type == i) {
                return zzirVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zziq
    public final String toString() {
        String strZzu = zziq.zzu(this.type);
        String strValueOf = String.valueOf(Arrays.toString(this.zzama.toArray(new zzis[0])));
        String strValueOf2 = String.valueOf(Arrays.toString(this.zzamb.toArray(new zzir[0])));
        StringBuilder sb = new StringBuilder(String.valueOf(strZzu).length() + 22 + String.valueOf(strValueOf).length() + String.valueOf(strValueOf2).length());
        sb.append(strZzu);
        sb.append(" leaves: ");
        sb.append(strValueOf);
        sb.append(" containers: ");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
