package androidx.media3.exoplayer.source;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.Format;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.io.IOException;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes9.dex */
@UnstableApi
public interface MediaSourceEventListener {

    public static class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        public void p(LoadEventInfo loadEventInfo, int i10) {
            q(loadEventInfo, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void s(LoadEventInfo loadEventInfo, int i10) {
            t(loadEventInfo, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        public void w(LoadEventInfo loadEventInfo, int i10, IOException iOException, boolean z6) {
            v(loadEventInfo, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L, iOException, z6);
        }

        public void y(LoadEventInfo loadEventInfo, int i10) {
            z(loadEventInfo, i10, -1, null, 0, null, -9223372036854775807L, -9223372036854775807L);
        }

        private static final class ListenerAndHandler {
            public Handler handler;
            public MediaSourceEventListener listener;

            public ListenerAndHandler(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
                this.handler = handler;
                this.listener = mediaSourceEventListener;
            }
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i10;
            this.mediaPeriodId = mediaPeriodId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void j(MediaSourceEventListener mediaSourceEventListener, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.D(this.windowIndex, this.mediaPeriodId, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void k(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.B(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void l(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.V(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void m(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6) {
            mediaSourceEventListener.z(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData, iOException, z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(MediaSourceEventListener mediaSourceEventListener, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.L(this.windowIndex, this.mediaPeriodId, loadEventInfo, mediaLoadData);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(MediaSourceEventListener mediaSourceEventListener, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData) {
            mediaSourceEventListener.I(this.windowIndex, mediaPeriodId, mediaLoadData);
        }

        public void A(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.t
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f626a.n(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void B(MediaSourceEventListener mediaSourceEventListener) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                if (listenerAndHandler.listener == mediaSourceEventListener) {
                    this.listenerAndHandlers.remove(listenerAndHandler);
                }
            }
        }

        public void C(int i10, long j6, long j10) {
            D(new MediaLoadData(1, i10, null, 3, null, Util.q1(j6), Util.q1(j10)));
        }

        public void D(final MediaLoadData mediaLoadData) {
            final MediaSource.MediaPeriodId mediaPeriodId = (MediaSource.MediaPeriodId) Assertions.e(this.mediaPeriodId);
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.s
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f623a.o(mediaSourceEventListener, mediaPeriodId, mediaLoadData);
                    }
                });
            }
        }

        @CheckResult
        public EventDispatcher E(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.listenerAndHandlers, i10, mediaPeriodId);
        }

        public void h(int i10, @Nullable Format format, int i11, @Nullable Object obj, long j6) {
            i(new MediaLoadData(1, i10, format, i11, obj, Util.q1(j6), -9223372036854775807L));
        }

        public void i(final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f614a.j(mediaSourceEventListener, mediaLoadData);
                    }
                });
            }
        }

        public void q(LoadEventInfo loadEventInfo, int i10, int i11, @Nullable Format format, int i12, @Nullable Object obj, long j6, long j10) {
            r(loadEventInfo, new MediaLoadData(i10, i11, format, i12, obj, Util.q1(j6), Util.q1(j10)));
        }

        public void r(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.q
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f617a.k(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void t(LoadEventInfo loadEventInfo, int i10, int i11, @Nullable Format format, int i12, @Nullable Object obj, long j6, long j10) {
            u(loadEventInfo, new MediaLoadData(i10, i11, format, i12, obj, Util.q1(j6), Util.q1(j10)));
        }

        public void u(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.u
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f629a.l(mediaSourceEventListener, loadEventInfo, mediaLoadData);
                    }
                });
            }
        }

        public void v(LoadEventInfo loadEventInfo, int i10, int i11, @Nullable Format format, int i12, @Nullable Object obj, long j6, long j10, IOException iOException, boolean z6) {
            x(loadEventInfo, new MediaLoadData(i10, i11, format, i12, obj, Util.q1(j6), Util.q1(j10)), iOException, z6);
        }

        public void x(final LoadEventInfo loadEventInfo, final MediaLoadData mediaLoadData, final IOException iOException, final boolean z6) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final MediaSourceEventListener mediaSourceEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.source.r
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f620a.m(mediaSourceEventListener, loadEventInfo, mediaLoadData, iOException, z6);
                    }
                });
            }
        }

        public void z(LoadEventInfo loadEventInfo, int i10, int i11, @Nullable Format format, int i12, @Nullable Object obj, long j6, long j10) {
            A(loadEventInfo, new MediaLoadData(i10, i11, format, i12, obj, Util.q1(j6), Util.q1(j10)));
        }

        public void g(Handler handler, MediaSourceEventListener mediaSourceEventListener) {
            Assertions.e(handler);
            Assertions.e(mediaSourceEventListener);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, mediaSourceEventListener));
        }
    }

    void B(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void D(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void I(int i10, MediaSource.MediaPeriodId mediaPeriodId, MediaLoadData mediaLoadData);

    void L(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void V(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData);

    void z(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, LoadEventInfo loadEventInfo, MediaLoadData mediaLoadData, IOException iOException, boolean z6);
}
