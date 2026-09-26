package androidx.media3.datasource.cache;

import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.DataSink;
import androidx.media3.datasource.DataSpec;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes.dex */
@UnstableApi
public final class CacheDataSink implements DataSink {
    public static final int DEFAULT_BUFFER_SIZE = 20480;
    public static final long DEFAULT_FRAGMENT_SIZE = 5242880;
    private static final long MIN_RECOMMENDED_FRAGMENT_SIZE = 2097152;
    private static final String TAG = "CacheDataSink";
    private final int bufferSize;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private final Cache cache;

    @Nullable
    private DataSpec dataSpec;
    private long dataSpecBytesWritten;
    private long dataSpecFragmentSize;

    @Nullable
    private File file;
    private final long fragmentSize;

    @Nullable
    private OutputStream outputStream;
    private long outputStreamBytesWritten;

    public static final class Factory implements DataSink.Factory {
        private Cache cache;
        private long fragmentSize = CacheDataSink.DEFAULT_FRAGMENT_SIZE;
        private int bufferSize = CacheDataSink.DEFAULT_BUFFER_SIZE;

        public Factory a(Cache cache) {
            this.cache = cache;
            return this;
        }

        public Factory b(long j6) {
            this.fragmentSize = j6;
            return this;
        }

        @Override // androidx.media3.datasource.DataSink.Factory
        public DataSink createDataSink() {
            return new CacheDataSink((Cache) Assertions.e(this.cache), this.fragmentSize, this.bufferSize);
        }
    }

    public CacheDataSink(Cache cache, long j6) {
        this(cache, j6, DEFAULT_BUFFER_SIZE);
    }

    public static final class CacheDataSinkException extends Cache.CacheException {
        public CacheDataSinkException(IOException iOException) {
            super(iOException);
        }
    }

    public CacheDataSink(Cache cache, long j6, int i10) {
        Assertions.h(j6 > 0 || j6 == -1, "fragmentSize must be positive or C.LENGTH_UNSET.");
        if (j6 != -1 && j6 < 2097152) {
            Log.i(TAG, "fragmentSize is below the minimum recommended value of 2097152. This may cause poor cache performance.");
        }
        this.cache = (Cache) Assertions.e(cache);
        this.fragmentSize = j6 == -1 ? Long.MAX_VALUE : j6;
        this.bufferSize = i10;
    }

    private void a() throws IOException {
        OutputStream outputStream = this.outputStream;
        if (outputStream == null) {
            return;
        }
        try {
            outputStream.flush();
            Util.n(this.outputStream);
            this.outputStream = null;
            File file = (File) Util.j(this.file);
            this.file = null;
            this.cache.h(file, this.outputStreamBytesWritten);
        } catch (Throwable th) {
            Util.n(this.outputStream);
            this.outputStream = null;
            File file2 = (File) Util.j(this.file);
            this.file = null;
            file2.delete();
            throw th;
        }
    }

    private void c(DataSpec dataSpec) throws IOException {
        long j6 = dataSpec.length;
        this.file = this.cache.startFile((String) Util.j(dataSpec.key), dataSpec.position + this.dataSpecBytesWritten, j6 != -1 ? Math.min(j6 - this.dataSpecBytesWritten, this.dataSpecFragmentSize) : -1L);
        FileOutputStream fileOutputStream = new FileOutputStream(this.file);
        if (this.bufferSize > 0) {
            ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
            if (reusableBufferedOutputStream == null) {
                this.bufferedOutputStream = new ReusableBufferedOutputStream(fileOutputStream, this.bufferSize);
            } else {
                reusableBufferedOutputStream.a(fileOutputStream);
            }
            this.outputStream = this.bufferedOutputStream;
        } else {
            this.outputStream = fileOutputStream;
        }
        this.outputStreamBytesWritten = 0L;
    }

    @Override // androidx.media3.datasource.DataSink
    public void b(DataSpec dataSpec) throws CacheDataSinkException {
        Assertions.e(dataSpec.key);
        if (dataSpec.length == -1 && dataSpec.d(2)) {
            this.dataSpec = null;
            return;
        }
        this.dataSpec = dataSpec;
        this.dataSpecFragmentSize = dataSpec.d(4) ? this.fragmentSize : Long.MAX_VALUE;
        this.dataSpecBytesWritten = 0L;
        try {
            c(dataSpec);
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public void close() throws CacheDataSinkException {
        if (this.dataSpec == null) {
            return;
        }
        try {
            a();
        } catch (IOException e) {
            throw new CacheDataSinkException(e);
        }
    }

    @Override // androidx.media3.datasource.DataSink
    public void write(byte[] bArr, int i10, int i11) throws CacheDataSinkException {
        DataSpec dataSpec = this.dataSpec;
        if (dataSpec == null) {
            return;
        }
        int i12 = 0;
        while (i12 < i11) {
            try {
                if (this.outputStreamBytesWritten == this.dataSpecFragmentSize) {
                    a();
                    c(dataSpec);
                }
                int iMin = (int) Math.min(i11 - i12, this.dataSpecFragmentSize - this.outputStreamBytesWritten);
                ((OutputStream) Util.j(this.outputStream)).write(bArr, i10 + i12, iMin);
                i12 += iMin;
                long j6 = iMin;
                this.outputStreamBytesWritten += j6;
                this.dataSpecBytesWritten += j6;
            } catch (IOException e) {
                throw new CacheDataSinkException(e);
            }
        }
    }
}
