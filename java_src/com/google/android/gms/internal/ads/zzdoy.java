package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
final class zzdoy extends zzdml<Long> implements zzdoj<Long>, zzdpw, RandomAccess {
    private static final zzdoy zzhjd;
    private int size;
    private long[] zzhje;

    zzdoy() {
        this(new long[10], 0);
    }

    private zzdoy(long[] jArr, int i) {
        this.zzhje = jArr;
        this.size = i;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i, int i2) {
        zzavk();
        if (i2 < i) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.zzhje;
        System.arraycopy(jArr, i2, jArr, i, this.size - i2);
        this.size -= i2 - i;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdoy)) {
            return super.equals(obj);
        }
        zzdoy zzdoyVar = (zzdoy) obj;
        if (this.size != zzdoyVar.size) {
            return false;
        }
        long[] jArr = zzdoyVar.zzhje;
        for (int i = 0; i < this.size; i++) {
            if (this.zzhje[i] != jArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iZzft = 1;
        for (int i = 0; i < this.size; i++) {
            iZzft = (iZzft * 31) + zzdod.zzft(this.zzhje[i]);
        }
        return iZzft;
    }

    public final long getLong(int i) {
        zzfj(i);
        return this.zzhje[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.size;
    }

    public final void zzfu(long j) {
        zzr(this.size, j);
    }

    private final void zzr(int i, long j) {
        int i2;
        zzavk();
        if (i < 0 || i > (i2 = this.size)) {
            throw new IndexOutOfBoundsException(zzfk(i));
        }
        long[] jArr = this.zzhje;
        if (i2 < jArr.length) {
            System.arraycopy(jArr, i, jArr, i + 1, i2 - i);
        } else {
            long[] jArr2 = new long[((i2 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i);
            System.arraycopy(this.zzhje, i, jArr2, i + 1, this.size - i);
            this.zzhje = jArr2;
        }
        this.zzhje[i] = j;
        this.size++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        zzavk();
        zzdod.checkNotNull(collection);
        if (!(collection instanceof zzdoy)) {
            return super.addAll(collection);
        }
        zzdoy zzdoyVar = (zzdoy) collection;
        int i = zzdoyVar.size;
        if (i == 0) {
            return false;
        }
        int i2 = this.size;
        if (Integer.MAX_VALUE - i2 < i) {
            throw new OutOfMemoryError();
        }
        int i3 = i2 + i;
        long[] jArr = this.zzhje;
        if (i3 > jArr.length) {
            this.zzhje = Arrays.copyOf(jArr, i3);
        }
        System.arraycopy(zzdoyVar.zzhje, 0, this.zzhje, this.size, zzdoyVar.size);
        this.size = i3;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        zzavk();
        for (int i = 0; i < this.size; i++) {
            if (obj.equals(Long.valueOf(this.zzhje[i]))) {
                long[] jArr = this.zzhje;
                System.arraycopy(jArr, i + 1, jArr, i, (this.size - i) - 1);
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
        long jLongValue = ((Long) obj).longValue();
        zzavk();
        zzfj(i);
        long[] jArr = this.zzhje;
        long j = jArr[i];
        jArr[i] = jLongValue;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i) {
        zzavk();
        zzfj(i);
        long[] jArr = this.zzhje;
        long j = jArr[i];
        if (i < this.size - 1) {
            System.arraycopy(jArr, i + 1, jArr, i, (r3 - i) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j);
    }

    @Override // com.google.android.gms.internal.ads.zzdml, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i, Object obj) {
        zzr(i, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzdoj
    public final /* synthetic */ zzdoj<Long> zzfl(int i) {
        if (i < this.size) {
            throw new IllegalArgumentException();
        }
        return new zzdoy(Arrays.copyOf(this.zzhje, i), this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i) {
        return Long.valueOf(getLong(i));
    }

    static {
        zzdoy zzdoyVar = new zzdoy(new long[0], 0);
        zzhjd = zzdoyVar;
        zzdoyVar.zzavj();
    }
}
