package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import androidx.media3.exoplayer.drm.DrmSessionManagerProvider;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import androidx.media3.exoplayer.upstream.LoadErrorHandlingPolicy;
import java.io.IOException;

/* JADX INFO: loaded from: classes4.dex */
public interface MediaSource {

    public interface Factory {

        @UnstableApi
        public static final Factory UNSUPPORTED = MediaSourceFactory.UNSUPPORTED;

        @UnstableApi
        Factory a(DrmSessionManagerProvider drmSessionManagerProvider);

        @UnstableApi
        Factory b(LoadErrorHandlingPolicy loadErrorHandlingPolicy);

        @UnstableApi
        Factory c(CmcdConfiguration.Factory factory);

        @UnstableApi
        MediaSource d(MediaItem mediaItem);

        @UnstableApi
        int[] getSupportedTypes();
    }

    @UnstableApi
    public static final class MediaPeriodId extends androidx.media3.common.MediaPeriodId {
        public MediaPeriodId(Object obj) {
            super(obj);
        }

        public MediaPeriodId(Object obj, long j6) {
            super(obj, j6);
        }

        public MediaPeriodId d(Object obj) {
            return new MediaPeriodId(super.a(obj));
        }

        public MediaPeriodId e(long j6) {
            return new MediaPeriodId(super.b(j6));
        }

        public MediaPeriodId(Object obj, long j6, int i10) {
            super(obj, j6, i10);
        }

        public MediaPeriodId(Object obj, int i10, int i11, long j6) {
            super(obj, i10, i11, j6);
        }

        public MediaPeriodId(androidx.media3.common.MediaPeriodId mediaPeriodId) {
            super(mediaPeriodId);
        }
    }

    @UnstableApi
    public interface MediaSourceCaller {
        void Q(MediaSource mediaSource, Timeline timeline);
    }

    @UnstableApi
    void A(MediaPeriod mediaPeriod);

    @UnstableApi
    void E(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    void J(MediaSourceEventListener mediaSourceEventListener);

    @UnstableApi
    MediaPeriod M(MediaPeriodId mediaPeriodId, Allocator allocator, long j6);

    @UnstableApi
    void P(DrmSessionEventListener drmSessionEventListener);

    @UnstableApi
    void T(MediaSourceCaller mediaSourceCaller, @Nullable TransferListener transferListener, PlayerId playerId);

    @UnstableApi
    void U(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    void X(MediaSourceCaller mediaSourceCaller);

    @UnstableApi
    MediaItem j();

    @UnstableApi
    void maybeThrowSourceInfoRefreshError() throws IOException;

    @Nullable
    @UnstableApi
    Timeline o();

    @UnstableApi
    boolean r();

    @UnstableApi
    void s(Handler handler, MediaSourceEventListener mediaSourceEventListener);

    @UnstableApi
    void y(Handler handler, DrmSessionEventListener drmSessionEventListener);
}
