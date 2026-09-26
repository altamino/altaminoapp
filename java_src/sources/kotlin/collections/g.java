package kotlin.collections;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes10.dex */
public abstract class g<K, V> extends AbstractMap<K, V> implements Map<K, V>, f8.e {
    public abstract Set a();

    public abstract /* bridge */ Set<Object> e();

    public abstract /* bridge */ int f();

    public abstract /* bridge */ Collection<Object> g();

    protected g() {
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<Map.Entry<K, V>> entrySet() {
        return a();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Set<K> keySet() {
        return (Set<K>) e();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ int size() {
        return f();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ Collection<V> values() {
        return (Collection<V>) g();
    }
}
