package androidx.media3.exoplayer.drm;

import android.os.Handler;
import androidx.annotation.CheckResult;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.source.MediaSource;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface DrmSessionEventListener {

    public static class EventDispatcher {
        private final CopyOnWriteArrayList<ListenerAndHandler> listenerAndHandlers;

        @Nullable
        public final MediaSource.MediaPeriodId mediaPeriodId;
        public final int windowIndex;

        public EventDispatcher() {
            this(new CopyOnWriteArrayList(), 0, null);
        }

        private static final class ListenerAndHandler {
            public Handler handler;
            public DrmSessionEventListener listener;

            public ListenerAndHandler(Handler handler, DrmSessionEventListener drmSessionEventListener) {
                this.handler = handler;
                this.listener = drmSessionEventListener;
            }
        }

        private EventDispatcher(CopyOnWriteArrayList<ListenerAndHandler> copyOnWriteArrayList, int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            this.listenerAndHandlers = copyOnWriteArrayList;
            this.windowIndex = i10;
            this.mediaPeriodId = mediaPeriodId;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void n(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.x(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void o(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.R(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void p(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.W(this.windowIndex, this.mediaPeriodId);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void q(DrmSessionEventListener drmSessionEventListener, int i10) {
            drmSessionEventListener.O(this.windowIndex, this.mediaPeriodId);
            drmSessionEventListener.N(this.windowIndex, this.mediaPeriodId, i10);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void r(DrmSessionEventListener drmSessionEventListener, Exception exc) {
            drmSessionEventListener.S(this.windowIndex, this.mediaPeriodId, exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void s(DrmSessionEventListener drmSessionEventListener) {
            drmSessionEventListener.F(this.windowIndex, this.mediaPeriodId);
        }

        public void h() {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.p
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f512a.n(drmSessionEventListener);
                    }
                });
            }
        }

        public void i() {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.o
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f510a.o(drmSessionEventListener);
                    }
                });
            }
        }

        public void j() {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f508a.p(drmSessionEventListener);
                    }
                });
            }
        }

        public void k(final int i10) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.k
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f500a.q(drmSessionEventListener, i10);
                    }
                });
            }
        }

        public void l(final Exception exc) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.m
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f505a.r(drmSessionEventListener, exc);
                    }
                });
            }
        }

        public void m() {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                final DrmSessionEventListener drmSessionEventListener = listenerAndHandler.listener;
                Util.T0(listenerAndHandler.handler, new Runnable() { // from class: androidx.media3.exoplayer.drm.l
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f503a.s(drmSessionEventListener);
                    }
                });
            }
        }

        public void t(DrmSessionEventListener drmSessionEventListener) {
            for (ListenerAndHandler listenerAndHandler : this.listenerAndHandlers) {
                if (listenerAndHandler.listener == drmSessionEventListener) {
                    this.listenerAndHandlers.remove(listenerAndHandler);
                }
            }
        }

        @CheckResult
        public EventDispatcher u(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId) {
            return new EventDispatcher(this.listenerAndHandlers, i10, mediaPeriodId);
        }

        public void g(Handler handler, DrmSessionEventListener drmSessionEventListener) {
            Assertions.e(handler);
            Assertions.e(drmSessionEventListener);
            this.listenerAndHandlers.add(new ListenerAndHandler(handler, drmSessionEventListener));
        }
    }

    void F(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId);

    void N(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, int i11);

    @Deprecated
    void O(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId);

    void R(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId);

    void S(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId, Exception exc);

    void W(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId);

    void x(int i10, @Nullable MediaSource.MediaPeriodId mediaPeriodId);
}
