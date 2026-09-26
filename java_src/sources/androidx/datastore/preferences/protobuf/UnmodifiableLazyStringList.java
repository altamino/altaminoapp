package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes5.dex */
public class UnmodifiableLazyStringList extends AbstractList<String> implements LazyStringList, RandomAccess {
    private final LazyStringList list;

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public LazyStringList getUnmodifiableView() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public String get(int i10) {
        return this.list.get(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public Object getRaw(int i10) {
        return this.list.getRaw(i10);
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public List<?> getUnderlyingElements() {
        return this.list.getUnderlyingElements();
    }

    @Override // androidx.datastore.preferences.protobuf.LazyStringList
    public void h(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new Iterator<String>() { // from class: androidx.datastore.preferences.protobuf.UnmodifiableLazyStringList.2
            Iterator<String> iter;

            {
                this.iter = UnmodifiableLazyStringList.this.list.iterator();
            }

            @Override // java.util.Iterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public String next() {
                return this.iter.next();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.iter.hasNext();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i10) {
        return new ListIterator<String>(i10) { // from class: androidx.datastore.preferences.protobuf.UnmodifiableLazyStringList.1
            ListIterator<String> iter;
            final /* synthetic */ int val$index;

            {
                this.val$index = i10;
                this.iter = UnmodifiableLazyStringList.this.list.listIterator(i10);
            }

            @Override // java.util.ListIterator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public void add(String str) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public String next() {
                return this.iter.next();
            }

            @Override // java.util.ListIterator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public String previous() {
                return this.iter.previous();
            }

            @Override // java.util.ListIterator
            /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
            public void set(String str) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public boolean hasNext() {
                return this.iter.hasNext();
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return this.iter.hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return this.iter.nextIndex();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return this.iter.previousIndex();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.list.size();
    }

    public UnmodifiableLazyStringList(LazyStringList lazyStringList) {
        this.list = lazyStringList;
    }
}
