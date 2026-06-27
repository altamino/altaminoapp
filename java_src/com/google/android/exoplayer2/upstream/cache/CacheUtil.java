package com.google.android.exoplayer2.upstream.cache;

import android.net.Uri;
import android.util.Pair;
import com.google.android.exoplayer2.upstream.DataSource;
import com.google.android.exoplayer2.upstream.DataSourceException;
import com.google.android.exoplayer2.upstream.DataSpec;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.upstream.cache.ContentMetadata;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.PriorityTaskManager;
import com.google.android.exoplayer2.util.Util;
import java.io.EOFException;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class CacheUtil {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;
    public static final CacheKeyFactory DEFAULT_CACHE_KEY_FACTORY = new CacheKeyFactory() { // from class: com.google.android.exoplayer2.upstream.cache.-$$Lambda$CacheUtil$uQzD0N2Max0h6DuMDYcCbN2peIo
        @Override // com.google.android.exoplayer2.upstream.cache.CacheKeyFactory
        public final String buildCacheKey(DataSpec dataSpec) {
            return CacheUtil.lambda$static$0(dataSpec);
        }
    };

    public interface ProgressListener {
        void onProgress(long j, long j2, long j3);
    }

    static /* synthetic */ String lambda$static$0(DataSpec dataSpec) {
        String str = dataSpec.key;
        return str != null ? str : generateKey(dataSpec.uri);
    }

    public static String generateKey(Uri uri) {
        return uri.toString();
    }

    public static Pair<Long, Long> getCached(DataSpec dataSpec, Cache cache, CacheKeyFactory cacheKeyFactory) {
        String strBuildCacheKey = buildCacheKey(dataSpec, cacheKeyFactory);
        long j = dataSpec.absoluteStreamPosition;
        long requestLength = getRequestLength(dataSpec, cache, strBuildCacheKey);
        long j2 = j;
        long j3 = requestLength;
        long j4 = 0;
        while (j3 != 0) {
            long cachedLength = cache.getCachedLength(strBuildCacheKey, j2, j3 != -1 ? j3 : Long.MAX_VALUE);
            if (cachedLength <= 0) {
                cachedLength = -cachedLength;
                if (cachedLength == Long.MAX_VALUE) {
                    break;
                }
            } else {
                j4 += cachedLength;
            }
            j2 += cachedLength;
            if (j3 == -1) {
                cachedLength = 0;
            }
            j3 -= cachedLength;
        }
        return Pair.create(Long.valueOf(requestLength), Long.valueOf(j4));
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheKeyFactory cacheKeyFactory, DataSource dataSource, ProgressListener progressListener, AtomicBoolean atomicBoolean) throws InterruptedException, IOException {
        cache(dataSpec, cache, cacheKeyFactory, new CacheDataSource(cache, dataSource), new byte[131072], null, 0, progressListener, atomicBoolean, false);
    }

    public static void cache(DataSpec dataSpec, Cache cache, CacheKeyFactory cacheKeyFactory, CacheDataSource cacheDataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, ProgressListener progressListener, AtomicBoolean atomicBoolean, boolean z) throws InterruptedException, IOException {
        long requestLength;
        ProgressNotifier progressNotifier;
        long j;
        Assertions.checkNotNull(cacheDataSource);
        Assertions.checkNotNull(bArr);
        String strBuildCacheKey = buildCacheKey(dataSpec, cacheKeyFactory);
        if (progressListener != null) {
            progressNotifier = new ProgressNotifier(progressListener);
            Pair<Long, Long> cached = getCached(dataSpec, cache, cacheKeyFactory);
            progressNotifier.init(((Long) cached.first).longValue(), ((Long) cached.second).longValue());
            requestLength = ((Long) cached.first).longValue();
        } else {
            requestLength = getRequestLength(dataSpec, cache, strBuildCacheKey);
            progressNotifier = null;
        }
        ProgressNotifier progressNotifier2 = progressNotifier;
        long j2 = dataSpec.absoluteStreamPosition;
        boolean z2 = requestLength == -1;
        long j3 = requestLength;
        long j4 = j2;
        while (j3 != 0) {
            throwExceptionIfInterruptedOrCancelled(atomicBoolean);
            long cachedLength = cache.getCachedLength(strBuildCacheKey, j4, z2 ? Long.MAX_VALUE : j3);
            if (cachedLength > 0) {
                j = cachedLength;
            } else {
                long j5 = -cachedLength;
                long j6 = j5 == Long.MAX_VALUE ? -1L : j5;
                j = j5;
                if (readAndDiscard(dataSpec, j4, j6, cacheDataSource, bArr, priorityTaskManager, i, progressNotifier2, j6 == j3, atomicBoolean) < j) {
                    if (z && !z2) {
                        throw new EOFException();
                    }
                    return;
                }
            }
            j4 += j;
            if (!z2) {
                j3 -= j;
            }
        }
    }

    private static long getRequestLength(DataSpec dataSpec, Cache cache, String str) {
        long j = dataSpec.length;
        if (j != -1) {
            return j;
        }
        long contentLength = ContentMetadata.CC.getContentLength(cache.getContentMetadata(str));
        if (contentLength == -1) {
            return -1L;
        }
        return contentLength - dataSpec.absoluteStreamPosition;
    }

    private static long readAndDiscard(DataSpec dataSpec, long j, long j2, DataSource dataSource, byte[] bArr, PriorityTaskManager priorityTaskManager, int i, ProgressNotifier progressNotifier, boolean z, AtomicBoolean atomicBoolean) throws InterruptedException, IOException {
        long jOpen;
        boolean z2;
        long j3 = j - dataSpec.absoluteStreamPosition;
        long j4 = -1;
        long j5 = j2 != -1 ? j3 + j2 : -1L;
        long j6 = j3;
        while (true) {
            if (priorityTaskManager != null) {
                priorityTaskManager.proceed(i);
            }
            throwExceptionIfInterruptedOrCancelled(atomicBoolean);
            try {
                if (j5 == j4) {
                    break;
                }
                try {
                    jOpen = dataSource.open(dataSpec.subrange(j6, j5 - j6));
                    z2 = true;
                    break;
                } catch (IOException e) {
                    if (!z) {
                        break;
                    }
                    try {
                        if (isCausedByPositionOutOfRange(e)) {
                            Util.closeQuietly(dataSource);
                            jOpen = j4;
                            z2 = false;
                            if (!z2) {
                                jOpen = dataSource.open(dataSpec.subrange(j6, j4));
                            }
                            if (z && progressNotifier != null && jOpen != j4) {
                                progressNotifier.onRequestLengthResolved(jOpen + j6);
                            }
                            while (true) {
                                if (j6 == j5) {
                                    break;
                                }
                                throwExceptionIfInterruptedOrCancelled(atomicBoolean);
                                int i2 = dataSource.read(bArr, 0, j5 != j4 ? (int) Math.min(bArr.length, j5 - j6) : bArr.length);
                                if (i2 != -1) {
                                    long j7 = i2;
                                    j6 += j7;
                                    if (progressNotifier != null) {
                                        progressNotifier.onBytesCached(j7);
                                    }
                                    j4 = -1;
                                } else if (progressNotifier != null) {
                                    progressNotifier.onRequestLengthResolved(j6);
                                }
                            }
                            return j6 - j3;
                        }
                    } catch (PriorityTaskManager.PriorityTooLowException unused) {
                        Util.closeQuietly(dataSource);
                        j4 = -1;
                    }
                    throw e;
                }
            } finally {
                Util.closeQuietly(dataSource);
            }
        }
        throw e;
    }

    public static void remove(DataSpec dataSpec, Cache cache, CacheKeyFactory cacheKeyFactory) {
        remove(cache, buildCacheKey(dataSpec, cacheKeyFactory));
    }

    public static void remove(Cache cache, String str) {
        Iterator<CacheSpan> it = cache.getCachedSpans(str).iterator();
        while (it.hasNext()) {
            try {
                cache.removeSpan(it.next());
            } catch (Cache.CacheException unused) {
            }
        }
    }

    static boolean isCausedByPositionOutOfRange(IOException iOException) {
        for (IOException cause = iOException; cause != null; cause = cause.getCause()) {
            if ((cause instanceof DataSourceException) && ((DataSourceException) cause).reason == 0) {
                return true;
            }
        }
        return false;
    }

    private static String buildCacheKey(DataSpec dataSpec, CacheKeyFactory cacheKeyFactory) {
        if (cacheKeyFactory == null) {
            cacheKeyFactory = DEFAULT_CACHE_KEY_FACTORY;
        }
        return cacheKeyFactory.buildCacheKey(dataSpec);
    }

    private static void throwExceptionIfInterruptedOrCancelled(AtomicBoolean atomicBoolean) throws InterruptedException {
        if (Thread.interrupted() || (atomicBoolean != null && atomicBoolean.get())) {
            throw new InterruptedException();
        }
    }

    private static final class ProgressNotifier {
        private long bytesCached;
        private final ProgressListener listener;
        private long requestLength;

        public ProgressNotifier(ProgressListener progressListener) {
            this.listener = progressListener;
        }

        public void init(long j, long j2) {
            this.requestLength = j;
            this.bytesCached = j2;
            this.listener.onProgress(j, j2, 0L);
        }

        public void onRequestLengthResolved(long j) {
            if (this.requestLength != -1 || j == -1) {
                return;
            }
            this.requestLength = j;
            this.listener.onProgress(j, this.bytesCached, 0L);
        }

        public void onBytesCached(long j) {
            this.bytesCached += j;
            this.listener.onProgress(this.requestLength, this.bytesCached, j);
        }
    }
}
