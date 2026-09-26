package com.bumptech.glide.load.engine.bitmap_recycle;

import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.bitmap_recycle.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
class g<K extends l, V> {
    private final a<K, V> head = new a<>();
    private final Map<K, a<K, V>> keyToEntry = new HashMap();

    private static class a<K, V> {
        final K key;
        a<K, V> next;
        a<K, V> prev;
        private List<V> values;

        a() {
            this(null);
        }

        a(K k) {
            this.prev = this;
            this.next = this;
            this.key = k;
        }

        public void a(V v5) {
            if (this.values == null) {
                this.values = new ArrayList();
            }
            this.values.add(v5);
        }

        public int c() {
            List<V> list = this.values;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Nullable
        public V b() {
            int iC = c();
            if (iC > 0) {
                return this.values.remove(iC - 1);
            }
            return null;
        }
    }

    private static <K, V> void e(a<K, V> aVar) {
        a<K, V> aVar2 = aVar.prev;
        aVar2.next = aVar.next;
        aVar.next.prev = aVar2;
    }

    private static <K, V> void g(a<K, V> aVar) {
        aVar.next.prev = aVar;
        aVar.prev.next = aVar;
    }

    @Nullable
    public V a(K k) {
        a<K, V> aVar = this.keyToEntry.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            this.keyToEntry.put(k, aVar);
        } else {
            k.a();
        }
        b(aVar);
        return aVar.b();
    }

    public void d(K k, V v5) {
        a<K, V> aVar = this.keyToEntry.get(k);
        if (aVar == null) {
            aVar = new a<>(k);
            c(aVar);
            this.keyToEntry.put(k, aVar);
        } else {
            k.a();
        }
        aVar.a(v5);
    }

    @Nullable
    public V f() {
        for (a aVar = this.head.prev; !aVar.equals(this.head); aVar = aVar.prev) {
            V v5 = (V) aVar.b();
            if (v5 != null) {
                return v5;
            }
            e(aVar);
            this.keyToEntry.remove(aVar.key);
            ((l) aVar.key).a();
        }
        return null;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
        a aVar = this.head.next;
        boolean z6 = false;
        while (!aVar.equals(this.head)) {
            sb.append(kotlinx.serialization.json.internal.b.BEGIN_OBJ);
            sb.append(aVar.key);
            sb.append(kotlinx.serialization.json.internal.b.COLON);
            sb.append(aVar.c());
            sb.append("}, ");
            aVar = aVar.next;
            z6 = true;
        }
        if (z6) {
            sb.delete(sb.length() - 2, sb.length());
        }
        sb.append(" )");
        return sb.toString();
    }

    g() {
    }

    private void b(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.head;
        aVar.prev = aVar2;
        aVar.next = aVar2.next;
        g(aVar);
    }

    private void c(a<K, V> aVar) {
        e(aVar);
        a<K, V> aVar2 = this.head;
        aVar.prev = aVar2.prev;
        aVar.next = aVar2;
        g(aVar);
    }
}
