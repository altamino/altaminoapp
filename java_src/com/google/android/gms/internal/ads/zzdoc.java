package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzdoc extends zzdml<Integer> implements zzdoh, zzdpw, RandomAccess {
    private static final zzdoc zzhhy;
    private int size;
    private int[] zzhhz;

    public static zzdoc zzayc() {
        return zzhhy;
    }

    zzdoc() {
        this(new int[10], 0);
    }

    private zzdoc(int[] iArr, int i) {
        this.zzhhz = iArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzavk();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.zzhhz;
        System.arraycopy(iArr, i2, iArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdoc)) {
            return super.equals(obj);
        }
        zzdoc zzdocVar = (zzdoc) obj;
        if (this.size != zzdocVar.size) {
            return false;
        }
        int[] iArr = zzdocVar.zzhhz;
        for (int i = 0; i < this.size; i++) {
            if (this.zzhhz[i] != iArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.size; i2++) {
            i = (i * 31) + this.zzhhz[i2];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    /* renamed from: zzgo, reason: merged with bridge method [inline-methods] */
    public final zzdoh zzfl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzdoc(Arrays.copyOf(this.zzhhz, i), this.size);
    }

    public final int getInt(int i) {
        zzfj(i);
        return this.zzhhz[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    @Override // com.google.android.gms.internal.ads.zzdoh
    public final void zzgp(int i) {
        zzaj(this.size, i);
    }

    private final void zzaj(int i, int i2) {
        int i3;
        zzavk();
        if (i < 0 || i > (i3 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i));
        }
        int[] iArr = this.zzhhz;
        if (i3 < iArr.length) {
            System.arraycopy(iArr, i, iArr, i + 1, i3 - i);
        } else {
            int[] iArr2 = new int[((i3 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i);
            System.arraycopy(this.zzhhz, i, iArr2, i + 1, this.size - i);
            this.zzhhz = iArr2;
        }
        this.zzhhz[i] = i2;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        zzavk();
        zzdod.checkNotNull(collection);
        if (!(collection instanceof zzdoc)) {
            return super.addAll(collection);
        }
        zzdoc zzdocVar = (zzdoc) collection;
        int i = zzdocVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        int[] iArr = this.zzhhz;
        if (i3 > iArr.length) {
            this.zzhhz = Arrays.copyOf(iArr, i3);
        }
        System.arraycopy(zzdocVar.zzhhz, 0, this.zzhhz, this.size, zzdocVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzavk();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Integer.valueOf(this.zzhhz[i]))) {
                int[] iArr = this.zzhhz;
                System.arraycopy(iArr, i + 1, iArr, i, (this.size - i) - 1);
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
        int iIntValue = ((Integer) obj).intValue();
        zzavk();
        zzfj(i);
        int[] iArr = this.zzhhz;
        int i2 = iArr[i];
        iArr[i] = iIntValue;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzavk();
        zzfj(i);
        int[] iArr = this.zzhhz;
        int i2 = iArr[i];
        if (i < this.size - 1) {
            System.arraycopy(iArr, i + 1, iArr, i, (r2 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i2);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzaj(i, ((Integer) obj).intValue());
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Integer.valueOf(getInt(i));
    }

    static {
        zzdoc zzdocVar = new zzdoc(new int[0], 0);
        zzhhy = zzdocVar;
        zzdocVar.zzavj();
    }
}
