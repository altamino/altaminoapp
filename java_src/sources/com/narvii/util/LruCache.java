package com.narvii.util;

import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: loaded from: classes11.dex */
public class LruCache<K, V> {
    private int createCount;
    private int evictionCount;
    private int hitCount;
    private final LinkedHashMap<K, V> map;
    private int maxSize;
    private int missCount;
    private int putCount;
    private int size;

    protected V create(K k) {
        return null;
    }

    public final synchronized int createCount() {
        return this.createCount;
    }

    protected void entryRemoved(boolean z6, K k, V v5, V v6) {
    }

    public final void evictAll() {
        trimToSize(-1);
    }

    public final synchronized int evictionCount() {
        return this.evictionCount;
    }

    public final synchronized int hitCount() {
        return this.hitCount;
    }

    public final synchronized int maxSize() {
        return this.maxSize;
    }

    public final synchronized int missCount() {
        return this.missCount;
    }

    public final synchronized int putCount() {
        return this.putCount;
    }

    public final synchronized int size() {
        return this.size;
    }

    protected int sizeOf(K k, V v5) {
        return 1;
    }

    public final synchronized Map<K, V> snapshot() {
        return new LinkedHashMap(this.map);
    }

    public final synchronized String toString() {
        int i10;
        int i11;
        try {
            i10 = this.hitCount;
            i11 = this.missCount + i10;
        } catch (Throwable th) {
            throw th;
        }
        return String.format(Locale.US, "LruCache[maxSize=%d,hits=%d,misses=%d,hitRate=%d%%]", Integer.valueOf(this.maxSize), Integer.valueOf(this.hitCount), Integer.valueOf(this.missCount), Integer.valueOf(i11 != 0 ? (i10 * 100) / i11 : 0));
    }

    public void trimToSize(int i10) {
        K key;
        V value;
        while (true) {
            synchronized (this) {
                try {
                    if (this.size < 0 || (this.map.isEmpty() && this.size != 0)) {
                        break;
                    }
                    if (this.size > i10 && !this.map.isEmpty()) {
                        Map.Entry<K, V> next = this.map.entrySet().iterator().next();
                        key = next.getKey();
                        value = next.getValue();
                        this.map.remove(key);
                        this.size -= safeSizeOf(key, value);
                        this.evictionCount++;
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
            entryRemoved(true, key, value, null);
        }
        throw new IllegalStateException(getClass().getName() + ".sizeOf() is reporting inconsistent results!");
    }

    public V get(K k) {
        V vPut;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                V v5 = this.map.get(k);
                if (v5 != null) {
                    this.hitCount++;
                    return v5;
                }
                this.missCount++;
                V vCreate = create(k);
                if (vCreate == null) {
                    return null;
                }
                synchronized (this) {
                    try {
                        this.createCount++;
                        vPut = this.map.put(k, vCreate);
                        if (vPut != null) {
                            this.map.put(k, vPut);
                        } else {
                            this.size += safeSizeOf(k, vCreate);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (vPut != null) {
                    entryRemoved(false, k, vCreate, vPut);
                    return vPut;
                }
                trimToSize(this.maxSize);
                return vCreate;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public V put(K k, V v5) {
        V vPut;
        if (k == null || v5 == null) {
            throw new NullPointerException("key == null || value == null");
        }
        synchronized (this) {
            try {
                this.putCount++;
                this.size += safeSizeOf(k, v5);
                vPut = this.map.put(k, v5);
                if (vPut != null) {
                    this.size -= safeSizeOf(k, vPut);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vPut != null) {
            entryRemoved(false, k, vPut, v5);
        }
        trimToSize(this.maxSize);
        return vPut;
    }

    public V remove(K k) {
        V vRemove;
        if (k == null) {
            throw new NullPointerException("key == null");
        }
        synchronized (this) {
            try {
                vRemove = this.map.remove(k);
                if (vRemove != null) {
                    this.size -= safeSizeOf(k, vRemove);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (vRemove != null) {
            entryRemoved(false, k, vRemove, null);
        }
        return vRemove;
    }

    public void resize(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        synchronized (this) {
            this.maxSize = i10;
        }
        trimToSize(i10);
    }

    public LruCache(int i10) {
        if (i10 > 0) {
            this.maxSize = i10;
            this.map = new LinkedHashMap<>(0, 0.75f, true);
            return;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    private int safeSizeOf(K k, V v5) {
        int iSizeOf = sizeOf(k, v5);
        if (iSizeOf >= 0) {
            return iSizeOf;
        }
        throw new IllegalStateException("Negative size: " + k + "=" + v5);
    }
}
