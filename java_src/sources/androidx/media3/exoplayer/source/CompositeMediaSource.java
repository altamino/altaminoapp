package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnknownNull;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public abstract class CompositeMediaSource<T> extends BaseMediaSource {
    private final HashMap<T, MediaSourceAndListener<T>> childSources = new HashMap<>();

    @Nullable
    private Handler eventHandler;

    @Nullable
    private TransferListener mediaTransferListener;

    private final class ForwardingEventListener implements MediaSourceEventListener, DrmSessionEventListener {
        private DrmSessionEventListener.EventDispatcher drmEventDispatcher;

        @UnknownNull
        private final T id;
        private MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public /* synthetic */ void O(int i10, MediaSource.MediaPeriodId mediaPeriodId) {
            androidx.media3.exoplayer.drm.j.a(this, i10, mediaPeriodId);
        }

        public ForwardingEventListener(T t5) {
            this.mediaSourceEventDispatcher = CompositeMediaSource.this.c0(null);
            this.drmEventDispatcher = CompositeMediaSource.this.a0(null);
            this.id = t5;
        }

        private boolean j(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            MediaSource.MediaPeriodId mediaPeriodIdN0;
            if (mediaPeriodId != null) {
                mediaPeriodIdN0 = CompositeMediaSource.this.n0(this.id, mediaPeriodId);
                if (mediaPeriodIdN0 == null) {
                    return false;
                }
            } else {
                mediaPeriodIdN0 = null;
            }
            int iP0 = CompositeMediaSource.this.p0(this.id, i10);
            MediaSourceEventListener.EventDispatcher eventDispatcher = this.mediaSourceEventDispatcher;
            if (eventDispatcher.windowIndex != iP0 || !Util.c(eventDispatcher.mediaPeriodId, mediaPeriodIdN0)) {
                this.mediaSourceEventDispatcher = CompositeMediaSource.this.b0(iP0, mediaPeriodIdN0);
            }
            DrmSessionEventListener.EventDispatcher eventDispatcher2 = this.drmEventDispatcher;
            if (eventDispatcher2.windowIndex == iP0 && Util.c(eventDispatcher2.mediaPeriodId, mediaPeriodIdN0)) {
                return true;
            }
            this.drmEventDispatcher = CompositeMediaSource.this.Z(iP0, mediaPeriodIdN0);
            return true;
        }

        private MediaLoadData o(MediaLoadData mediaLoadData) {
            long jO0 = CompositeMediaSource.this.o0(this.id, mediaLoadData.mediaStartTimeMs);
            long jO1 = CompositeMediaSource.this.o0(this.id, mediaLoadData.mediaEndTimeMs);
            return (jO0 == mediaLoadData.mediaStartTimeMs && jO1 == mediaLoadData.mediaEndTimeMs) ? mediaLoadData : new MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, jO0, jO1);
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void B(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.r(loadEventInfo, o(mediaLoadData));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void D(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.i(o(mediaLoadData));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void F(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.m();
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void I(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.D(o(mediaLoadData));
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void L(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.A(loadEventInfo, o(mediaLoadData));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void N(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i11) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.k(i11);
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.i();
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.l(exc);
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void V(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.u(loadEventInfo, o(mediaLoadData));
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.j();
            }
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionEventListener
        public void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            if (j(i10, mediaPeriodId)) {
                this.drmEventDispatcher.h();
            }
        }

        @Override // androidx.media3.exoplayer.source.MediaSourceEventListener
        public void z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
            if (j(i10, mediaPeriodId)) {
                this.mediaSourceEventDispatcher.x(loadEventInfo, o(mediaLoadData), iOException, z6);
            }
        }
    }

    @Nullable
    protected MediaSource.MediaPeriodId n0(@UnknownNull T t5, MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId;
    }

    protected long o0(@UnknownNull T t5, long j6) {
        return j6;
    }

    protected int p0(@UnknownNull T t5, int i10) {
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX INFO: renamed from: r0, reason: merged with bridge method [inline-methods] */
    public abstract void q0(@UnknownNull T t5, MediaSource mediaSource, Timeline timeline);

    private static final class MediaSourceAndListener<T> {
        public final MediaSource.MediaSourceCaller caller;
        public final CompositeMediaSource<T>.ForwardingEventListener eventListener;
        public final MediaSource mediaSource;

        public MediaSourceAndListener(MediaSource mediaSource, MediaSource.MediaSourceCaller mediaSourceCaller, CompositeMediaSource<T>.ForwardingEventListener forwardingEventListener) {
            this.mediaSource = mediaSource;
            this.caller = mediaSourceCaller;
            this.eventListener = forwardingEventListener;
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    @CallSuper
    protected void d0() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.X(mediaSourceAndListener.caller);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    @CallSuper
    protected void e0() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.U(mediaSourceAndListener.caller);
        }
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    @CallSuper
    protected void h0(@Nullable TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.eventHandler = Util.w();
    }

    @Override // androidx.media3.exoplayer.source.BaseMediaSource
    @CallSuper
    protected void j0() {
        for (MediaSourceAndListener<T> mediaSourceAndListener : this.childSources.values()) {
            mediaSourceAndListener.mediaSource.E(mediaSourceAndListener.caller);
            mediaSourceAndListener.mediaSource.J(mediaSourceAndListener.eventListener);
            mediaSourceAndListener.mediaSource.P(mediaSourceAndListener.eventListener);
        }
        this.childSources.clear();
    }

    protected final void l0(@UnknownNull T t5) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.e(this.childSources.get(t5));
        mediaSourceAndListener.mediaSource.X(mediaSourceAndListener.caller);
    }

    protected final void m0(@UnknownNull T t5) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.e(this.childSources.get(t5));
        mediaSourceAndListener.mediaSource.U(mediaSourceAndListener.caller);
    }

    @Override // androidx.media3.exoplayer.source.MediaSource
    @CallSuper
    public void maybeThrowSourceInfoRefreshError() throws IOException {
        Iterator<MediaSourceAndListener<T>> it = this.childSources.values().iterator();
        while (it.hasNext()) {
            it.next().mediaSource.maybeThrowSourceInfoRefreshError();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void s0(@UnknownNull final T t5, MediaSource mediaSource) {
        Assertions.a(!this.childSources.containsKey(t5));
        MediaSource.MediaSourceCaller mediaSourceCaller = new MediaSource.MediaSourceCaller() { // from class: androidx.media3.exoplayer.source.a
            @Override // androidx.media3.exoplayer.source.MediaSource.MediaSourceCaller
            public final void Q(MediaSource mediaSource2, Timeline timeline) {
                this.f591a.q0(t5, mediaSource2, timeline);
            }
        };
        ForwardingEventListener forwardingEventListener = new ForwardingEventListener(t5);
        this.childSources.put(t5, new MediaSourceAndListener<>(mediaSource, mediaSourceCaller, forwardingEventListener));
        mediaSource.s((Handler) Assertions.e(this.eventHandler), forwardingEventListener);
        mediaSource.y((Handler) Assertions.e(this.eventHandler), forwardingEventListener);
        mediaSource.T(mediaSourceCaller, this.mediaTransferListener, f0());
        if (g0()) {
            return;
        }
        mediaSource.X(mediaSourceCaller);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void t0(@UnknownNull T t5) {
        MediaSourceAndListener mediaSourceAndListener = (MediaSourceAndListener) Assertions.e(this.childSources.remove(t5));
        mediaSourceAndListener.mediaSource.E(mediaSourceAndListener.caller);
        mediaSourceAndListener.mediaSource.J(mediaSourceAndListener.eventListener);
        mediaSourceAndListener.mediaSource.P(mediaSourceAndListener.eventListener);
    }

    protected CompositeMediaSource() {
    }
}
