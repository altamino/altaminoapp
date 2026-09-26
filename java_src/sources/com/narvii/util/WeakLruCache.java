package com.narvii.util;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WeakLruCache<K, V> extends LruCache<K, V> {
    private int checkCounter;
    private final HashMap<K, WeakReference<V>> weakCache;

    public WeakLruCache(int i10) {
        super(i10);
        this.weakCache = new HashMap<>();
    }

    @Override // com.narvii.util.LruCache
    public V get(K k) {
        V v5 = (V) super.get(k);
        synchronized (this.weakCache) {
            try {
                if (v5 == null) {
                    WeakReference<V> weakReference = this.weakCache.get(v5);
                    if (weakReference != null) {
                        v5 = weakReference.get();
                        if (v5 == null) {
                            this.weakCache.remove(k);
                        } else {
                            super.put(k, v5);
                        }
                    }
                } else {
                    WeakReference<V> weakReference2 = this.weakCache.get(k);
                    if (weakReference2 == null || weakReference2.get() != v5) {
                        this.weakCache.put(k, new WeakReference<>(v5));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return v5;
    }

    @Override // com.narvii.util.LruCache
    public V put(K k, V v5) {
        V v6 = (V) super.put(k, v5);
        synchronized (this.weakCache) {
            try {
                WeakReference<V> weakReference = this.weakCache.get(k);
                if (weakReference == null || weakReference.get() != v5) {
                    this.weakCache.put(k, new WeakReference<>(v5));
                }
                int i10 = this.checkCounter + 1;
                this.checkCounter = i10;
                if (i10 > 16) {
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
            } catch (Throwable th) {
                throw th;
            }
        }
        return v6;
    }
}
