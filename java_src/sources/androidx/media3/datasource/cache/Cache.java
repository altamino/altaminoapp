package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.media3.common.util.UnstableApi;
import java.io.File;
import java.io.IOException;
import java.util.NavigableSet;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public interface Cache {
    public static final long UID_UNSET = -1;

    public static class CacheException extends IOException {
        public CacheException(String str) {
            super(str);
        }

        public CacheException(Throwable th) {
            super(th);
        }

        public CacheException(String str, Throwable th) {
            super(str, th);
        }
    }

    public interface Listener {
        void c(Cache cache, CacheSpan cacheSpan, CacheSpan cacheSpan2);

        void d(Cache cache, CacheSpan cacheSpan);

        void e(Cache cache, CacheSpan cacheSpan);
    }

    @WorkerThread
    void a(CacheSpan cacheSpan);

    NavigableSet<CacheSpan> b(String str, Listener listener);

    @WorkerThread
    CacheSpan c(String str, long j6, long j10) throws InterruptedException, CacheException;

    @WorkerThread
    void d(String str);

    long e(String str, long j6, long j10);

    @Nullable
    @WorkerThread
    CacheSpan f(String str, long j6, long j10) throws CacheException;

    void g(CacheSpan cacheSpan);

    long getCacheSpace();

    long getCachedLength(String str, long j6, long j10);

    NavigableSet<CacheSpan> getCachedSpans(String str);

    ContentMetadata getContentMetadata(String str);

    @WorkerThread
    void h(File file, long j6) throws CacheException;

    @WorkerThread
    void i(String str, ContentMetadataMutations contentMetadataMutations) throws CacheException;

    boolean isCached(String str, long j6, long j10);

    @WorkerThread
    void release();

    @WorkerThread
    File startFile(String str, long j6, long j10) throws CacheException;
}
