package androidx.media3.exoplayer.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.datasource.TransferListener;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@UnstableApi
public interface BandwidthMeter {

    public interface EventListener {

        public static final class EventDispatcher {
            private final CopyOnWriteArrayList<HandlerAndListener> listeners = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            static final class HandlerAndListener {
                private final Handler handler;
                private final EventListener listener;
                private boolean released;

                public void d() {
                    this.released = true;
                }

                public HandlerAndListener(Handler handler, EventListener eventListener) {
                    this.handler = handler;
                    this.listener = eventListener;
                }
            }

            public void c(final int i10, final long j6, final long j10) {
                for (final HandlerAndListener handlerAndListener : this.listeners) {
                    if (!handlerAndListener.released) {
                        handlerAndListener.handler.post(new Runnable() { // from class: androidx.media3.exoplayer.upstream.b
                            @Override // java.lang.Runnable
                            public final void run() {
                                BandwidthMeter.EventListener.EventDispatcher.d(handlerAndListener, i10, j6, j10);
                            }
                        });
                    }
                }
            }

            public void e(EventListener eventListener) {
                for (HandlerAndListener handlerAndListener : this.listeners) {
                    if (handlerAndListener.listener == eventListener) {
                        handlerAndListener.d();
                        this.listeners.remove(handlerAndListener);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(HandlerAndListener handlerAndListener, int i10, long j6, long j10) {
                handlerAndListener.listener.onBandwidthSample(i10, j6, j10);
            }

            public void b(Handler handler, EventListener eventListener) {
                Assertions.e(handler);
                Assertions.e(eventListener);
                e(eventListener);
                this.listeners.add(new HandlerAndListener(handler, eventListener));
            }
        }

        void onBandwidthSample(int i10, long j6, long j10);
    }

    void a(EventListener eventListener);

    long b();

    void c(Handler handler, EventListener eventListener);

    @Nullable
    TransferListener d();

    long getBitrateEstimate();
}
