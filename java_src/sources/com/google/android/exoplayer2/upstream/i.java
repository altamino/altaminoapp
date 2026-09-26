package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;
import java.net.URLDecoder;

/* JADX INFO: loaded from: classes10.dex */
public final class i extends f {
    public static final String SCHEME_DATA = "data";
    private int bytesRemaining;

    @Nullable
    private byte[] data;

    @Nullable
    private o dataSpec;
    private int readPosition;

    public i() {
        super(false);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        if (this.data != null) {
            this.data = null;
            e();
        }
        this.dataSpec = null;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        o oVar = this.dataSpec;
        if (oVar != null) {
            return oVar.uri;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.bytesRemaining;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        System.arraycopy(o0.j(this.data), this.readPosition, bArr, i10, iMin);
        this.readPosition += iMin;
        this.bytesRemaining -= iMin;
        d(iMin);
        return iMin;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws IOException {
        f(oVar);
        this.dataSpec = oVar;
        Uri uri = oVar.uri;
        String scheme = uri.getScheme();
        com.google.android.exoplayer2.util.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String[] strArrH0 = o0.H0(uri.getSchemeSpecificPart(), ",");
        if (strArrH0.length == 2) {
            String str = strArrH0[1];
            if (strArrH0[0].contains(";base64")) {
                try {
                    this.data = Base64.decode(str, 0);
                } catch (IllegalArgumentException e) {
                    throw v2.b("Error while parsing Base64 encoded string: " + str, e);
                }
            } else {
                this.data = o0.h0(URLDecoder.decode(str, com.google.common.base.e.US_ASCII.name()));
            }
            long j6 = oVar.position;
            byte[] bArr = this.data;
            if (j6 <= bArr.length) {
                int i10 = (int) j6;
                this.readPosition = i10;
                int length = bArr.length - i10;
                this.bytesRemaining = length;
                long j10 = oVar.length;
                if (j10 != -1) {
                    this.bytesRemaining = (int) Math.min(length, j10);
                }
                g(oVar);
                long j11 = oVar.length;
                if (j11 == -1) {
                    return this.bytesRemaining;
                }
                return j11;
            }
            this.data = null;
            throw new l(2008);
        }
        throw v2.b("Unexpected URI format: " + uri, null);
    }
}
