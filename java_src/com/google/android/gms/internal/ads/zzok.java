package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
final class zzok extends zzoj {
    public final List<zzol> zzama;
    public final List<zzok> zzamb;
    public final long zzbdz;

    public zzok(int i, long j) {
        super(i);
        this.zzbdz = j;
        this.zzama = new ArrayList();
        this.zzamb = new ArrayList();
    }

    public final zzol zzay(int i) {
        int size = this.zzama.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzol zzolVar = this.zzama.get(i2);
            if (zzolVar.type == i) {
                return zzolVar;
            }
        }
        return null;
    }

    public final zzok zzaz(int i) {
        int size = this.zzamb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzok zzokVar = this.zzamb.get(i2);
            if (zzokVar.type == i) {
                return zzokVar;
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzoj
    public final String toString() {
        String strZzu = zzoj.zzu(this.type);
        String string = Arrays.toString(this.zzama.toArray());
        String string2 = Arrays.toString(this.zzamb.toArray());
        StringBuilder sb = new StringBuilder(String.valueOf(strZzu).length() + 22 + String.valueOf(string).length() + String.valueOf(string2).length());
        sb.append(strZzu);
        sb.append(" leaves: ");
        sb.append(string);
        sb.append(" containers: ");
        sb.append(string2);
        return sb.toString();
    }
}
