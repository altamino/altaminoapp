package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes9.dex */
final class ProtobufArrayList<E> extends AbstractProtobufList<E> implements RandomAccess {
    private static final ProtobufArrayList<Object> EMPTY_LIST;
    private E[] array;
    private int size;

    ProtobufArrayList() {
        this(new Object[10], 0);
    }

    public static <E> ProtobufArrayList<E> e() {
        return (ProtobufArrayList<E>) EMPTY_LIST;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e) {
        c();
        int i10 = this.size;
        E[] eArr = this.array;
        if (i10 == eArr.length) {
            this.array = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.array;
        int i11 = this.size;
        this.size = i11 + 1;
        eArr2[i11] = e;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    static {
        ProtobufArrayList<Object> protobufArrayList = new ProtobufArrayList<>(new Object[0], 0);
        EMPTY_LIST = protobufArrayList;
        protobufArrayList.makeImmutable();
    }

    private ProtobufArrayList(E[] eArr, int i10) {
        this.array = eArr;
        this.size = i10;
    }

    private static <E> E[] d(int i10) {
        return (E[]) new Object[i10];
    }

    private void f(int i10) {
        if (i10 < 0 || i10 >= this.size) {
            throw new IndexOutOfBoundsException(g(i10));
        }
    }

    private String g(int i10) {
        return "Index:" + i10 + ", Size:" + this.size;
    }

    @Override // androidx.datastore.preferences.protobuf.Internal.ProtobufList
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public ProtobufArrayList<E> mutableCopyWithCapacity(int i10) {
        if (i10 >= this.size) {
            return new ProtobufArrayList<>(Arrays.copyOf(this.array, i10), this.size);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        f(i10);
        return this.array[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public E remove(int i10) {
        c();
        f(i10);
        E[] eArr = this.array;
        E e = eArr[i10];
        int i11 = this.size;
        if (i10 < i11 - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (i11 - i10) - 1);
        }
        this.size--;
        ((AbstractList) this).modCount++;
        return e;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public E set(int i10, E e) {
        c();
        f(i10);
        E[] eArr = this.array;
        E e2 = eArr[i10];
        eArr[i10] = e;
        ((AbstractList) this).modCount++;
        return e2;
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public void add(int i10, E e) {
        int i11;
        c();
        if (i10 >= 0 && i10 <= (i11 = this.size)) {
            E[] eArr = this.array;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) d(((i11 * 3) / 2) + 1);
                System.arraycopy(this.array, 0, eArr2, 0, i10);
                System.arraycopy(this.array, i10, eArr2, i10 + 1, this.size - i10);
                this.array = eArr2;
            }
            this.array[i10] = e;
            this.size++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(g(i10));
    }
}
