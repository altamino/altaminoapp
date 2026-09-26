package androidx.media3.datasource.cache;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes7.dex */
@UnstableApi
public final class NoOpCacheEvictor implements CacheEvictor {
    @Override // androidx.media3.datasource.cache.CacheEvictor
    public boolean a() {
        return false;
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void b(Cache cache, String str, long j6, long j10) {
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void c(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2) {
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void d(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // androidx.media3.datasource.cache.Cache.Listener
    public void e(Cache cache, CacheSpan cacheSpan) {
    }

    @Override // androidx.media3.datasource.cache.CacheEvictor
    public void onCacheInitialized() {
    }
}
