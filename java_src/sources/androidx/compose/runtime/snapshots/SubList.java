package androidx.compose.runtime.snapshots;

import f8.d;
import j8.o;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.m0;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.n0;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.i;

/* JADX INFO: loaded from: classes5.dex */
final class SubList<T> implements List<T>, d {
    private int modification;
    private final int offset;

    @NotNull
    private final SnapshotStateList<T> parentList;
    private int size;

    /* JADX INFO: renamed from: androidx.compose.runtime.snapshots.SubList$listIterator$1, reason: invalid class name */
    public static final class AnonymousClass1 implements ListIterator<T>, f8.a {
        final /* synthetic */ n0 $current;
        final /* synthetic */ SubList<T> this$0;

        AnonymousClass1(n0 n0Var, SubList<T> subList) {
            this.$current = n0Var;
            this.this$0 = subList;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.$current.element < this.this$0.size() - 1;
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.$current.element >= 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public T next() {
            int i10 = this.$current.element + 1;
            SnapshotStateListKt.e(i10, this.this$0.size());
            this.$current.element = i10;
            return this.this$0.get(i10);
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.$current.element + 1;
        }

        @Override // java.util.ListIterator
        public T previous() {
            int i10 = this.$current.element;
            SnapshotStateListKt.e(i10, this.this$0.size());
            this.$current.element = i10 - 1;
            return this.this$0.get(i10);
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.$current.element;
        }

        @Override // java.util.ListIterator
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Void add(T t5) {
            SnapshotStateListKt.d();
            throw new i();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        @NotNull
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Void remove() {
            SnapshotStateListKt.d();
            throw new i();
        }

        @Override // java.util.ListIterator
        @NotNull
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public Void set(T t5) {
            SnapshotStateListKt.d();
            throw new i();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean add(T t5) {
        f();
        this.parentList.add(this.offset + size(), t5);
        this.size = size() + 1;
        this.modification = this.parentList.c();
        return true;
    }

    @Override // java.util.List
    public boolean addAll(int i10, @NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        f();
        boolean zAddAll = this.parentList.addAll(i10 + this.offset, elements);
        if (zAddAll) {
            this.size = size() + elements.size();
            this.modification = this.parentList.c();
        }
        return zAddAll;
    }

    public int c() {
        return this.size;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final /* bridge */ T remove(int i10) {
        return e(i10);
    }

    @Override // java.util.List, java.util.Collection
    public Object[] toArray() {
        return j.a(this);
    }

    public SubList(@NotNull SnapshotStateList<T> parentList, int i10, int i11) {
        t.j(parentList, "parentList");
        this.parentList = parentList;
        this.offset = i10;
        this.modification = parentList.c();
        this.size = i11 - i10;
    }

    private final void f() {
        if (this.parentList.c() != this.modification) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.List
    @NotNull
    public ListIterator<T> listIterator(int i10) {
        f();
        n0 n0Var = new n0();
        n0Var.element = i10 - 1;
        return new AnonymousClass1(n0Var, this);
    }

    @Override // java.util.List, java.util.Collection
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        remove(iIndexOf);
        return true;
    }

    @Override // java.util.List, java.util.Collection
    public boolean removeAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        Iterator<? extends Object> it = elements.iterator();
        while (true) {
            boolean z6 = false;
            while (it.hasNext()) {
                if (remove(it.next()) || z6) {
                    z6 = true;
                }
            }
            return z6;
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean retainAll(@NotNull Collection<? extends Object> elements) {
        t.j(elements, "elements");
        f();
        SnapshotStateList<T> snapshotStateList = this.parentList;
        int i10 = this.offset;
        int iR = snapshotStateList.r(elements, i10, size() + i10);
        if (iR > 0) {
            this.modification = this.parentList.c();
            this.size = size() - iR;
        }
        return iR > 0;
    }

    @Override // java.util.List
    @NotNull
    public List<T> subList(int i10, int i11) {
        if (i10 < 0 || i10 > i11 || i11 > size()) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        f();
        SnapshotStateList<T> snapshotStateList = this.parentList;
        int i12 = this.offset;
        return new SubList(snapshotStateList, i10 + i12, i11 + i12);
    }

    @Override // java.util.List, java.util.Collection
    public <T> T[] toArray(T[] array) {
        t.j(array, "array");
        return (T[]) j.b(this, array);
    }

    @Override // java.util.List, java.util.Collection
    public void clear() {
        if (size() > 0) {
            f();
            SnapshotStateList<T> snapshotStateList = this.parentList;
            int i10 = this.offset;
            snapshotStateList.q(i10, size() + i10);
            this.size = 0;
            this.modification = this.parentList.c();
        }
    }

    @Override // java.util.List, java.util.Collection
    public boolean contains(Object obj) {
        if (indexOf(obj) >= 0) {
            return true;
        }
        return false;
    }

    public T e(int i10) {
        f();
        T tRemove = this.parentList.remove(this.offset + i10);
        this.size = size() - 1;
        this.modification = this.parentList.c();
        return tRemove;
    }

    @Override // java.util.List
    public T get(int i10) {
        f();
        SnapshotStateListKt.e(i10, size());
        return this.parentList.get(this.offset + i10);
    }

    @Override // java.util.List
    public int indexOf(Object obj) {
        f();
        int i10 = this.offset;
        Iterator<Integer> it = o.v(i10, size() + i10).iterator();
        while (it.hasNext()) {
            int iNextInt = ((m0) it).nextInt();
            if (t.e(obj, this.parentList.get(iNextInt))) {
                return iNextInt - this.offset;
            }
        }
        return -1;
    }

    @Override // java.util.List, java.util.Collection
    public boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NotNull
    public Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(Object obj) {
        f();
        int size = this.offset + size();
        do {
            size--;
            if (size < this.offset) {
                return -1;
            }
        } while (!t.e(obj, this.parentList.get(size)));
        return size - this.offset;
    }

    @Override // java.util.List
    public T set(int i10, T t5) {
        SnapshotStateListKt.e(i10, size());
        f();
        T t10 = this.parentList.set(i10 + this.offset, t5);
        this.modification = this.parentList.c();
        return t10;
    }

    @Override // java.util.List, java.util.Collection
    public final /* bridge */ int size() {
        return c();
    }

    @Override // java.util.List
    public void add(int i10, T t5) {
        f();
        this.parentList.add(this.offset + i10, t5);
        this.size = size() + 1;
        this.modification = this.parentList.c();
    }

    @Override // java.util.List, java.util.Collection
    public boolean addAll(@NotNull Collection<? extends T> elements) {
        t.j(elements, "elements");
        return addAll(size(), elements);
    }
}
