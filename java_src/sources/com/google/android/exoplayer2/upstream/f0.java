package com.google.android.exoplayer2.upstream;

import java.io.IOException;

/* JADX INFO: loaded from: classes8.dex */
public interface f0 {
    public static final int FALLBACK_TYPE_LOCATION = 1;
    public static final int FALLBACK_TYPE_TRACK = 2;

    void a(long j6);

    int b(int i10);

    long c(a aVar);

    public static final class a {
        public final int errorCount;
        public final IOException exception;
        public final com.google.android.exoplayer2.source.u loadEventInfo;
        public final com.google.android.exoplayer2.source.x mediaLoadData;

        public a(com.google.android.exoplayer2.source.u uVar, com.google.android.exoplayer2.source.x xVar, IOException iOException, int i10) {
            this.loadEventInfo = uVar;
            this.mediaLoadData = xVar;
            this.exception = iOException;
            this.errorCount = i10;
        }
    }
}
