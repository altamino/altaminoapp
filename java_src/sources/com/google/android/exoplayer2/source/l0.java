package com.google.android.exoplayer2.source;

import android.net.Uri;
import com.google.android.exoplayer2.analytics.t1;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
public interface l0 {

    public interface a {
        l0 a(t1 t1Var);
    }

    long a();

    void b();

    int c(com.google.android.exoplayer2.extractor.a0 a0Var) throws IOException;

    void d(com.google.android.exoplayer2.upstream.h hVar, Uri uri, Map<String, List<String>> map, long j6, long j10, com.google.android.exoplayer2.extractor.n nVar) throws IOException;

    void release();

    void seek(long j6, long j10);
}
