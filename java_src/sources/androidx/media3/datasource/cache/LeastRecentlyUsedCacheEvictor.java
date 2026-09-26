package androidx.media3.datasource.cache;

import androidx.media3.common.util.UnstableApi;
import java.util.Comparator;
import java.util.TreeSet;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class LeastRecentlyUsedCacheEvictor implements CacheEvictor {
    private long currentSize;
    private final TreeSet<CacheSpan> leastRecentlyUsed = new TreeSet<>(new Comparator() { // from class: androidx.media3.datasource.cache.d
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return LeastRecentlyUsedCacheEvictor.g((CacheSpan) obj, (CacheSpan) obj2);
        }
    });
    private final long maxBytes;

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public boolean a() {
        return true;
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void onCacheInitialized() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int g(CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        long j6 = cacheSpan.lastTouchTimestamp;
        long j10 = cacheSpan2.lastTouchTimestamp;
        if (j6 - j10 == 0) {
            return cacheSpan.compareTo(cacheSpan2);
        }
        return j6 < j10 ? -1 : 1;
    }

    private void h(Cache cache, long j6) {
        while (this.currentSize + j6 > this.maxBytes && !this.leastRecentlyUsed.isEmpty()) {
            cache.a(this.leastRecentlyUsed.first());
        }
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void b(Cache cache, String str, long j6, long j10) {
        if (j10 != -1) {
            h(cache, j10);
        }
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void d(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.add(cacheSpan);
        this.currentSize += cacheSpan.length;
        h(cache, 0L);
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void e(Cache cache, CacheSpan cacheSpan) {
        this.leastRecentlyUsed.remove(cacheSpan);
        this.currentSize -= cacheSpan.length;
    }

    public LeastRecentlyUsedCacheEvictor(long j6) {
        this.maxBytes = j6;
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void c(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
        e(cache, cacheSpan);
        d(cache, cacheSpan2);
    }
}
