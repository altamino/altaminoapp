package androidx.databinding;

import androidx.collection.ArrayMap;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: loaded from: classes10.dex */
public class ObservableArrayMap<K, V> extends ArrayMap<K, V> implements ObservableMap<K, V> {
    private transient MapChangeRegistry mListeners;

    private void v(Object obj) {
        MapChangeRegistry mapChangeRegistry = this.mListeners;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.e(this, 0, obj);
        }
    }

    @Override // androidx.databinding.ObservableMap
    public void b(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        if (this.mListeners == null) {
            this.mListeners = new MapChangeRegistry();
        }
        this.mListeners.b(onMapChangedCallback);
    }

    @Override // androidx.databinding.ObservableMap
    public void c(ObservableMap.OnMapChangedCallback<? extends ObservableMap<K, V>, K, V> onMapChangedCallback) {
        MapChangeRegistry mapChangeRegistry = this.mListeners;
        if (mapChangeRegistry != null) {
            mapChangeRegistry.j(onMapChangedCallback);
        }
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public void clear() {
        if (!isEmpty()) {
            super.clear();
            v(null);
        }
    }

    @Override // androidx.collection.SimpleArrayMap
    public V n(int i10) {
        K kL = l(i10);
        V v5 = (V) super.n(i10);
        if (v5 != null) {
            v(kL);
        }
        return v5;
    }

    @Override // androidx.collection.SimpleArrayMap
    public V o(int i10, V v5) {
        K kL = l(i10);
        V v6 = (V) super.o(i10, v5);
        v(kL);
        return v6;
    }

    @Override // androidx.collection.SimpleArrayMap, java.util.Map
    public V put(K k, V v5) {
        super.put(k, v5);
        v(k);
        return v5;
    }

    @Override // androidx.collection.ArrayMap
    public boolean s(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean z6 = false;
        while (it.hasNext()) {
            int i10 = i(it.next());
            if (i10 >= 0) {
                n(i10);
                z6 = true;
            }
        }
        return z6;
    }

    @Override // androidx.collection.ArrayMap
    public boolean t(Collection<?> collection) {
        boolean z6 = false;
        for (int size = size() - 1; size >= 0; size--) {
            if (!collection.contains(l(size))) {
                n(size);
                z6 = true;
            }
        }
        return z6;
    }
}
