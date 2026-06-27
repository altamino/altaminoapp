package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzdnl extends zzdml<Double> implements zzdoj<Double>, zzdpw, RandomAccess {
    private static final zzdnl zzhdw;
    private int size;
    private double[] zzhdx;

    zzdnl() {
        this(new double[10], 0);
    }

    private zzdnl(double[] dArr, int i) {
        this.zzhdx = dArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzavk();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.zzhdx;
        System.arraycopy(dArr, i2, dArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdnl)) {
            return super.equals(obj);
        }
        zzdnl zzdnlVar = (zzdnl) obj;
        if (this.size != zzdnlVar.size) {
            return false;
        }
        double[] dArr = zzdnlVar.zzhdx;
        for (int i = 0; i < this.size; i++) {
            if (Double.doubleToLongBits(this.zzhdx[i]) != Double.doubleToLongBits(dArr[i])) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzft = 1;
        for (int i = 0; i < this.size; i++) {
            iZzft = (iZzft * 31) + zzdod.zzft(Double.doubleToLongBits(this.zzhdx[i]));
        }
        return iZzft;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzd(double d) {
        zzd(this.size, d);
    }

    private final void zzd(int i, double d) {
        int i2;
        zzavk();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i));
        }
        double[] dArr = this.zzhdx;
        if (i2 < dArr.length) {
            System.arraycopy(dArr, i, dArr, i + 1, i2 - i);
        } else {
            double[] dArr2 = new double[((i2 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i);
            System.arraycopy(this.zzhdx, i, dArr2, i + 1, this.size - i);
            this.zzhdx = dArr2;
        }
        this.zzhdx[i] = d;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        zzavk();
        zzdod.checkNotNull(collection);
        if (!(collection instanceof zzdnl)) {
            return super.addAll(collection);
        }
        zzdnl zzdnlVar = (zzdnl) collection;
        int i = zzdnlVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        double[] dArr = this.zzhdx;
        if (i3 > dArr.length) {
            this.zzhdx = Arrays.copyOf(dArr, i3);
        }
        System.arraycopy(zzdnlVar.zzhdx, 0, this.zzhdx, this.size, zzdnlVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzavk();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Double.valueOf(this.zzhdx[i]))) {
                double[] dArr = this.zzhdx;
                System.arraycopy(dArr, i + 1, dArr, i, (this.size - i) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    private final void zzfj(int i) {
        if (i < 0 || i >= this.size) {
            throw new IndexOutOfBoundsException(zzfk(i));
        }
    }

    private final String zzfk(int i) {
        int i2 = this.size;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i);
        sb.append(", Size:");
        sb.append(i2);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        zzavk();
        zzfj(i);
        double[] dArr = this.zzhdx;
        double d = dArr[i];
        dArr[i] = dDoubleValue;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzavk();
        zzfj(i);
        double[] dArr = this.zzhdx;
        double d = dArr[i];
        if (i < this.size - 1) {
            System.arraycopy(dArr, i + 1, dArr, i, (r3 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzd(i, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    public final /* synthetic */ zzdoj<Double> zzfl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzdnl(Arrays.copyOf(this.zzhdx, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzfj(i);
        return Double.valueOf(this.zzhdx[i]);
    }

    static {
        zzdnl zzdnlVar = new zzdnl(new double[0], 0);
        zzhdw = zzdnlVar;
        zzdnlVar.zzavj();
    }
}
