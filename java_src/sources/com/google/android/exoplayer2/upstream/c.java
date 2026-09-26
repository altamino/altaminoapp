package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes10.dex */
public final class c extends f {
    private final AssetManager assetManager;
    private long bytesRemaining;

    @Nullable
    private InputStream inputStream;
    private boolean opened;

    @Nullable
    private Uri uri;

    public static final class a extends l {
        @Deprecated
        public a(IOException iOException) {
            super(iOException, 2000);
        }

        public a(@Nullable Throwable th, int i10) {
            super(th, i10);
        }
    }

    public c(Context context) {
        super(false);
        this.assetManager = context.getAssets();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws a {
        this.uri = null;
        try {
            try {
                InputStream inputStream = this.inputStream;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.inputStream = null;
                if (this.opened) {
                    this.opened = false;
                    e();
                }
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        } catch (Throwable th) {
            this.inputStream = null;
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

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws a {
        try {
            Uri uri = oVar.uri;
            this.uri = uri;
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)) {
                strSubstring = strSubstring.substring(1);
            }
            f(oVar);
            InputStream inputStreamOpen = this.assetManager.open(strSubstring, 1);
            this.inputStream = inputStreamOpen;
            if (inputStreamOpen.skip(oVar.position) < oVar.position) {
                throw new a(null, 2008);
            }
            long j6 = oVar.length;
            if (j6 != -1) {
                this.bytesRemaining = j6;
            } else {
                long jAvailable = this.inputStream.available();
                this.bytesRemaining = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.bytesRemaining = -1L;
                }
            }
            this.opened = true;
            g(oVar);
            return this.bytesRemaining;
        } catch (a e) {
            throw e;
        } catch (IOException e2) {
            throw new a(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws a {
        if (i11 == 0) {
            return 0;
        }
        long j6 = this.bytesRemaining;
        if (j6 == 0) {
            return -1;
        }
        if (j6 != -1) {
            try {
                i11 = (int) Math.min(j6, i11);
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        }
        int i12 = ((InputStream) o0.j(this.inputStream)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j10 = this.bytesRemaining;
        if (j10 != -1) {
            this.bytesRemaining = j10 - ((long) i12);
        }
        d(i12);
        return i12;
    }
}
