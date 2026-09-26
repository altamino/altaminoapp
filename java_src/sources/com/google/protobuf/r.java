package com.google.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes10.dex */
final class r extends a<Long> implements Internal.LongList, RandomAccess, g0 {
    private static final r EMPTY_LIST;
    private long[] array;
    private int size;

    r() {
        this(new long[10], 0);
    }

    public static r emptyList() {
        return EMPTY_LIST;
    }

    @Override // com.google.protobuf.Internal.LongList
    public void addLong(long j6) {
        ensureIsMutable();
        int i10 = this.size;
        long[] jArr = this.array;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.array = jArr2;
        }
        long[] jArr3 = this.array;
        int i11 = this.size;
        this.size = i11 + 1;
        jArr3[i11] = j6;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r)) {
            return super.equals(obj);
        }
        r rVar = (r) obj;
        if (this.size != rVar.size) {
            return false;
        }
        long[] jArr = rVar.array;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (this.array[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iHashLong = 1;
        for (int i10 = 0; i10 < this.size; i10++) {
            iHashLong = (iHashLong * 31) + Internal.hashLong(this.array[i10]);
        }
        return iHashLong;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        r rVar = new r(new long[0], 0);
        EMPTY_LIST = rVar;
        rVar.makeImmutable();
    }

    private r(long[] jArr, int i10) {
        this.array = jArr;
        this.size = i10;
    }

    private void ensureIndexInRange(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
        }
    }

    private String makeOutOfBoundsExceptionMessage(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override // java.util.AbstractList, java.util.List
    public Long get(int i10) {
        return Long.valueOf(getLong(i10));
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.array[i10] == jLongValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.protobuf.Internal.ProtobufList
    /* JADX INFO: renamed from: mutableCopyWithCapacity */
    public Internal.ProtobufList<Long> mutableCopyWithCapacity2(int i10) {
        if (i10 >= this.size) {
            return new r(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public Long remove(int i10) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        long[] jArr = this.array;
        long j6 = jArr[i10];
        int i11 = this.size;
        if (i10 < i11 - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (i11 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j6);
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public Long set(int i10, Long l) {
        return Long.valueOf(setLong(i10, l.longValue()));
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Long l) {
        addLong(l.longValue());
        return true;
    }

    @Override // com.google.protobuf.a, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        ensureIsMutable();
        Internal.checkNotNull(collection);
        if (!(collection instanceof r)) {
            return super.addAll(collection);
        }
        r rVar = (r) collection;
        int i10 = rVar.size;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.size;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            long[] jArr = this.array;
            if (i12 > jArr.length) {
                this.array = Arrays.copyOf(jArr, i12);
            }
            System.arraycopy(rVar.array, 0, this.array, this.size, rVar.size);
            this.size = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object obj) {
        if (indexOf(obj) != -1) {
            return true;
        }
        return false;
    }

    @Override // com.google.protobuf.Internal.LongList
    public long getLong(int i10) {
        ensureIndexInRange(i10);
        return this.array[i10];
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        ensureIsMutable();
        if (i11 >= i10) {
            long[] jArr = this.array;
            System.arraycopy(jArr, i11, jArr, i10, this.size - i11);
            this.size -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    @Override // com.google.protobuf.Internal.LongList
    public long setLong(int i10, long j6) {
        ensureIsMutable();
        ensureIndexInRange(i10);
        long[] jArr = this.array;
        long j10 = jArr[i10];
        jArr[i10] = j6;
        return j10;
    }

    @Override // com.google.protobuf.a, java.util.AbstractList, java.util.List
    public void add(int i10, Long l) {
        addLong(i10, l.longValue());
    }

    private void addLong(int i10, long j6) {
        int i11;
        ensureIsMutable();
        if (i10 >= 0 && i10 <= (i11 = this.size)) {
            long[] jArr = this.array;
            if (i11 < jArr.length) {
                System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
            } else {
                long[] jArr2 = new long[((i11 * 3) / 2) + 1];
                System.arraycopy(jArr, 0, jArr2, 0, i10);
                System.arraycopy(this.array, i10, jArr2, i10 + 1, this.size - i10);
                this.array = jArr2;
            }
            this.array[i10] = j6;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(makeOutOfBoundsExceptionMessage(i10));
    }
}
