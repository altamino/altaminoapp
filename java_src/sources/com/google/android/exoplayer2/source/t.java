package com.google.android.exoplayer2.source;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
final class t implements com.google.android.exoplayer2.upstream.k {
    private int bytesUntilMetadata;
    private final a listener;
    private final int metadataIntervalBytes;
    private final byte[] metadataLengthByteHolder;
    private final com.google.android.exoplayer2.upstream.k upstream;

    public interface a {
        void a(com.google.android.exoplayer2.util.c0 c0Var);
    }

    private boolean d() throws IOException {
        if (this.upstream.read(this.metadataLengthByteHolder, 0, 1) == -1) {
            return false;
        }
        int i10 = (this.metadataLengthByteHolder[0] & 255) << 4;
        if (i10 == 0) {
            return true;
        }
        byte[] bArr = new byte[i10];
        int i11 = i10;
        int i12 = 0;
        while (i11 > 0) {
            int i13 = this.upstream.read(bArr, i12, i11);
            if (i13 == -1) {
                return false;
            }
            i12 += i13;
            i11 -= i13;
        }
        while (i10 > 0 && bArr[i10 - 1] == 0) {
            i10--;
        }
        if (i10 > 0) {
            this.listener.a(new com.google.android.exoplayer2.util.c0(bArr, i10));
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(com.google.android.exoplayer2.upstream.o oVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map<String, List<String>> getResponseHeaders() {
        return this.upstream.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.upstream.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (this.bytesUntilMetadata == 0) {
            if (!d()) {
                return -1;
            }
            this.bytesUntilMetadata = this.metadataIntervalBytes;
        }
        int i12 = this.upstream.read(bArr, i10, Math.min(this.bytesUntilMetadata, i11));
        if (i12 != -1) {
            this.bytesUntilMetadata -= i12;
        }
        return i12;
    }

    public t(com.google.android.exoplayer2.upstream.k kVar, int i10, a aVar) {
        boolean z6;
        if (i10 > 0) {
            z6 = true;
        } else {
            z6 = false;
        }
        com.google.android.exoplayer2.util.a.a(z6);
        this.upstream = kVar;
        this.metadataIntervalBytes = i10;
        this.listener = aVar;
        this.metadataLengthByteHolder = new byte[1];
        this.bytesUntilMetadata = i10;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void b(com.google.android.exoplayer2.upstream.m0 m0Var) {
        com.google.android.exoplayer2.util.a.e(m0Var);
        this.upstream.b(m0Var);
    }
}
