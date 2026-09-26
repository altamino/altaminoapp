package androidx.arch.core.internal;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes10.dex */
@RestrictTo
public class FastSafeIterableMap<K, V> extends SafeIterableMap<K, V> {
    private final HashMap<K, SafeIterableMap.Entry<K, V>> mHashMap = new HashMap<>();

    public boolean contains(K k) {
        return this.mHashMap.containsKey(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    @Nullable
    protected SafeIterableMap.Entry<K, V> d(K k) {
        return this.mHashMap.get(k);
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V j(@NonNull K k, @NonNull V v5) {
        SafeIterableMap.Entry<K, V> entryD = d(k);
        if (entryD != null) {
            return entryD.mValue;
        }
        this.mHashMap.put(k, g(k, v5));
        return null;
    }

    @Override // androidx.arch.core.internal.SafeIterableMap
    public V m(@NonNull K k) {
        V v5 = (V) super.m(k);
        this.mHashMap.remove(k);
        return v5;
    }

    @Nullable
    public Map.Entry<K, V> p(K k) {
        if (contains(k)) {
            return this.mHashMap.get(k).mPrevious;
        }
        return null;
    }
}
