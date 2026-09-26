package com.google.android.exoplayer2.source;

import com.google.android.exoplayer2.b2;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public interface w0 {
    public static final int FLAG_OMIT_SAMPLE_DATA = 4;
    public static final int FLAG_PEEK = 1;
    public static final int FLAG_REQUIRE_FORMAT = 2;

    int a(b2 b2Var, com.google.android.exoplayer2.decoder.g gVar, int i10);

    boolean isReady();

    void maybeThrowError() throws IOException;

    int skipData(long j6);
}
