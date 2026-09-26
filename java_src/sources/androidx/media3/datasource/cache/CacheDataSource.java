package androidx.media3.datasource.cache;

import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.PriorityTaskManager;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSourceException;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.FileDataSource;
import androidx.media3.datasource.PlaceholderDataSource;
import androidx.media3.datasource.PriorityDataSource;
import androidx.media3.datasource.TeeDataSource;
import androidx.media3.datasource.TransferListener;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class CacheDataSource implements DataSource {
    public static final int CACHE_IGNORED_REASON_ERROR = 0;
    public static final int CACHE_IGNORED_REASON_UNSET_LENGTH = 1;
    private static final int CACHE_NOT_IGNORED = -1;
    public static final int FLAG_BLOCK_ON_CACHE = 1;
    public static final int FLAG_IGNORE_CACHE_FOR_UNSET_LENGTH_REQUESTS = 4;
    public static final int FLAG_IGNORE_CACHE_ON_ERROR = 2;
    private static final long MIN_READ_BEFORE_CHECKING_CACHE = 102400;

    @Nullable
    private Uri actualUri;
    private final boolean blockOnCache;
    private long bytesRemaining;
    private final Cache cache;
    private final CacheKeyFactory cacheKeyFactory;
    private final DataSource cacheReadDataSource;

    @Nullable
    private final DataSource cacheWriteDataSource;
    private long checkCachePosition;

    @Nullable
    private DataSource currentDataSource;
    private long currentDataSourceBytesRead;

    @Nullable
    private DataSpec currentDataSpec;

    @Nullable
    private CacheSpan currentHoleSpan;
    private boolean currentRequestIgnoresCache;

    @Nullable
    private final EventListener eventListener;
    private final boolean ignoreCacheForUnsetLengthRequests;
    private final boolean ignoreCacheOnError;
    private long readPosition;

    @Nullable
    private DataSpec requestDataSpec;
    private boolean seenCacheError;
    private long totalCachedBytesRead;
    private final DataSource upstreamDataSource;

    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.PARAMETER, ElementType.LOCAL_VARIABLE, ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface CacheIgnoredReason {
    }

    public interface EventListener {
        void onCacheIgnored(int i10);

        void onCachedBytesRead(long j6, long j10);
    }

    public static final class Factory implements DataSource.Factory {
        private Cache cache;
        private boolean cacheIsReadOnly;

        @Nullable
        private DataSink.Factory cacheWriteDataSinkFactory;

        @Nullable
        private EventListener eventListener;
        private int flags;

        @Nullable
        private DataSource.Factory upstreamDataSourceFactory;
        private int upstreamPriority;

        @Nullable
        private PriorityTaskManager upstreamPriorityTaskManager;
        private DataSource.Factory cacheReadDataSourceFactory = new FileDataSource.Factory();
        private CacheKeyFactory cacheKeyFactory = CacheKeyFactory.DEFAULT;

        @Nullable
        public Cache e() {
            return this.cache;
        }

        public CacheKeyFactory f() {
            return this.cacheKeyFactory;
        }

        @Nullable
        public PriorityTaskManager g() {
            return this.upstreamPriorityTaskManager;
        }

        public Factory h(Cache cache) {
            this.cache = cache;
            return this;
        }

        public Factory i(@Nullable DataSource.Factory factory) {
            this.upstreamDataSourceFactory = factory;
            return this;
        }

        private CacheDataSource d(@Nullable DataSource dataSource, int i10, int i11) {
            DataSink dataSinkCreateDataSink;
            Cache cache = (Cache) Assertions.e(this.cache);
            if (this.cacheIsReadOnly || dataSource == null) {
                dataSinkCreateDataSink = null;
            } else {
                DataSink.Factory factory = this.cacheWriteDataSinkFactory;
                dataSinkCreateDataSink = factory != null ? factory.createDataSink() : new CacheDataSink.Factory().a(cache).createDataSink();
            }
            return new CacheDataSource(cache, dataSource, this.cacheReadDataSourceFactory.createDataSource(), dataSinkCreateDataSink, this.cacheKeyFactory, i10, this.upstreamPriorityTaskManager, i11, this.eventListener);
        }

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public CacheDataSource createDataSource() {
            DataSource.Factory factory = this.upstreamDataSourceFactory;
            return d(factory != null ? factory.createDataSource() : null, this.flags, this.upstreamPriority);
        }

        public CacheDataSource b() {
            DataSource.Factory factory = this.upstreamDataSourceFactory;
            return d(factory != null ? factory.createDataSource() : null, this.flags | 1, -1000);
        }

        public CacheDataSource c() {
            return d(null, this.flags | 1, -1000);
        }
    }

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    private boolean i() {
        return this.currentDataSource == this.upstreamDataSource;
    }

    private boolean j() {
        return this.currentDataSource == this.cacheReadDataSource;
    }

    private boolean l() {
        return this.currentDataSource == this.cacheWriteDataSource;
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws IOException {
        this.requestDataSpec = null;
        this.actualUri = null;
        this.readPosition = 0L;
        m();
        try {
            d();
        } catch (Throwable th) {
            h(th);
            throw th;
        }
    }

    public Cache e() {
        return this.cache;
    }

    public CacheKeyFactory f() {
        return this.cacheKeyFactory;
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return this.actualUri;
    }

    /* JADX WARN: Code duplicated, block: B:29:0x0083 A[Catch: all -> 0x002e, TryCatch #0 {all -> 0x002e, blocks: (B:9:0x0021, B:11:0x0029, B:14:0x0030, B:16:0x0044, B:18:0x004a, B:19:0x0050, B:21:0x0061, B:22:0x0065, B:24:0x006b, B:26:0x0071, B:28:0x0077, B:29:0x0083, B:35:0x0091), top: B:39:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:31:0x0089  */
    /* JADX WARN: Code duplicated, block: B:33:0x008f  */
    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        long j6;
        if (i11 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        DataSpec dataSpec = (DataSpec) Assertions.e(this.requestDataSpec);
        DataSpec dataSpec2 = (DataSpec) Assertions.e(this.currentDataSpec);
        try {
            if (this.readPosition >= this.checkCachePosition) {
                o(dataSpec, true);
            }
            int i12 = ((DataSource) Assertions.e(this.currentDataSource)).read(bArr, i10, i11);
            if (i12 != -1) {
                if (j()) {
                    this.totalCachedBytesRead += (long) i12;
                }
                long j10 = i12;
                this.readPosition += j10;
                this.currentDataSourceBytesRead += j10;
                long j11 = this.bytesRemaining;
                if (j11 != -1) {
                    this.bytesRemaining = j11 - j10;
                }
            } else {
                if (!k()) {
                    j6 = this.bytesRemaining;
                    if (j6 <= 0) {
                        if (j6 == -1) {
                        }
                    }
                    d();
                    o(dataSpec, false);
                    return read(bArr, i10, i11);
                }
                long j12 = dataSpec2.length;
                if (j12 != -1 && this.currentDataSourceBytesRead >= j12) {
                    j6 = this.bytesRemaining;
                    if (j6 <= 0) {
                        if (j6 == -1) {
                        }
                    }
                    d();
                    o(dataSpec, false);
                    return read(bArr, i10, i11);
                }
                p((String) Util.j(dataSpec.key));
            }
            return i12;
        } catch (Throwable th) {
            h(th);
            throw th;
        }
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource) {
        this(cache, dataSource, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d() throws IOException {
        DataSource dataSource = this.currentDataSource;
        if (dataSource == null) {
            return;
        }
        try {
            dataSource.close();
        } finally {
            this.currentDataSpec = null;
            this.currentDataSource = null;
            CacheSpan cacheSpan = this.currentHoleSpan;
            if (cacheSpan != null) {
                this.cache.g(cacheSpan);
                this.currentHoleSpan = null;
            }
        }
    }

    private void m() {
        EventListener eventListener = this.eventListener;
        if (eventListener == null || this.totalCachedBytesRead <= 0) {
            return;
        }
        eventListener.onCachedBytesRead(this.cache.getCacheSpace(), this.totalCachedBytesRead);
        this.totalCachedBytesRead = 0L;
    }

    private void n(int i10) {
        EventListener eventListener = this.eventListener;
        if (eventListener != null) {
            eventListener.onCacheIgnored(i10);
        }
    }

    private void o(DataSpec dataSpec, boolean z6) throws IOException {
        CacheSpan cacheSpanC;
        long jMin;
        DataSpec dataSpecA;
        DataSource dataSource;
        String str = (String) Util.j(dataSpec.key);
        if (this.currentRequestIgnoresCache) {
            cacheSpanC = null;
        } else if (this.blockOnCache) {
            try {
                cacheSpanC = this.cache.c(str, this.readPosition, this.bytesRemaining);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
                throw new InterruptedIOException();
            }
        } else {
            cacheSpanC = this.cache.f(str, this.readPosition, this.bytesRemaining);
        }
        if (cacheSpanC == null) {
            dataSource = this.upstreamDataSource;
            dataSpecA = dataSpec.a().h(this.readPosition).g(this.bytesRemaining).a();
        } else if (cacheSpanC.isCached) {
            Uri uriFromFile = Uri.fromFile((File) Util.j(cacheSpanC.file));
            long j6 = cacheSpanC.position;
            long j10 = this.readPosition - j6;
            long jMin2 = cacheSpanC.length - j10;
            long j11 = this.bytesRemaining;
            if (j11 != -1) {
                jMin2 = Math.min(jMin2, j11);
            }
            dataSpecA = dataSpec.a().i(uriFromFile).k(j6).h(j10).g(jMin2).a();
            dataSource = this.cacheReadDataSource;
        } else {
            if (cacheSpanC.c()) {
                jMin = this.bytesRemaining;
            } else {
                jMin = cacheSpanC.length;
                long j12 = this.bytesRemaining;
                if (j12 != -1) {
                    jMin = Math.min(jMin, j12);
                }
            }
            dataSpecA = dataSpec.a().h(this.readPosition).g(jMin).a();
            dataSource = this.cacheWriteDataSource;
            if (dataSource == null) {
                dataSource = this.upstreamDataSource;
                this.cache.g(cacheSpanC);
                cacheSpanC = null;
            }
        }
        this.checkCachePosition = (this.currentRequestIgnoresCache || dataSource != this.upstreamDataSource) ? Long.MAX_VALUE : this.readPosition + MIN_READ_BEFORE_CHECKING_CACHE;
        if (z6) {
            Assertions.g(i());
            if (dataSource == this.upstreamDataSource) {
                return;
            }
            try {
                d();
            } catch (Throwable th) {
                if (!((CacheSpan) Util.j(cacheSpanC)).b()) {
                    throw th;
                }
                this.cache.g(cacheSpanC);
                throw th;
            }
        }
        if (cacheSpanC != null && cacheSpanC.b()) {
            this.currentHoleSpan = cacheSpanC;
        }
        this.currentDataSource = dataSource;
        this.currentDataSpec = dataSpecA;
        this.currentDataSourceBytesRead = 0L;
        long jB = dataSource.b(dataSpecA);
        ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
        if (dataSpecA.length == -1 && jB != -1) {
            this.bytesRemaining = jB;
            ContentMetadataMutations.g(contentMetadataMutations, this.readPosition + jB);
        }
        if (k()) {
            Uri uri = dataSource.getUri();
            this.actualUri = uri;
            ContentMetadataMutations.h(contentMetadataMutations, dataSpec.uri.equals(uri) ^ true ? this.actualUri : null);
        }
        if (l()) {
            this.cache.i(str, contentMetadataMutations);
        }
    }

    private void p(String str) throws IOException {
        this.bytesRemaining = 0L;
        if (l()) {
            ContentMetadataMutations contentMetadataMutations = new ContentMetadataMutations();
            ContentMetadataMutations.g(contentMetadataMutations, this.readPosition);
            this.cache.i(str, contentMetadataMutations);
        }
    }

    private int q(DataSpec dataSpec) {
        if (this.ignoreCacheOnError && this.seenCacheError) {
            return 0;
        }
        return (this.ignoreCacheForUnsetLengthRequests && dataSpec.length == -1) ? 1 : -1;
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws IOException {
        try {
            String strBuildCacheKey = this.cacheKeyFactory.buildCacheKey(dataSpec);
            DataSpec dataSpecA = dataSpec.a().f(strBuildCacheKey).a();
            this.requestDataSpec = dataSpecA;
            this.actualUri = g(this.cache, strBuildCacheKey, dataSpecA.uri);
            this.readPosition = dataSpec.position;
            int iQ = q(dataSpec);
            boolean z6 = iQ != -1;
            this.currentRequestIgnoresCache = z6;
            if (z6) {
                n(iQ);
            }
            if (this.currentRequestIgnoresCache) {
                this.bytesRemaining = -1L;
            } else {
                long jA = c.a(this.cache.getContentMetadata(strBuildCacheKey));
                this.bytesRemaining = jA;
                if (jA != -1) {
                    long j6 = jA - dataSpec.position;
                    this.bytesRemaining = j6;
                    if (j6 < 0) {
                        throw new DataSourceException(2008);
                    }
                }
            }
            long jMin = dataSpec.length;
            if (jMin != -1) {
                long j10 = this.bytesRemaining;
                if (j10 != -1) {
                    jMin = Math.min(j10, jMin);
                }
                this.bytesRemaining = jMin;
            }
            long j11 = this.bytesRemaining;
            if (j11 > 0 || j11 == -1) {
                o(dataSpecA, false);
            }
            long j12 = dataSpec.length;
            return j12 != -1 ? j12 : this.bytesRemaining;
        } catch (Throwable th) {
            h(th);
            throw th;
        }
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, int i10) {
        this(cache, dataSource, new FileDataSource(), new CacheDataSink(cache, CacheDataSink.DEFAULT_FRAGMENT_SIZE), i10, null);
    }

    private static Uri g(Cache cache, String str, Uri uri) {
        Uri uriB = c.b(cache.getContentMetadata(str));
        if (uriB != null) {
            return uriB;
        }
        return uri;
    }

    private void h(Throwable th) {
        if (j() || (th instanceof Cache.CacheException)) {
            this.seenCacheError = true;
        }
    }

    private boolean k() {
        return !j();
    }

    @Override // androidx.media3.datasource.DataSource
    public void c(TransferListener transferListener) {
        Assertions.e(transferListener);
        this.cacheReadDataSource.c(transferListener);
        this.upstreamDataSource.c(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public Map<String, List<String>> getResponseHeaders() {
        if (k()) {
            return this.upstreamDataSource.getResponseHeaders();
        }
        return Collections.emptyMap();
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, int i10, @Nullable EventListener eventListener) {
        this(cache, dataSource, dataSource2, dataSink, i10, eventListener, null);
    }

    public CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, int i10, @Nullable EventListener eventListener, @Nullable CacheKeyFactory cacheKeyFactory) {
        this(cache, dataSource, dataSource2, dataSink, cacheKeyFactory, i10, null, 0, eventListener);
    }

    private CacheDataSource(Cache cache, @Nullable DataSource dataSource, DataSource dataSource2, @Nullable DataSink dataSink, @Nullable CacheKeyFactory cacheKeyFactory, int i10, @Nullable PriorityTaskManager priorityTaskManager, int i11, @Nullable EventListener eventListener) {
        this.cache = cache;
        this.cacheReadDataSource = dataSource2;
        this.cacheKeyFactory = cacheKeyFactory == null ? CacheKeyFactory.DEFAULT : cacheKeyFactory;
        this.blockOnCache = (i10 & 1) != 0;
        this.ignoreCacheOnError = (i10 & 2) != 0;
        this.ignoreCacheForUnsetLengthRequests = (i10 & 4) != 0;
        if (dataSource != null) {
            dataSource = priorityTaskManager != null ? new PriorityDataSource(dataSource, priorityTaskManager, i11) : dataSource;
            this.upstreamDataSource = dataSource;
            this.cacheWriteDataSource = dataSink != null ? new TeeDataSource(dataSource, dataSink) : null;
        } else {
            this.upstreamDataSource = PlaceholderDataSource.INSTANCE;
            this.cacheWriteDataSource = null;
        }
        this.eventListener = eventListener;
    }
}
