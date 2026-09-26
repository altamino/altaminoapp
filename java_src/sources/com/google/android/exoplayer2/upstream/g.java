package com.google.android.exoplayer2.upstream;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes9.dex */
public final class g extends f {

    @Nullable
    private AssetFileDescriptor assetFileDescriptor;
    private long bytesRemaining;

    @Nullable
    private FileInputStream inputStream;
    private boolean opened;
    private final ContentResolver resolver;

    @Nullable
    private Uri uri;

    public static class a extends l {
        @Deprecated
        public a(IOException iOException) {
            this(iOException, 2000);
        }

        public a(@Nullable IOException iOException, int i10) {
            super(iOException, i10);
        }
    }

    public g(Context context) {
        super(false);
        this.resolver = context.getContentResolver();
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
            FileInputStream fileInputStream = this.inputStream;
            if (fileInputStream != null) {
                fileInputStream.close();
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
                    throw new a(e, 2000);
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
            throw new a(e2, 2000);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.uri;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws a {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uri = oVar.uri;
            this.uri = uri;
            f(oVar);
            if ("content".equals(oVar.uri.getScheme())) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openTypedAssetFileDescriptor(uri, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = this.resolver.openAssetFileDescriptor(uri, "r");
            }
            this.assetFileDescriptor = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new a(new IOException("Could not open file descriptor for: " + uri), 2000);
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.inputStream = fileInputStream;
            if (length != -1 && oVar.position > length) {
                throw new a(null, 2008);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(oVar.position + startOffset) - startOffset;
            if (jSkip != oVar.position) {
                throw new a(null, 2008);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.bytesRemaining = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.bytesRemaining = jPosition;
                    if (jPosition < 0) {
                        throw new a(null, 2008);
                    }
                }
            } else {
                long j6 = length - jSkip;
                this.bytesRemaining = j6;
                if (j6 < 0) {
                    throw new a(null, 2008);
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
        int i12 = ((FileInputStream) o0.j(this.inputStream)).read(bArr, i10, i11);
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
