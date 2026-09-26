package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public final class l0 implements k {
    private long bytesRead;
    private final k dataSource;
    private Uri lastOpenedUri = Uri.EMPTY;
    private Map<String, List<String>> lastResponseHeaders = Collections.emptyMap();

    public long d() {
        return this.bytesRead;
    }

    public Uri e() {
        return this.lastOpenedUri;
    }

    public Map<String, List<String>> f() {
        return this.lastResponseHeaders;
    }

    public void g() {
        this.bytesRead = 0L;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public long c(o oVar) throws IOException {
        this.lastOpenedUri = oVar.uri;
        this.lastResponseHeaders = Collections.emptyMap();
        long jC = this.dataSource.c(oVar);
        this.lastOpenedUri = (Uri) com.google.android.exoplayer2.util.a.e(getUri());
        this.lastResponseHeaders = getResponseHeaders();
        return jC;
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void close() throws IOException {
        this.dataSource.close();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public Map<String, List<String>> getResponseHeaders() {
        return this.dataSource.getResponseHeaders();
    }

    @Override // com.google.android.exoplayer2.upstream.k
    @Nullable
    public Uri getUri() {
        return this.dataSource.getUri();
    }

    @Override // com.google.android.exoplayer2.upstream.h
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.dataSource.read(bArr, i10, i11);
        if (i12 != -1) {
            this.bytesRead += (long) i12;
        }
        return i12;
    }

    public l0(k kVar) {
        this.dataSource = (k) com.google.android.exoplayer2.util.a.e(kVar);
    }

    @Override // com.google.android.exoplayer2.upstream.k
    public void b(m0 m0Var) {
        com.google.android.exoplayer2.util.a.e(m0Var);
        this.dataSource.b(m0Var);
    }
}
