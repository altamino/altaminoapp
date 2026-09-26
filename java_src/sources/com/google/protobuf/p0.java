package com.google.protobuf;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
class p0<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    private List<p0<K, V>.e> entryList;
    private boolean isImmutable;
    private volatile p0<K, V>.c lazyDescendingEntrySet;
    private volatile p0<K, V>.g lazyEntrySet;
    private final int maxArraySize;
    private Map<K, V> overflowEntries;
    private Map<K, V> overflowEntriesDescending;

    /* JADX INFO: Add missing generic type declarations: [FieldDescriptorType] */
    static class a<FieldDescriptorType> extends p0<FieldDescriptorType, Object> {
        a(int i10) {
            super(i10, null);
        }

        @Override // com.google.protobuf.p0, java.util.AbstractMap, java.util.Map
        public /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return super.put((FieldSet.FieldDescriptorLite) obj, obj2);
        }

        @Override // com.google.protobuf.p0
        public void makeImmutable() {
            if (!isImmutable()) {
                for (int i10 = 0; i10 < getNumArrayEntries(); i10++) {
                    Map.Entry<FieldDescriptorType, Object> arrayEntryAt = getArrayEntryAt(i10);
                    if (((FieldSet.FieldDescriptorLite) arrayEntryAt.getKey()).isRepeated()) {
                        arrayEntryAt.setValue(Collections.unmodifiableList((List) arrayEntryAt.getValue()));
                    }
                }
                for (Map.Entry<FieldDescriptorType, Object> entry : getOverflowEntries()) {
                    if (((FieldSet.FieldDescriptorLite) entry.getKey()).isRepeated()) {
                        entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                    }
                }
            }
            super.makeImmutable();
        }
    }

    private class b implements Iterator<Map.Entry<K, V>> {
        private Iterator<Map.Entry<K, V>> lazyOverflowIterator;
        private int pos;

        private b() {
            this.pos = p0.this.entryList.size();
        }

        private Iterator<Map.Entry<K, V>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = p0.this.overflowEntriesDescending.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            int i10 = this.pos;
            return (i10 > 0 && i10 <= p0.this.entryList.size()) || getOverflowIterator().hasNext();
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            if (getOverflowIterator().hasNext()) {
                return getOverflowIterator().next();
            }
            List list = p0.this.entryList;
            int i10 = this.pos - 1;
            this.pos = i10;
            return (Map.Entry) list.get(i10);
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        /* synthetic */ b(p0 p0Var, a aVar) {
            this();
        }
    }

    private class c extends p0<K, V>.g {
        private c() {
            super(p0.this, null);
        }

        /* synthetic */ c(p0 p0Var, a aVar) {
            this();
        }

        @Override // com.google.protobuf.p0.g, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new b(p0.this, null);
        }
    }

    private static class d {
        private static final Iterator<Object> ITERATOR = new a();
        private static final Iterable<Object> ITERABLE = new b();

        static class a implements Iterator<Object> {
            @Override // java.util.Iterator
            public boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public void remove() {
                throw new UnsupportedOperationException();
            }

            a() {
            }
        }

        static <T> Iterable<T> iterable() {
            return (Iterable<T>) ITERABLE;
        }

        static class b implements Iterable<Object> {
            b() {
            }

            @Override // java.lang.Iterable
            public Iterator<Object> iterator() {
                return d.ITERATOR;
            }
        }

        private d() {
        }
    }

    private class e implements Map.Entry<K, V>, Comparable<p0<K, V>.e> {
        private final K key;
        private V value;

        e(p0 p0Var, Map.Entry<K, V> entry) {
            this(entry.getKey(), entry.getValue());
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return equals(this.key, entry.getKey()) && equals(this.value, entry.getValue());
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.value;
        }

        e(K k, V v5) {
            this.key = k;
            this.value = v5;
        }

        @Override // java.lang.Comparable
        public int compareTo(p0<K, V>.e eVar) {
            return getKey().compareTo(eVar.getKey());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            K k = this.key;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v5 = this.value;
            return iHashCode ^ (v5 != null ? v5.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public V setValue(V v5) {
            p0.this.checkMutable();
            V v6 = this.value;
            this.value = v5;
            return v6;
        }

        public String toString() {
            return this.key + "=" + this.value;
        }

        private boolean equals(Object obj, Object obj2) {
            if (obj == null) {
                return obj2 == null;
            }
            return obj.equals(obj2);
        }
    }

    private class f implements Iterator<Map.Entry<K, V>> {
        private Iterator<Map.Entry<K, V>> lazyOverflowIterator;
        private boolean nextCalledBeforeRemove;
        private int pos;

        private f() {
            this.pos = -1;
        }

        /* synthetic */ f(p0 p0Var, a aVar) {
            this();
        }

        private Iterator<Map.Entry<K, V>> getOverflowIterator() {
            if (this.lazyOverflowIterator == null) {
                this.lazyOverflowIterator = p0.this.overflowEntries.entrySet().iterator();
            }
            return this.lazyOverflowIterator;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.pos + 1 >= p0.this.entryList.size()) {
                return !p0.this.overflowEntries.isEmpty() && getOverflowIterator().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public Map.Entry<K, V> next() {
            this.nextCalledBeforeRemove = true;
            int i10 = this.pos + 1;
            this.pos = i10;
            return i10 < p0.this.entryList.size() ? (Map.Entry) p0.this.entryList.get(this.pos) : getOverflowIterator().next();
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.nextCalledBeforeRemove) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.nextCalledBeforeRemove = false;
            p0.this.checkMutable();
            if (this.pos >= p0.this.entryList.size()) {
                getOverflowIterator().remove();
                return;
            }
            p0 p0Var = p0.this;
            int i10 = this.pos;
            this.pos = i10 - 1;
            p0Var.removeArrayEntryAt(i10);
        }
    }

    private class g extends AbstractSet<Map.Entry<K, V>> {
        private g() {
        }

        /* synthetic */ g(p0 p0Var, a aVar) {
            this();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean add(Map.Entry<K, V> entry) {
            if (contains(entry)) {
                return false;
            }
            p0.this.put((Comparable) entry.getKey(), (Object) entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            p0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = p0.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new f(p0.this, null);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            p0.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return p0.this.size();
        }
    }

    /* synthetic */ p0(int i10, a aVar) {
        this(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof p0)) {
            return super.equals(obj);
        }
        p0 p0Var = (p0) obj;
        int size = size();
        if (size != p0Var.size()) {
            return false;
        }
        int numArrayEntries = getNumArrayEntries();
        if (numArrayEntries != p0Var.getNumArrayEntries()) {
            return entrySet().equals(p0Var.entrySet());
        }
        for (int i10 = 0; i10 < numArrayEntries; i10++) {
            if (!getArrayEntryAt(i10).equals(p0Var.getArrayEntryAt(i10))) {
                return false;
            }
        }
        if (numArrayEntries != size) {
            return this.overflowEntries.equals(p0Var.overflowEntries);
        }
        return true;
    }

    public boolean isImmutable() {
        return this.isImmutable;
    }

    private p0(int i10) {
        this.maxArraySize = i10;
        this.entryList = Collections.emptyList();
        this.overflowEntries = Collections.emptyMap();
        this.overflowEntriesDescending = Collections.emptyMap();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0026  */
    /* JADX WARN: Code duplicated, block: B:17:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0040 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0046 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x003c A[SYNTHETIC] */
    private int binarySearchInArray(K k) {
        int i10;
        int i11;
        int i12;
        int iCompareTo;
        int size = this.entryList.size();
        int i13 = size - 1;
        if (i13 < 0) {
            i10 = 0;
            while (i10 <= i13) {
                i12 = (i10 + i13) / 2;
                iCompareTo = k.compareTo(this.entryList.get(i12).getKey());
                if (iCompareTo < 0) {
                    i13 = i12 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i12;
                    }
                    i10 = i12 + 1;
                }
            }
            i11 = i10 + 1;
        } else {
            int iCompareTo2 = k.compareTo(this.entryList.get(i13).getKey());
            if (iCompareTo2 > 0) {
                i11 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i13;
                }
                i10 = 0;
                while (i10 <= i13) {
                    i12 = (i10 + i13) / 2;
                    iCompareTo = k.compareTo(this.entryList.get(i12).getKey());
                    if (iCompareTo < 0) {
                        i13 = i12 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i12;
                        }
                        i10 = i12 + 1;
                    }
                }
                i11 = i10 + 1;
            }
        }
        return -i11;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkMutable() {
        if (this.isImmutable) {
            throw new UnsupportedOperationException();
        }
    }

    static <FieldDescriptorType extends FieldSet.FieldDescriptorLite<FieldDescriptorType>> p0<FieldDescriptorType, Object> newFieldMap(int i10) {
        return new a(i10);
    }

    static <K extends Comparable<K>, V> p0<K, V> newInstanceForTest(int i10) {
        return new p0<>(i10);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return binarySearchInArray(comparable) >= 0 || this.overflowEntries.containsKey(comparable);
    }

    Set<Map.Entry<K, V>> descendingEntrySet() {
        if (this.lazyDescendingEntrySet == null) {
            this.lazyDescendingEntrySet = new c(this, null);
        }
        return this.lazyDescendingEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        if (this.lazyEntrySet == null) {
            this.lazyEntrySet = new g(this, null);
        }
        return this.lazyEntrySet;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iBinarySearchInArray = binarySearchInArray(comparable);
        return iBinarySearchInArray >= 0 ? this.entryList.get(iBinarySearchInArray).getValue() : this.overflowEntries.get(comparable);
    }

    public Map.Entry<K, V> getArrayEntryAt(int i10) {
        return this.entryList.get(i10);
    }

    public int getNumArrayEntries() {
        return this.entryList.size();
    }

    public int getNumOverflowEntries() {
        return this.overflowEntries.size();
    }

    public Iterable<Map.Entry<K, V>> getOverflowEntries() {
        return this.overflowEntries.isEmpty() ? d.iterable() : this.overflowEntries.entrySet();
    }

    Iterable<Map.Entry<K, V>> getOverflowEntriesDescending() {
        return this.overflowEntriesDescending.isEmpty() ? d.iterable() : this.overflowEntriesDescending.entrySet();
    }

    public void makeImmutable() {
        if (this.isImmutable) {
            return;
        }
        this.overflowEntries = this.overflowEntries.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.overflowEntries);
        this.overflowEntriesDescending = this.overflowEntriesDescending.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.overflowEntriesDescending);
        this.isImmutable = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V put(K k, V v5) {
        checkMutable();
        int iBinarySearchInArray = binarySearchInArray(k);
        if (iBinarySearchInArray >= 0) {
            return this.entryList.get(iBinarySearchInArray).setValue(v5);
        }
        ensureEntryArrayMutable();
        int i10 = -(iBinarySearchInArray + 1);
        if (i10 >= this.maxArraySize) {
            return getOverflowEntriesMutable().put(k, v5);
        }
        int size = this.entryList.size();
        int i11 = this.maxArraySize;
        if (size == i11) {
            p0<K, V>.e eVarRemove = this.entryList.remove(i11 - 1);
            getOverflowEntriesMutable().put(eVarRemove.getKey(), eVarRemove.getValue());
        }
        this.entryList.add(i10, new e(k, v5));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int size() {
        return this.entryList.size() + this.overflowEntries.size();
    }

    private void ensureEntryArrayMutable() {
        checkMutable();
        if (this.entryList.isEmpty() && !(this.entryList instanceof ArrayList)) {
            this.entryList = new ArrayList(this.maxArraySize);
        }
    }

    private SortedMap<K, V> getOverflowEntriesMutable() {
        checkMutable();
        if (this.overflowEntries.isEmpty() && !(this.overflowEntries instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.overflowEntries = treeMap;
            this.overflowEntriesDescending = treeMap.descendingMap();
        }
        return (SortedMap) this.overflowEntries;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public V removeArrayEntryAt(int i10) {
        checkMutable();
        V value = this.entryList.remove(i10).getValue();
        if (!this.overflowEntries.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = getOverflowEntriesMutable().entrySet().iterator();
            this.entryList.add(new e(this, it.next()));
            it.remove();
        }
        return value;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public void clear() {
        checkMutable();
        if (!this.entryList.isEmpty()) {
            this.entryList.clear();
        }
        if (!this.overflowEntries.isEmpty()) {
            this.overflowEntries.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        int numArrayEntries = getNumArrayEntries();
        int iHashCode = 0;
        for (int i10 = 0; i10 < numArrayEntries; i10++) {
            iHashCode += this.entryList.get(i10).hashCode();
        }
        if (getNumOverflowEntries() > 0) {
            return iHashCode + this.overflowEntries.hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        checkMutable();
        Comparable comparable = (Comparable) obj;
        int iBinarySearchInArray = binarySearchInArray(comparable);
        if (iBinarySearchInArray >= 0) {
            return removeArrayEntryAt(iBinarySearchInArray);
        }
        if (this.overflowEntries.isEmpty()) {
            return null;
        }
        return this.overflowEntries.remove(comparable);
    }
}
