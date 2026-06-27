package com.google.android.gms.internal.ads;

/* loaded from: classes2.dex */
public final class zzdrt implements Cloneable {
    private static final zzdru zzhnq = new zzdru();
    private int mSize;
    private boolean zzhnr;
    private int[] zzhns;
    private zzdru[] zzhnt;

    zzdrt() {
        this(10);
    }

    private zzdrt(int i) {
        this.zzhnr = false;
        int i2 = i << 2;
        int i3 = 4;
        while (true) {
            if (i3 >= 32) {
                break;
            }
            int i4 = (1 << i3) - 12;
            if (i2 <= i4) {
                i2 = i4;
                break;
            }
            i3++;
        }
        int i5 = i2 / 4;
        this.zzhns = new int[i5];
        this.zzhnt = new zzdru[i5];
        this.mSize = 0;
    }

    final int size() {
        return this.mSize;
    }

    final zzdru zzhf(int i) {
        return this.zzhnt[i];
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzdrt)) {
            return false;
        }
        zzdrt zzdrtVar = (zzdrt) obj;
        int i = this.mSize;
        if (i != zzdrtVar.mSize) {
            return false;
        }
        int[] iArr = this.zzhns;
        int[] iArr2 = zzdrtVar.zzhns;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            }
            if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            }
            i2++;
        }
        if (z) {
            zzdru[] zzdruVarArr = this.zzhnt;
            zzdru[] zzdruVarArr2 = zzdrtVar.zzhnt;
            int i3 = this.mSize;
            int i4 = 0;
            while (true) {
                if (i4 >= i3) {
                    z2 = true;
                    break;
                }
                if (!zzdruVarArr[i4].equals(zzdruVarArr2[i4])) {
                    z2 = false;
                    break;
                }
                i4++;
            }
            if (z2) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = 17;
        for (int i = 0; i < this.mSize; i++) {
            iHashCode = (((iHashCode * 31) + this.zzhns[i]) * 31) + this.zzhnt[i].hashCode();
        }
        return iHashCode;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzdrt zzdrtVar = new zzdrt(i);
        System.arraycopy(this.zzhns, 0, zzdrtVar.zzhns, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            zzdru[] zzdruVarArr = this.zzhnt;
            if (zzdruVarArr[i2] != null) {
                zzdrtVar.zzhnt[i2] = (zzdru) zzdruVarArr[i2].clone();
            }
        }
        zzdrtVar.mSize = i;
        return zzdrtVar;
    }
}
