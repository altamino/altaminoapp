package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzdmp extends zzdml<Boolean> implements zzdoj<Boolean>, zzdpw, RandomAccess {
    private static final zzdmp zzhcp;
    private int size;
    private boolean[] zzhcq;

    zzdmp() {
        this(new boolean[10], 0);
    }

    private zzdmp(boolean[] zArr, int i) {
        this.zzhcq = zArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzavk();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.zzhcq;
        System.arraycopy(zArr, i2, zArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdmp)) {
            return super.equals(obj);
        }
        zzdmp zzdmpVar = (zzdmp) obj;
        if (this.size != zzdmpVar.size) {
            return false;
        }
        boolean[] zArr = zzdmpVar.zzhcq;
        for (int i = 0; i < this.size; i++) {
            if (this.zzhcq[i] != zArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzbh = 1;
        for (int i = 0; i < this.size; i++) {
            iZzbh = (iZzbh * 31) + zzdod.zzbh(this.zzhcq[i]);
        }
        return iZzbh;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void addBoolean(boolean z) {
        zzh(this.size, z);
    }

    private final void zzh(int i, boolean z) {
        int i2;
        zzavk();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i));
        }
        boolean[] zArr = this.zzhcq;
        if (i2 < zArr.length) {
            System.arraycopy(zArr, i, zArr, i + 1, i2 - i);
        } else {
            boolean[] zArr2 = new boolean[((i2 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i);
            System.arraycopy(this.zzhcq, i, zArr2, i + 1, this.size - i);
            this.zzhcq = zArr2;
        }
        this.zzhcq[i] = z;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        zzavk();
        zzdod.checkNotNull(collection);
        if (!(collection instanceof zzdmp)) {
            return super.addAll(collection);
        }
        zzdmp zzdmpVar = (zzdmp) collection;
        int i = zzdmpVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        boolean[] zArr = this.zzhcq;
        if (i3 > zArr.length) {
            this.zzhcq = Arrays.copyOf(zArr, i3);
        }
        System.arraycopy(zzdmpVar.zzhcq, 0, this.zzhcq, this.size, zzdmpVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzavk();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Boolean.valueOf(this.zzhcq[i]))) {
                boolean[] zArr = this.zzhcq;
                System.arraycopy(zArr, i + 1, zArr, i, (this.size - i) - 1);
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
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        zzavk();
        zzfj(i);
        boolean[] zArr = this.zzhcq;
        boolean z = zArr[i];
        zArr[i] = zBooleanValue;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzavk();
        zzfj(i);
        boolean[] zArr = this.zzhcq;
        boolean z = zArr[i];
        if (i < this.size - 1) {
            System.arraycopy(zArr, i + 1, zArr, i, (r2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzh(i, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    public final /* synthetic */ zzdoj<Boolean> zzfl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzdmp(Arrays.copyOf(this.zzhcq, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        zzfj(i);
        return Boolean.valueOf(this.zzhcq[i]);
    }

    static {
        zzdmp zzdmpVar = new zzdmp(new boolean[0], 0);
        zzhcp = zzdmpVar;
        zzdmpVar.zzavj();
    }
}
