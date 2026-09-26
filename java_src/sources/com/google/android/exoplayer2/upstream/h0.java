package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes2.dex */
public final class h0 extends f {
    public static final String RAW_RESOURCE_SCHEME = "rawresource";

    @Nullable
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;

    @Nullable
    private InputStream inputStream;
    private boolean opened;
    private final String packageName;
    private final Resources resources;

    @Nullable
    private Uri uri;

    public static class a extends l {
        @Deprecated
        public a(String str) {
            super(str, null, 2000);
        }

        @Deprecated
        public a(Throwable th) {
            super(th, 2000);
        }

        public a(@Nullable String str, @Nullable Throwable th, int i10) {
            super(str, th, i10);
        }
    }

    public h0(Context context) {
        super(false);
        this.resources = context.getResources();
        this.packageName = context.getPackageName();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws a {
        int identifier;
        String str;
        Uri uri = oVar.uri;
        this.uri = uri;
        if (TextUtils.equals("rawresource", uri.getScheme()) || (TextUtils.equals("android.resource", uri.getScheme()) && uri.getPathSegments().size() == 1 && ((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment())).matches("\\d+"))) {
            try {
                identifier = Integer.parseInt((String) com.google.android.exoplayer2.util.a.e(uri.getLastPathSegment()));
            } catch (NumberFormatException unused) {
                throw new a("Resource identifier must be an integer.", null, 1004);
            }
        } else {
            if (!TextUtils.equals("android.resource", uri.getScheme())) {
                throw new a("URI must either use scheme rawresource or android.resource", null, 1004);
            }
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith(com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING)) {
                strSubstring = strSubstring.substring(1);
            }
            String host = uri.getHost();
            StringBuilder sb = new StringBuilder();
            if (TextUtils.isEmpty(host)) {
                str = "";
            } else {
                str = host + ":";
            }
            sb.append(str);
            sb.append(strSubstring);
            identifier = this.resources.getIdentifier(sb.toString(), "raw", this.packageName);
            if (identifier == 0) {
                throw new a("Resource not found.", null, 2005);
            }
        }
        f(oVar);
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = this.resources.openRawResourceFd(identifier);
            this.assetFileDescriptor = assetFileDescriptorOpenRawResourceFd;
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new a("Resource is compressed: " + uri, null, 2000);
            }
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenRawResourceFd.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1) {
                try {
                    if (oVar.position > length) {
                        throw new a(null, null, 2008);
                    }
                } catch (a e) {
                    throw e;
                } catch (IOException e2) {
                    throw new a(null, e2, 2000);
                }
            }
            long startOffset = assetFileDescriptorOpenRawResourceFd.getStartOffset();
            long jSkip = fileInputStream.skip(oVar.position + startOffset) - startOffset;
            if (jSkip != oVar.position) {
                throw new a(null, null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                if (channel.size() == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long size = channel.size() - channel.position();
                    this.bytesRemaining = size;
                    if (size < 0) {
                        throw new a(null, null, 2008);
                    }
                }
            } else {
                long j6 = length - jSkip;
                this.bytesRemaining = j6;
                if (j6 < 0) {
                    throw new l(2008);
                }
            }
            long jMin = oVar.length;
            if (jMin != -1) {
                long j10 = this.bytesRemaining;
                if (j10 != -1) {
                    jMin = Math.min(j10, jMin);
                }
                this.bytesRemaining = jMin;
            }
            this.opened = true;
            g(oVar);
            long j11 = oVar.length;
            return j11 != -1 ? j11 : this.bytesRemaining;
        } catch (Resources.NotFoundException e6) {
            throw new a(null, e6, 2005);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // com.google.android.exoplayer2.upstream.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void close() throws a {
        this.uri = null;
        try {
            InputStream inputStream = this.inputStream;
            if (inputStream != null) {
                inputStream.close();
            }
            this.inputStream = null;
            try {
                try {
                    AssetFileDescriptor assetFileDescriptor = this.assetFileDescriptor;
                    if (assetFileDescriptor != null) {
                        assetFileDescriptor.close();
                    }
                    this.assetFileDescriptor = null;
                    if (this.opened) {
                        this.opened = false;
                        e();
                    }
                } catch (IOException e) {
                    throw new a(null, e, 2000);
                }
            } catch (Throwable th) {
                this.assetFileDescriptor = null;
                if (this.opened) {
                    this.opened = false;
                    e();
                }
                throw th;
            }
        } catch (IOException e2) {
            throw new a(null, e2, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    public static Uri buildRawResourceUri(int i10) {
        return Uri.parse("rawresource:///" + i10);
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
                throw new a(null, e, 2000);
            }
        }
        int i12 = ((InputStream) o0.j(this.inputStream)).read(bArr, i10, i11);
        if (i12 == -1) {
            if (this.bytesRemaining == -1) {
                return -1;
            }
            throw new a("End of stream reached having not read sufficient data.", new EOFException(), 2000);
        }
        long j10 = this.bytesRemaining;
        if (j10 != -1) {
            this.bytesRemaining = j10 - ((long) i12);
        }
        d(i12);
        return i12;
    }
}
