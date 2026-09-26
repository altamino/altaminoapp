package com.narvii.util;

import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
public class LruHashSet<E> {
    private static final Object PRESENT = new Object();
    LruCache lruCache;

    protected void onKeyEvicted(Object obj) {
    }

    public boolean add(E e) {
        return this.lruCache.put(e, PRESENT) == null;
    }

    public void clear() {
        this.lruCache.evictAll();
    }

    public boolean contains(E e) {
        return this.lruCache.get(e) != null;
    }

    public boolean remove(E e) {
        return this.lruCache.remove(e) == PRESENT;
    }

    public Set<E> snapShot() {
        return this.lruCache.snapshot().keySet();
    }

    public LruHashSet(int i10) {
        this.lruCache = new LruCache(i10) { // from class: com.narvii.util.LruHashSet.1
            @Override // com.narvii.util.LruCache
            protected void entryRemoved(boolean z6, Object obj, Object obj2, Object obj3) {
                if (z6) {
                    LruHashSet.this.onKeyEvicted(obj);
                }
            }
        };
    }
}
