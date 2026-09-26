package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes3.dex */
final class IntArrayList extends AbstractProtobufList<Integer> implements Internal.IntList, RandomAccess, PrimitiveNonBoxingCollection {
    private static final IntArrayList EMPTY_LIST;
    private int[] array;
    private int size;

    IntArrayList() {
        this(new int[10], 0);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntArrayList)) {
            return super.equals(obj);
        }
        IntArrayList intArrayList = (IntArrayList) obj;
        if (this.size != intArrayList.size) {
            return false;
        }
        int[] iArr = intArrayList.array;
        for (int i10 = 0; i10 < this.size; i10++) {
            if (this.array[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.size; i11++) {
            i10 = (i10 * 31) + this.array[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        IntArrayList intArrayList = new IntArrayList(new int[0], 0);
        EMPTY_LIST = intArrayList;
        intArrayList.makeImmutable();
    }

    private IntArrayList(int[] iArr, int i10) {
        this.array = iArr;
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
    public Internal.IntList mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new IntArrayList(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.size; i10++) {
            if (obj.equals(Integer.valueOf(this.array[i10]))) {
                int[] iArr = this.array;
                System.arraycopy(iArr, i10 + 1, iArr, i10, (this.size - i10) - 1);
                this.size--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    private void f(int i10, int i11) {
        int i12;
        c();
        if (i10 >= 0 && i10 <= (i12 = this.size)) {
            int[] iArr = this.array;
            if (i12 < iArr.length) {
                System.arraycopy(iArr, i10, iArr, i10 + 1, i12 - i10);
            } else {
                int[] iArr2 = new int[((i12 * 3) / 2) + 1];
                System.arraycopy(iArr, 0, iArr2, 0, i10);
                System.arraycopy(this.array, i10, iArr2, i10 + 1, this.size - i10);
                this.array = iArr2;
            }
            this.array[i10] = i11;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(m(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        c();
        Internal.a(collection);
        if (!(collection instanceof IntArrayList)) {
            return super.addAll(collection);
        }
        IntArrayList intArrayList = (IntArrayList) collection;
        int i10 = intArrayList.size;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.size;
        if (Integer.MAX_VALUE - i11 >= i10) {
            int i12 = i11 + i10;
            int[] iArr = this.array;
            if (i12 > iArr.length) {
                this.array = Arrays.copyOf(iArr, i12);
            }
            System.arraycopy(intArrayList.array, 0, this.array, this.size, intArrayList.size);
            this.size = i12;
            ((AbstractList) this).modCount++;
            return true;
        }
        throw new OutOfMemoryError();
    }

    public void addInt(int i10) {
        c();
        int i11 = this.size;
        int[] iArr = this.array;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.array = iArr2;
        }
        int[] iArr3 = this.array;
        int i12 = this.size;
        this.size = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Integer num) {
        f(i10, num.intValue());
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public boolean add(Integer num) {
        addInt(num.intValue());
        return true;
    }

    public int getInt(int i10) {
        g(i10);
        return this.array[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public Integer get(int i10) {
        return Integer.valueOf(getInt(i10));
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Integer remove(int i10) {
        c();
        g(i10);
        int[] iArr = this.array;
        int i11 = iArr[i10];
        int i12 = this.size;
        if (i10 < i12 - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (i12 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Integer set(int i10, Integer num) {
        return Integer.valueOf(setInt(i10, num.intValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 >= i10) {
            int[] iArr = this.array;
            System.arraycopy(iArr, i11, iArr, i10, this.size - i11);
            this.size -= i11 - i10;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException("toIndex < fromIndex");
    }

    public int setInt(int i10, int i11) {
        c();
        g(i10);
        int[] iArr = this.array;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }
}
