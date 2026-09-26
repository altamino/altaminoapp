package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class FileDataSource extends BaseDataSource {
    private long bytesRemaining;

    @Nullable
    private RandomAccessFile file;
    private boolean opened;

    @Nullable
    private Uri uri;

    @RequiresApi
    private static final class Api21 {
        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }

        private Api21() {
        }
    }

    public static final class Factory implements DataSource.Factory {

        @Nullable
        private TransferListener listener;

        @Override // androidx.media3.datasource.DataSource.Factory
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            TransferListener transferListener = this.listener;
            if (transferListener != null) {
                fileDataSource.c(transferListener);
            }
            return fileDataSource;
        }
    }

    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(Throwable th, int i10) {
            super(th, i10);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public FileDataSource() {
        super(false);
    }

    @Override // androidx.media3.datasource.DataSource
    public void close() throws FileDataSourceException {
        this.uri = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.file;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.file = null;
                if (this.opened) {
                    this.opened = false;
                    e();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e, 2000);
            }
        } catch (Throwable th) {
            this.file = null;
            if (this.opened) {
                this.opened = false;
                e();
            }
            throw th;
        }
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    private static RandomAccessFile h(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) Assertions.e(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e, (Util.SDK_INT < 21 || !Api21.b(e.getCause())) ? 2005 : 2006);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e, 1004);
        } catch (SecurityException e2) {
            throw new FileDataSourceException(e2, 2006);
        } catch (RuntimeException e6) {
            throw new FileDataSourceException(e6, 2000);
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public long b(DataSpec dataSpec) throws FileDataSourceException {
        Uri uri = dataSpec.uri;
        this.uri = uri;
        f(dataSpec);
        RandomAccessFile randomAccessFileH = h(uri);
        this.file = randomAccessFileH;
        try {
            randomAccessFileH.seek(dataSpec.position);
            long length = dataSpec.length;
            if (length == -1) {
                length = this.file.length() - dataSpec.position;
            }
            this.bytesRemaining = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.opened = true;
            g(dataSpec);
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new FileDataSourceException(e, 2000);
        }
    }

    @Override // androidx.media3.common.DataReader
    public int read(byte[] bArr, int i10, int i11) throws FileDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int i12 = ((RandomAccessFile) Util.j(this.file)).read(bArr, i10, (int) Math.min(this.bytesRemaining, i11));
            if (i12 > 0) {
                this.bytesRemaining -= (long) i12;
                d(i12);
            }
            return i12;
        } catch (IOException e) {
            throw new FileDataSourceException(e, 2000);
        }
    }
}
