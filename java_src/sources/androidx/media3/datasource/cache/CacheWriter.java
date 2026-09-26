package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSourceUtil;
import androidx.media3.datasource.DataSpec;
import java.io.IOException;
import java.io.InterruptedIOException;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public final class CacheWriter {
    public static final int DEFAULT_BUFFER_SIZE_BYTES = 131072;
    private long bytesCached;
    private final Cache cache;
    private final String cacheKey;
    private final CacheDataSource dataSource;
    private final DataSpec dataSpec;
    private long endPosition;
    private volatile boolean isCanceled;
    private long nextPosition;

    @Nullable
    private final ProgressListener progressListener;
    private final byte[] temporaryBuffer;

    public interface ProgressListener {
        void a(long j6, long j10, long j11);
    }

    public void b() {
        this.isCanceled = true;
    }

    private long c() {
        long j6 = this.endPosition;
        if (j6 == -1) {
            return -1L;
        }
        return j6 - this.dataSpec.position;
    }

    private void d(long j6) {
        this.bytesCached += j6;
        ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.a(c(), this.bytesCached, j6);
        }
    }

    private void e(long j6) {
        if (this.endPosition == j6) {
            return;
        }
        this.endPosition = j6;
        ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.a(c(), this.bytesCached, 0L);
        }
    }

    private long f(long j6, long j10) throws IOException {
        long jB;
        boolean z6 = true;
        boolean z10 = j6 + j10 == this.endPosition || j10 == -1;
        if (j10 != -1) {
            try {
                jB = this.dataSource.b(this.dataSpec.a().h(j6).g(j10).a());
            } catch (IOException unused) {
                DataSourceUtil.a(this.dataSource);
                z6 = false;
                jB = -1;
            }
        } else {
            z6 = false;
            jB = -1;
        }
        if (!z6) {
            g();
            try {
                jB = this.dataSource.b(this.dataSpec.a().h(j6).g(-1L).a());
            } catch (IOException e) {
                DataSourceUtil.a(this.dataSource);
                throw e;
            }
        }
        if (z10 && jB != -1) {
            try {
                e(jB + j6);
            } catch (IOException e2) {
                DataSourceUtil.a(this.dataSource);
                throw e2;
            }
        }
        int i10 = 0;
        int i11 = 0;
        while (i10 != -1) {
            g();
            CacheDataSource cacheDataSource = this.dataSource;
            byte[] bArr = this.temporaryBuffer;
            i10 = cacheDataSource.read(bArr, 0, bArr.length);
            if (i10 != -1) {
                d(i10);
                i11 += i10;
            }
        }
        if (z10) {
            e(j6 + ((long) i11));
        }
        this.dataSource.close();
        return i11;
    }

    private void g() throws InterruptedIOException {
        if (this.isCanceled) {
            throw new InterruptedIOException();
        }
    }

    public CacheWriter(CacheDataSource cacheDataSource, DataSpec dataSpec, @Nullable byte[] bArr, @Nullable ProgressListener progressListener) {
        this.dataSource = cacheDataSource;
        this.cache = cacheDataSource.e();
        this.dataSpec = dataSpec;
        this.temporaryBuffer = bArr == null ? new byte[131072] : bArr;
        this.progressListener = progressListener;
        this.cacheKey = cacheDataSource.f().buildCacheKey(dataSpec);
        this.nextPosition = dataSpec.position;
    }

    @WorkerThread
    public void a() throws IOException {
        long j6;
        g();
        Cache cache = this.cache;
        String str = this.cacheKey;
        DataSpec dataSpec = this.dataSpec;
        this.bytesCached = cache.e(str, dataSpec.position, dataSpec.length);
        DataSpec dataSpec2 = this.dataSpec;
        long j10 = dataSpec2.length;
        if (j10 != -1) {
            this.endPosition = dataSpec2.position + j10;
        } else {
            long jA = c.a(this.cache.getContentMetadata(this.cacheKey));
            if (jA == -1) {
                jA = -1;
            }
            this.endPosition = jA;
        }
        ProgressListener progressListener = this.progressListener;
        if (progressListener != null) {
            progressListener.a(c(), this.bytesCached, 0L);
        }
        while (true) {
            long j11 = this.endPosition;
            if (j11 != -1 && this.nextPosition >= j11) {
                return;
            }
            g();
            long j12 = this.endPosition;
            if (j12 == -1) {
                j6 = Long.MAX_VALUE;
            } else {
                j6 = j12 - this.nextPosition;
            }
            long cachedLength = this.cache.getCachedLength(this.cacheKey, this.nextPosition, j6);
            if (cachedLength > 0) {
                this.nextPosition += cachedLength;
            } else {
                long j13 = -cachedLength;
                if (j13 == Long.MAX_VALUE) {
                    j13 = -1;
                }
                long j14 = this.nextPosition;
                this.nextPosition = j14 + f(j14, j13);
            }
        }
    }
}
