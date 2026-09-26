package androidx.collection;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: loaded from: classes3.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {

    @Nullable
    ArrayMap<K, V>.EntrySet mEntrySet;

    @Nullable
    ArrayMap<K, V>.KeySet mKeySet;

    @Nullable
    ArrayMap<K, V>.ValueCollection mValues;

    final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return ArrayMap.this.mSize;
        }
    }

    final class KeyIterator extends IndexBasedArrayIterator<K> {
        KeyIterator() {
            super(ArrayMap.this.mSize);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected K a(int i10) {
            return ArrayMap.this.l(i10);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void b(int i10) {
            ArrayMap.this.n(i10);
        }
    }

    final class KeySet implements Set<K> {
        @Override // java.util.Set, java.util.Collection
        public Object[] toArray() {
            int i10 = ArrayMap.this.mSize;
            Object[] objArr = new Object[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                objArr[i11] = ArrayMap.this.l(i11);
            }
            return objArr;
        }

        KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(Collection<? extends K> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(Object obj) {
            return ArrayMap.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            return ArrayMap.this.q(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int i10 = ArrayMap.this.mSize - 1; i10 >= 0; i10--) {
                K kL = ArrayMap.this.l(i10);
                iHashCode += kL == null ? 0 : kL.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public Iterator<K> iterator() {
            return new KeyIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(Object obj) {
            int i10 = ArrayMap.this.i(obj);
            if (i10 < 0) {
                return false;
            }
            ArrayMap.this.n(i10);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            return ArrayMap.this.s(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            return ArrayMap.this.t(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return ArrayMap.this.mSize;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(Object obj) {
            return ArrayMap.r(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ArrayMap.this.u(tArr, 0);
        }
    }

    final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        int mEnd;
        boolean mEntryValid;
        int mIndex = -1;

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.mIndex < this.mEnd;
        }

        MapIterator() {
            this.mEnd = ArrayMap.this.mSize - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return ContainerHelpers.c(entry.getKey(), ArrayMap.this.l(this.mIndex)) && ContainerHelpers.c(entry.getValue(), ArrayMap.this.p(this.mIndex));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.mEntryValid) {
                return ArrayMap.this.l(this.mIndex);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.mEntryValid) {
                return ArrayMap.this.p(this.mIndex);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.mEntryValid) {
                throw new IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            K kL = ArrayMap.this.l(this.mIndex);
            V vP = ArrayMap.this.p(this.mIndex);
            return (kL == null ? 0 : kL.hashCode()) ^ (vP != null ? vP.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.mEntryValid) {
                throw new IllegalStateException();
            }
            ArrayMap.this.n(this.mIndex);
            this.mIndex--;
            this.mEnd--;
            this.mEntryValid = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            if (this.mEntryValid) {
                return ArrayMap.this.o(this.mIndex, v5);
            }
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public String toString() {
            return getKey() + "=" + getValue();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Map.Entry<K, V> next() {
            if (hasNext()) {
                this.mIndex++;
                this.mEntryValid = true;
                return this;
            }
            throw new NoSuchElementException();
        }
    }

    final class ValueCollection implements Collection<V> {
        @Override // java.util.Collection
        public Object[] toArray() {
            int i10 = ArrayMap.this.mSize;
            Object[] objArr = new Object[i10];
            for (int i11 = 0; i11 < i10; i11++) {
                objArr[i11] = ArrayMap.this.p(i11);
            }
            return objArr;
        }

        ValueCollection() {
        }

        @Override // java.util.Collection
        public boolean add(V v5) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(Collection<? extends V> collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Collection
        public boolean contains(Object obj) {
            return ArrayMap.this.k(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public Iterator<V> iterator() {
            return new ValueIterator();
        }

        @Override // java.util.Collection
        public boolean remove(Object obj) {
            int iK = ArrayMap.this.k(obj);
            if (iK < 0) {
                return false;
            }
            ArrayMap.this.n(iK);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(Collection<?> collection) {
            int i10 = ArrayMap.this.mSize;
            int i11 = 0;
            boolean z6 = false;
            while (i11 < i10) {
                if (collection.contains(ArrayMap.this.p(i11))) {
                    ArrayMap.this.n(i11);
                    i11--;
                    i10--;
                    z6 = true;
                }
                i11++;
            }
            return z6;
        }

        @Override // java.util.Collection
        public boolean retainAll(Collection<?> collection) {
            int i10 = ArrayMap.this.mSize;
            int i11 = 0;
            boolean z6 = false;
            while (i11 < i10) {
                if (!collection.contains(ArrayMap.this.p(i11))) {
                    ArrayMap.this.n(i11);
                    i11--;
                    i10--;
                    z6 = true;
                }
                i11++;
            }
            return z6;
        }

        @Override // java.util.Collection
        public int size() {
            return ArrayMap.this.mSize;
        }

        @Override // java.util.Collection
        public boolean containsAll(Collection<?> collection) {
            Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) ArrayMap.this.u(tArr, 1);
        }
    }

    final class ValueIterator extends IndexBasedArrayIterator<V> {
        ValueIterator() {
            super(ArrayMap.this.mSize);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected V a(int i10) {
            return ArrayMap.this.p(i10);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        protected void b(int i10) {
            ArrayMap.this.n(i10);
        }
    }

    public ArrayMap() {
    }

    static <T> boolean r(Set<T> set, Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set2 = (Set) obj;
            try {
                return set.size() == set2.size() && set.containsAll(set2);
            } catch (ClassCastException | NullPointerException unused) {
            }
        }
        return false;
    }

    public ArrayMap(int i10) {
        super(i10);
    }

    @Override // java.util.Map
    @NonNull
    public Set<Map.Entry<K, V>> entrySet() {
        ArrayMap<K, V>.EntrySet entrySet = this.mEntrySet;
        if (entrySet != null) {
            return entrySet;
        }
        ArrayMap<K, V>.EntrySet entrySet2 = new EntrySet();
        this.mEntrySet = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map
    @NonNull
    public Set<K> keySet() {
        ArrayMap<K, V>.KeySet keySet = this.mKeySet;
        if (keySet != null) {
            return keySet;
        }
        ArrayMap<K, V>.KeySet keySet2 = new KeySet();
        this.mKeySet = keySet2;
        return keySet2;
    }

    @Override // java.util.Map
    public void putAll(@NonNull Map<? extends K, ? extends V> map) {
        f(this.mSize + map.size());
        for (Map.Entry<? extends K, ? extends V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    public boolean s(@NonNull Collection<?> collection) {
        int i10 = this.mSize;
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            remove(it.next());
        }
        return i10 != this.mSize;
    }

    public boolean t(@NonNull Collection<?> collection) {
        int i10 = this.mSize;
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            if (!collection.contains(l(i11))) {
                n(i11);
            }
        }
        return i10 != this.mSize;
    }

    <T> T[] u(T[] tArr, int i10) {
        int i11 = this.mSize;
        if (tArr.length < i11) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i11));
        }
        for (int i12 = 0; i12 < i11; i12++) {
            tArr[i12] = this.mArray[(i12 << 1) + i10];
        }
        if (tArr.length > i11) {
            tArr[i11] = null;
        }
        return tArr;
    }

    @Override // java.util.Map
    @NonNull
    public Collection<V> values() {
        ArrayMap<K, V>.ValueCollection valueCollection = this.mValues;
        if (valueCollection != null) {
            return valueCollection;
        }
        ArrayMap<K, V>.ValueCollection valueCollection2 = new ValueCollection();
        this.mValues = valueCollection2;
        return valueCollection2;
    }

    public ArrayMap(SimpleArrayMap simpleArrayMap) {
        super(simpleArrayMap);
    }

    public boolean q(@NonNull Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }
}
