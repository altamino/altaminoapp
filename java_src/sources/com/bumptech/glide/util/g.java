package com.bumptech.glide.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes8.dex */
public class g<T, Y> {
    private final Map<T, Y> cache = new LinkedHashMap(100, 0.75f, true);
    private long currentSize;
    private final long initialMaxSize;
    private long maxSize;

    public synchronized long d() {
        return this.maxSize;
    }

    public synchronized long getCurrentSize() {
        return this.currentSize;
    }

    @Nullable
    public synchronized Y h(@NonNull T t5) {
        return this.cache.get(t5);
    }

    protected int i(@Nullable Y y6) {
        return 1;
    }

    protected void j(@NonNull T t5, @Nullable Y y6) {
    }

    @Nullable
    public synchronized Y k(@NonNull T t5, @Nullable Y y6) {
        long jI = i(y6);
        if (jI >= this.maxSize) {
            j(t5, y6);
            return null;
        }
        if (y6 != null) {
            this.currentSize += jI;
        }
        Y yPut = this.cache.put(t5, y6);
        if (yPut != null) {
            this.currentSize -= (long) i(yPut);
            if (!yPut.equals(y6)) {
                j(t5, yPut);
            }
        }
        g();
        return yPut;
    }

    @Nullable
    public synchronized Y l(@NonNull T t5) {
        Y yRemove;
        yRemove = this.cache.remove(t5);
        if (yRemove != null) {
            this.currentSize -= (long) i(yRemove);
        }
        return yRemove;
    }

    protected synchronized void m(long j6) {
        while (this.currentSize > j6) {
            Iterator<Map.Entry<T, Y>> it = this.cache.entrySet().iterator();
            Map.Entry<T, Y> next = it.next();
            Y value = next.getValue();
            this.currentSize -= (long) i(value);
            T key = next.getKey();
            it.remove();
            j(key, value);
        }
    }

    private void g() {
        m(this.maxSize);
    }

    public void b() {
        m(0L);
    }

    public g(long j6) {
        this.initialMaxSize = j6;
        this.maxSize = j6;
    }
}
