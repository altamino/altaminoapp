package androidx.media3.exoplayer.analytics;

import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.source.MediaSource;

/* JADX INFO: loaded from: classes8.dex */
@UnstableApi
public interface PlaybackSessionManager {

    public interface Listener {
        void D(AnalyticsListener.EventTime eventTime, String str, boolean z6);

        void a(AnalyticsListener.EventTime eventTime, String str, String str2);

        void w0(AnalyticsListener.EventTime eventTime, String str);

        void y0(AnalyticsListener.EventTime eventTime, String str);
    }

    @Nullable
    String a();

    void b(AnalyticsListener.EventTime eventTime);

    void c(Listener listener);

    void d(AnalyticsListener.EventTime eventTime, int i10);

    String e(Timeline timeline, MediaSource.MediaPeriodId mediaPeriodId);

    boolean f(AnalyticsListener.EventTime eventTime, String str);

    void g(AnalyticsListener.EventTime eventTime);

    void h(AnalyticsListener.EventTime eventTime);
}
