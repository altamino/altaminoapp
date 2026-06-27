package com.narvii.util;

import java.util.Set;

/* loaded from: classes3.dex */
public class LruHashSet<E> {
    private static final Object PRESENT = new Object();
    LruCache lruCache;

    protected void onKeyEvicted(Object obj) {
    }

    public LruHashSet(int i) {
        this.lruCache = new LruCache(i) { // from class: com.narvii.util.LruHashSet.1
            @Override // com.narvii.util.LruCache
            protected void entryRemoved(boolean z, Object obj, Object obj2, Object obj3) {
                if (z) {
                    LruHashSet.this.onKeyEvicted(obj);
                }
            }
        };
    }

    public boolean contains(E e) {
        return this.lruCache.get(e) != null;
    }

    public boolean add(E e) {
        return this.lruCache.put(e, PRESENT) == null;
    }

    public boolean remove(E e) {
        return this.lruCache.remove(e) == PRESENT;
    }

    public void clear() {
        this.lruCache.evictAll();
    }

    public Set<E> snapShot() {
        return this.lruCache.snapshot().keySet();
    }
}
