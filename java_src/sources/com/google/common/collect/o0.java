package com.google.common.collect;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public final class o0 {

    private static class a<K, V> extends c<K, V> {
        private static final long serialVersionUID = 0;
        transient com.google.common.base.u<? extends List<V>> factory;

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.common.collect.c, com.google.common.collect.d
        /* JADX INFO: renamed from: D */
        public List<V> t() {
            return this.factory.get();
        }

        a(Map<K, Collection<V>> map, com.google.common.base.u<? extends List<V>> uVar) {
            super(map);
            this.factory = (com.google.common.base.u) com.google.common.base.o.k(uVar);
        }

        private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
            objectInputStream.defaultReadObject();
            this.factory = (com.google.common.base.u) objectInputStream.readObject();
            z((Map) objectInputStream.readObject());
        }

        private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
            objectOutputStream.defaultWriteObject();
            objectOutputStream.writeObject(this.factory);
            objectOutputStream.writeObject(s());
        }

        @Override // com.google.common.collect.d, com.google.common.collect.f
        Map<K, Collection<V>> e() {
            return v();
        }

        @Override // com.google.common.collect.d, com.google.common.collect.f
        Set<K> g() {
            return w();
        }
    }

    static abstract class b<K, V> extends AbstractCollection<Map.Entry<K, V>> {
        abstract m0<K, V> c();

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return c().c(entry.getKey(), entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return c().remove(entry.getKey(), entry.getValue());
        }

        b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            c().clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return c().size();
        }
    }

    static boolean a(m0<?, ?> m0Var, Object obj) {
        if (obj == m0Var) {
            return true;
        }
        if (obj instanceof m0) {
            return m0Var.b().equals(((m0) obj).b());
        }
        return false;
    }

    public static <K, V> j0<K, V> b(Map<K, Collection<V>> map, com.google.common.base.u<? extends List<V>> uVar) {
        return new a(map, uVar);
    }
}
