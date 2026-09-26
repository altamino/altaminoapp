package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.google.android.exoplayer2.util.o0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: loaded from: classes10.dex */
public final class x extends f {
    private long bytesRemaining;

    @Nullable
    private RandomAccessFile file;
    private boolean opened;

    @Nullable
    private Uri uri;

    @RequiresApi
    private static final class a {
        /* JADX INFO: Access modifiers changed from: private */
        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    public static class b extends l {
        @Deprecated
        public b(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public b(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public b(Throwable th, int i10) {
            super(th, i10);
        }

        public b(@Nullable String str, @Nullable Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public x() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws b {
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
                throw new b(e, 2000);
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

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    private static RandomAccessFile h(Uri uri) throws b {
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.e(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new b(e, (o0.SDK_INT < 21 || !a.b(e.getCause())) ? 2005 : 2006);
            }
            throw new b(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e, 1004);
        } catch (SecurityException e2) {
            throw new b(e2, 2006);
        } catch (RuntimeException e6) {
            throw new b(e6, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws b {
        Uri uri = oVar.uri;
        this.uri = uri;
        f(oVar);
        RandomAccessFile randomAccessFileH = h(uri);
        this.file = randomAccessFileH;
        try {
            randomAccessFileH.seek(oVar.position);
            long length = oVar.length;
            if (length == -1) {
                length = this.file.length() - oVar.position;
            }
            this.bytesRemaining = length;
            if (length < 0) {
                throw new b(null, null, 2008);
            }
            this.opened = true;
            g(oVar);
            return this.bytesRemaining;
        } catch (IOException e) {
            throw new b(e, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws b {
        if (i11 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        try {
            int i12 = ((RandomAccessFile) o0.j(this.file)).read(bArr, i10, (int) Math.min(this.bytesRemaining, i11));
            if (i12 > 0) {
                this.bytesRemaining -= (long) i12;
                d(i12);
            }
            return i12;
        } catch (IOException e) {
            throw new b(e, 2000);
        }
    }
}
