package com.narvii.util;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
public class WeakLruCache<K, V> extends LruCache<K, V> {
    private int checkCounter;
    private final HashMap<K, WeakReference<V>> weakCache;

    public WeakLruCache(int i) {
        super(i);
        this.weakCache = new HashMap<>();
    }

    @Override // com.narvii.util.LruCache
    public V get(K k) {
        V v = (V) super.get(k);
        synchronized (this.weakCache) {
            if (v == null) {
                WeakReference<V> weakReference = this.weakCache.get(v);
                if (weakReference != null) {
                    v = weakReference.get();
                    if (v == null) {
                        this.weakCache.remove(k);
                    } else {
                        super.put(k, v);
                    }
                }
            } else {
                WeakReference<V> weakReference2 = this.weakCache.get(k);
                if (weakReference2 == null || weakReference2.get() != v) {
                    this.weakCache.put(k, new WeakReference<>(v));
                }
            }
        }
        return v;
    }

    @Override // com.narvii.util.LruCache
    public V put(K k, V v) {
        V v2 = (V) super.put(k, v);
        synchronized (this.weakCache) {
            WeakReference<V> weakReference = this.weakCache.get(k);
            if (weakReference == null || weakReference.get() != v) {
                this.weakCache.put(k, new WeakReference<>(v));
            }
            int i = this.checkCounter + 1;
            this.checkCounter = i;
            if (i > 16) {
                this.checkCounter = 0;
                try {
                    Iterator<Map.Entry<K, WeakReference<V>>> it = this.weakCache.entrySet().iterator();
                    while (it.hasNext()) {
                        if (it.next().getValue().get() == null) {
                            it.remove();
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }
        return v2;
    }
}
