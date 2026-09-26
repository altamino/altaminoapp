package androidx.media3.datasource.cache;

import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface CacheEvictor extends Cache.Listener {
    boolean a();

    void b(Cache cache, String str, long j6, long j10);

    void onCacheInitialized();
}
