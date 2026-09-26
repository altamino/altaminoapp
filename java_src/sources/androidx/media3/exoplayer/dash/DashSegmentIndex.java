package androidx.media3.exoplayer.dash;

import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.dash.manifest.RangedUri;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public interface DashSegmentIndex {
    public static final int INDEX_UNBOUNDED = -1;

    long a(long j6, long j10);

    long b(long j6, long j10);

    long c(long j6, long j10);

    long d(long j6, long j10);

    long e(long j6);

    long f();

    RangedUri g(long j6);

    long getTimeUs(long j6);

    boolean h();

    long i(long j6, long j10);
}
