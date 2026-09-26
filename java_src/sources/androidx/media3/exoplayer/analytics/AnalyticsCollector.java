package androidx.media3.exoplayer.analytics;

import android.os.Looper;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.Player;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.MediaSourceEventListener;
import androidx.media3.exoplayer.upstream.BandwidthMeter;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@UnstableApi
public interface AnalyticsCollector extends Player.Listener, MediaSourceEventListener, BandwidthMeter.EventListener, DrmSessionEventListener {
    void C(AnalyticsListener analyticsListener);

    void G(Player player, Looper looper);

    void a(Exception exc);

    void b(String str);

    void c(String str);

    void d(Exception exc);

    void e(long j6, int i10);

    void f(long j6);

    void g(Exception exc);

    void h(Object obj, long j6);

    void i(int i10, long j6, long j10);

    void k(DecoderCounters decoderCounters);

    void l(DecoderCounters decoderCounters);

    void m(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    void n(DecoderCounters decoderCounters);

    void onAudioDecoderInitialized(String str, long j6, long j10);

    void onDroppedFrames(int i10, long j6);

    void onVideoDecoderInitialized(String str, long j6, long j10);

    void p();

    void release();

    void t(Format format, @Nullable DecoderReuseEvaluation decoderReuseEvaluation);

    void u(DecoderCounters decoderCounters);

    void v(List<MediaSource.MediaPeriodId> list, @Nullable MediaSource.MediaPeriodId mediaPeriodId);
}
