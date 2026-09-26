package androidx.media3.exoplayer.analytics;

import android.media.metrics.LogSessionId;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public final class PlayerId {
    public static final PlayerId UNSET;

    @Nullable
    private final LogSessionIdApi31 logSessionIdApi31;

    public PlayerId() {
        this((LogSessionIdApi31) null);
        Assertions.g(Util.SDK_INT < 31);
    }

    @RequiresApi
    private static final class LogSessionIdApi31 {
        public static final LogSessionIdApi31 UNSET = new LogSessionIdApi31(LogSessionId.LOG_SESSION_ID_NONE);
        public final LogSessionId logSessionId;

        public LogSessionIdApi31(LogSessionId logSessionId) {
            this.logSessionId = logSessionId;
        }
    }

    static {
        UNSET = Util.SDK_INT < 31 ? new PlayerId() : new PlayerId(LogSessionIdApi31.UNSET);
    }

    @RequiresApi
    public LogSessionId a() {
        return ((LogSessionIdApi31) Assertions.e(this.logSessionIdApi31)).logSessionId;
    }

    @RequiresApi
    public PlayerId(LogSessionId logSessionId) {
        this(new LogSessionIdApi31(logSessionId));
    }

    private PlayerId(@Nullable LogSessionIdApi31 logSessionIdApi31) {
        this.logSessionIdApi31 = logSessionIdApi31;
    }
}
