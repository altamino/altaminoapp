package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* loaded from: classes2.dex */
public final class zzal {
    private static final Comparator<byte[]> zzbw = new zzam();
    private final List<byte[]> zzbs = new ArrayList();
    private final List<byte[]> zzbt = new ArrayList(64);
    private int zzbu = 0;
    private final int zzbv = 4096;

    public zzal(int i) {
    }

    public final synchronized byte[] zzc(int i) {
        for (int i2 = 0; i2 < this.zzbt.size(); i2++) {
            byte[] bArr = this.zzbt.get(i2);
            if (bArr.length >= i) {
                this.zzbu -= bArr.length;
                this.zzbt.remove(i2);
                this.zzbs.remove(bArr);
                return bArr;
            }
        }
        return new byte[i];
    }

    public final synchronized void zza(byte[] bArr) {
        if (bArr != null) {
            if (bArr.length <= this.zzbv) {
                this.zzbs.add(bArr);
                int iBinarySearch = Collections.binarySearch(this.zzbt, bArr, zzbw);
                if (iBinarySearch < 0) {
                    iBinarySearch = (-iBinarySearch) - 1;
                }
                this.zzbt.add(iBinarySearch, bArr);
                this.zzbu += bArr.length;
                zzn();
            }
        }
    }

    private final synchronized void zzn() {
        while (this.zzbu > this.zzbv) {
            byte[] bArrRemove = this.zzbs.remove(0);
            this.zzbt.remove(bArrRemove);
            this.zzbu -= bArrRemove.length;
        }
    }
}
