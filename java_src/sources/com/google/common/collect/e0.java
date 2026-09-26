package com.google.common.collect;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collection;
import java.util.Comparator;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class e0<K, V> extends c0<K, V> implements d1<K, V> {
    private static final long serialVersionUID = 0;
    private final transient d0<V> emptySet;
    private transient d0<Map.Entry<K, V>> entries;
    private transient e0<V, K> inverse;

    public static final class a<K, V> extends c0.c<K, V> {
        public e0<K, V> a() {
            Collection collectionEntrySet = this.builderMap.entrySet();
            Comparator<? super K> comparator = this.keyComparator;
            if (comparator != null) {
                collectionEntrySet = t0.a(comparator).d().b(collectionEntrySet);
            }
            return e0.v(collectionEntrySet, this.valueComparator);
        }
    }

    private static final class b<K, V> extends d0<Map.Entry<K, V>> {
        private final transient e0<K, V> multimap;

        @Override // com.google.common.collect.y
        boolean j() {
            return false;
        }

        @Override // com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.util.List
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return this.multimap.c(entry.getKey(), entry.getValue());
        }

        @Override // com.google.common.collect.d0, com.google.common.collect.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        /* JADX INFO: renamed from: m */
        public l1<Map.Entry<K, V>> iterator() {
            return this.multimap.i();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.multimap.size();
        }

        b(e0<K, V> e0Var) {
            this.multimap = e0Var;
        }
    }

    private static final class c {
        static final c1.b<e0> EMPTY_SET_FIELD_SETTER = c1.a(e0.class, "emptySet");
    }

    private static <V> d0.a<V> A(Comparator<? super V> comparator) {
        return comparator == null ? new d0.a<>() : new f0.a(comparator);
    }

    private static <V> d0<V> t(Comparator<? super V> comparator) {
        return comparator == null ? d0.x() : f0.K(comparator);
    }

    public static <K, V> e0<K, V> x() {
        return q.INSTANCE;
    }

    private static <V> d0<V> z(Comparator<? super V> comparator, Collection<? extends V> collection) {
        return comparator == null ? d0.t(collection) : f0.G(comparator, collection);
    }

    @Override // com.google.common.collect.c0
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d0<Map.Entry<K, V>> o() {
        d0<Map.Entry<K, V>> d0Var = this.entries;
        if (d0Var != null) {
            return d0Var;
        }
        b bVar = new b(this);
        this.entries = bVar;
        return bVar;
    }

    @Override // com.google.common.collect.c0
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public d0<V> q(K k) {
        return (d0) com.google.common.base.i.a((d0) this.map.get(k), this.emptySet);
    }

    Comparator<? super V> y() {
        d0<V> d0Var = this.emptySet;
        if (d0Var instanceof f0) {
            return ((f0) d0Var).comparator();
        }
        return null;
    }

    e0(b0<K, d0<V>> b0Var, int i10, Comparator<? super V> comparator) {
        super(b0Var, i10);
        this.emptySet = t(comparator);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        Comparator comparator = (Comparator) objectInputStream.readObject();
        int i10 = objectInputStream.readInt();
        if (i10 >= 0) {
            b0.a aVarA = b0.a();
            int i11 = 0;
            for (int i12 = 0; i12 < i10; i12++) {
                Object object = objectInputStream.readObject();
                int i13 = objectInputStream.readInt();
                if (i13 > 0) {
                    d0.a aVarA2 = A(comparator);
                    for (int i14 = 0; i14 < i13; i14++) {
                        aVarA2.a(objectInputStream.readObject());
                    }
                    d0 d0VarL = aVarA2.l();
                    if (d0VarL.size() == i13) {
                        aVarA.f(object, d0VarL);
                        i11 += i13;
                    } else {
                        String strValueOf = String.valueOf(object);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 40);
                        sb.append("Duplicate key-value pairs exist for key ");
                        sb.append(strValueOf);
                        throw new InvalidObjectException(sb.toString());
                    }
                } else {
                    StringBuilder sb2 = new StringBuilder(31);
                    sb2.append("Invalid value count ");
                    sb2.append(i13);
                    throw new InvalidObjectException(sb2.toString());
                }
            }
            try {
                c0.e.MAP_FIELD_SETTER.b(this, aVarA.c());
                c0.e.SIZE_FIELD_SETTER.a(this, i11);
                c.EMPTY_SET_FIELD_SETTER.b(this, t(comparator));
                return;
            } catch (IllegalArgumentException e) {
                throw ((InvalidObjectException) new InvalidObjectException(e.getMessage()).initCause(e));
            }
        }
        StringBuilder sb3 = new StringBuilder(29);
        sb3.append("Invalid key count ");
        sb3.append(i10);
        throw new InvalidObjectException(sb3.toString());
    }

    static <K, V> e0<K, V> v(Collection<? extends Map.Entry<? extends K, ? extends Collection<? extends V>>> collection, Comparator<? super V> comparator) {
        if (collection.isEmpty()) {
            return x();
        }
        b0.a aVar = new b0.a(collection.size());
        int size = 0;
        for (Map.Entry<? extends K, ? extends Collection<? extends V>> entry : collection) {
            K key = entry.getKey();
            d0 d0VarZ = z(comparator, entry.getValue());
            if (!d0VarZ.isEmpty()) {
                aVar.f(key, d0VarZ);
                size += d0VarZ.size();
            }
        }
        return new e0<>(aVar.c(), size, comparator);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(y());
        c1.d(this, objectOutputStream);
    }
}
