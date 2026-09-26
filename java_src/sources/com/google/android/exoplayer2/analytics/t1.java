package com.google.android.exoplayer2.analytics;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

/* JADX INFO: loaded from: classes8.dex */
public final class t1 {
    public static final t1 UNSET;

    @Nullable
    private final a logSessionIdApi31;

    public t1() {
        this((a) null);
        com.google.android.exoplayer2.util.a.g(com.google.android.exoplayer2.util.o0.SDK_INT < 31);
    }

    @RequiresApi
    private static final class a {
        public static final a UNSET = new a(LogSessionId.LOG_SESSION_ID_NONE);
        public final LogSessionId logSessionId;

        public a(LogSessionId logSessionId) {
            this.logSessionId = logSessionId;
        }
    }

    static {
        UNSET = com.google.android.exoplayer2.util.o0.SDK_INT < 31 ? new t1() : new t1(a.UNSET);
    }

    @RequiresApi
    public LogSessionId a() {
        return ((a) com.google.android.exoplayer2.util.a.e(this.logSessionIdApi31)).logSessionId;
    }

    @RequiresApi
    public t1(LogSessionId logSessionId) {
        this(new a(logSessionId));
    }

    private t1(@Nullable a aVar) {
        this.logSessionIdApi31 = aVar;
    }
}
