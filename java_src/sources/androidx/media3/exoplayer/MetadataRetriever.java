package androidx.media3.exoplayer;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.HandlerWrapper;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.source.MediaPeriod;
import androidx.media3.exoplayer.source.MediaSource;
import androidx.media3.exoplayer.source.TrackGroupArray;
import androidx.media3.exoplayer.upstream.Allocator;
import androidx.media3.exoplayer.upstream.DefaultAllocator;

/* JADX INFO: loaded from: classes5.dex */
@UnstableApi
public final class MetadataRetriever {

    private static final class MetadataRetrieverInternal {
        private static final int MESSAGE_CHECK_FOR_FAILURE = 1;
        private static final int MESSAGE_CONTINUE_LOADING = 2;
        private static final int MESSAGE_PREPARE_SOURCE = 0;
        private static final int MESSAGE_RELEASE = 3;
        private final MediaSource.Factory mediaSourceFactory;
        private final HandlerWrapper mediaSourceHandler;
        private final HandlerThread mediaSourceThread;
        private final com.google.common.util.concurrent.q<TrackGroupArray> trackGroupsFuture;

        private final class MediaSourceHandlerCallback implements Handler.Callback {
            private static final int ERROR_POLL_INTERVAL_MS = 100;
            private MediaPeriod mediaPeriod;
            private MediaSource mediaSource;
            private final MediaSourceCaller mediaSourceCaller = new MediaSourceCaller();

            private final class MediaSourceCaller implements MediaSource.MediaSourceCaller {
                private boolean mediaPeriodCreated;
                private final MediaPeriodCallback mediaPeriodCallback = new MediaPeriodCallback();
                private final Allocator allocator = new DefaultAllocator(true, 65536);

                private final class MediaPeriodCallback implements MediaPeriod.Callback {
                    private MediaPeriodCallback() {
                    }

                    @Override // androidx.media3.exoplayer.source.SequenceableLoader.Callback
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public void f(MediaPeriod mediaPeriod) {
                        MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(2).a();
                    }

                    @Override // androidx.media3.exoplayer.source.MediaPeriod.Callback
                    public void d(MediaPeriod mediaPeriod) {
                        MetadataRetrieverInternal.this.trackGroupsFuture.A(mediaPeriod.getTrackGroups());
                        MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(3).a();
                    }
                }

                public MediaSourceCaller() {
                }

                @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
                public void Q(MediaSource mediaSource, Timeline timeline) {
                    if (this.mediaPeriodCreated) {
                        return;
                    }
                    this.mediaPeriodCreated = true;
                    MediaSourceHandlerCallback.this.mediaPeriod = mediaSource.M(new MediaSource.MediaPeriodId(timeline.q(0)), this.allocator, 0L);
                    MediaSourceHandlerCallback.this.mediaPeriod.e(this.mediaPeriodCallback, 0L);
                }
            }

            public MediaSourceHandlerCallback() {
            }

            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    MediaSource mediaSourceD = MetadataRetrieverInternal.this.mediaSourceFactory.d((MediaItem) message.obj);
                    this.mediaSource = mediaSourceD;
                    mediaSourceD.T(this.mediaSourceCaller, null, PlayerId.UNSET);
                    MetadataRetrieverInternal.this.mediaSourceHandler.sendEmptyMessage(1);
                    return true;
                }
                if (i10 == 1) {
                    try {
                        MediaPeriod mediaPeriod = this.mediaPeriod;
                        if (mediaPeriod == null) {
                            ((MediaSource) Assertions.e(this.mediaSource)).maybeThrowSourceInfoRefreshError();
                        } else {
                            mediaPeriod.maybeThrowPrepareError();
                        }
                        MetadataRetrieverInternal.this.mediaSourceHandler.b(1, 100);
                    } catch (Exception e) {
                        MetadataRetrieverInternal.this.trackGroupsFuture.B(e);
                        MetadataRetrieverInternal.this.mediaSourceHandler.obtainMessage(3).a();
                    }
                    return true;
                }
                if (i10 == 2) {
                    ((MediaPeriod) Assertions.e(this.mediaPeriod)).continueLoading(0L);
                    return true;
                }
                if (i10 != 3) {
                    return false;
                }
                if (this.mediaPeriod != null) {
                    ((MediaSource) Assertions.e(this.mediaSource)).A(this.mediaPeriod);
                }
                ((MediaSource) Assertions.e(this.mediaSource)).E(this.mediaSourceCaller);
                MetadataRetrieverInternal.this.mediaSourceHandler.removeCallbacksAndMessages(null);
                MetadataRetrieverInternal.this.mediaSourceThread.quit();
                return true;
            }
        }

        public MetadataRetrieverInternal(MediaSource.Factory factory, Clock clock) {
            this.mediaSourceFactory = factory;
            HandlerThread handlerThread = new HandlerThread("ExoPlayer:MetadataRetriever");
            this.mediaSourceThread = handlerThread;
            handlerThread.start();
            this.mediaSourceHandler = clock.createHandler(handlerThread.getLooper(), new MediaSourceHandlerCallback());
            this.trackGroupsFuture = com.google.common.util.concurrent.q.D();
        }
    }

    private MetadataRetriever() {
    }
}
