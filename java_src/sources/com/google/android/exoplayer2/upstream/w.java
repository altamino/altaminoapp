package com.google.android.exoplayer2.upstream;

import com.google.android.exoplayer2.v2;
import java.io.FileNotFoundException;
import java.io.IOException;

/* JADX INFO: loaded from: classes10.dex */
public class w implements f0 {
    private static final int DEFAULT_BEHAVIOR_MIN_LOADABLE_RETRY_COUNT = -1;
    public static final long DEFAULT_LOCATION_EXCLUSION_MS = 300000;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT = 3;
    public static final int DEFAULT_MIN_LOADABLE_RETRY_COUNT_PROGRESSIVE_LIVE = 6;

    @Deprecated
    public static final long DEFAULT_TRACK_BLACKLIST_MS = 60000;
    public static final long DEFAULT_TRACK_EXCLUSION_MS = 60000;
    private final int minimumLoadableRetryCount;

    public w() {
        this(-1);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public /* synthetic */ void a(long j6) {
        e0.a(this, j6);
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public int b(int i10) {
        int i11 = this.minimumLoadableRetryCount;
        if (i11 == -1) {
            return i10 == 7 ? 6 : 3;
        }
        return i11;
    }

    public w(int i10) {
        this.minimumLoadableRetryCount = i10;
    }

    @Override // com.google.android.exoplayer2.upstream.f0
    public long c(f0.a aVar) {
        IOException iOException = aVar.exception;
        if ((iOException instanceof v2) || (iOException instanceof FileNotFoundException) || (iOException instanceof y) || (iOException instanceof g0.h) || l.a(iOException)) {
            return -9223372036854775807L;
        }
        return Math.min((aVar.errorCount - 1) * 1000, 5000);
    }
}
