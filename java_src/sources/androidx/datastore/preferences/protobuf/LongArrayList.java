package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
final class LongArrayList extends AbstractProtobufList<Long> implements Internal.LongList, RandomAccess, PrimitiveNonBoxingCollection {
    private static final LongArrayList EMPTY_LIST;
    private long[] array;
    private int size;

    LongArrayList() {
        this(new long[10], 0);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LongArrayList)) {
            return super.equals(obj);
        }
        LongArrayList longArrayList = (LongArrayList) obj;
        if (this.size != longArrayList.size) {
            return false;
        }
        long[] jArr = longArrayList.array;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (this.array[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iF = 1;
        for (int i10 = 0; i10 < this.size; i10++) {
            iF = (iF * 31) + Internal.f(this.array[i10]);
        }
        return iF;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        LongArrayList longArrayList = new LongArrayList(new long[0], 0);
        EMPTY_LIST = longArrayList;
        longArrayList.makeImmutable();
    }

    private LongArrayList(long[] jArr, int i10) {
        this.array = jArr;
        this.size = i10;
    }

    private void g(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    private String m(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public Internal.LongList mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new LongArrayList(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.size; i10++) {
            if (obj.equals(Long.valueOf(this.array[i10]))) {
                long[] jArr = this.array;
                System.arraycopy(jArr, i10 + 1, jArr, i10, (this.size - i10) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    private void f(int i10, long j6) {
        int i11;
        c();
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
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        c();
        Internal.a(collection);
        if (!(collection instanceof LongArrayList)) {
            return super.addAll(collection);
        }
        LongArrayList longArrayList = (LongArrayList) collection;
        int i10 = longArrayList.size;
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
            System.arraycopy(longArrayList.array, 0, this.array, this.size, longArrayList.size);
            this.size = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public void addLong(long j6) {
        c();
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

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Long l) {
        f(i10, l.longValue());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean add(Long l) {
        addLong(l.longValue());
        return true;
    }

    public long getLong(int i10) {
        g(i10);
        return this.array[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Long get(int i10) {
        return Long.valueOf(getLong(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Long remove(int i10) {
        c();
        g(i10);
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

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Long set(int i10, Long l) {
        return Long.valueOf(setLong(i10, l.longValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 >= i10) {
            long[] jArr = this.array;
            System.arraycopy(jArr, i11, jArr, i10, this.size - i11);
            this.size -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public long setLong(int i10, long j6) {
        c();
        g(i10);
        long[] jArr = this.array;
        long j10 = jArr[i10];
        jArr[i10] = j6;
        return j10;
    }
}
