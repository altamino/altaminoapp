package androidx.media3.exoplayer.upstream.experimental;

import android.os.Handler;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.DataSource;
import androidx.media3.exoplayer.upstream.BandwidthMeter;

/* JADX INFO: loaded from: classes11.dex */
@UnstableApi
public interface BandwidthEstimator {
    public static final long ESTIMATE_NOT_AVAILABLE = Long.MIN_VALUE;

    void a(BandwidthMeter.EventListener eventListener);

    long b();

    void c(Handler handler, BandwidthMeter.EventListener eventListener);

    void d(DataSource dataSource);

    void e(DataSource dataSource);

    void f(DataSource dataSource, int i10);

    void g(DataSource dataSource);
}
