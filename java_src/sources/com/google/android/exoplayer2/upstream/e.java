package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes4.dex */
public interface e {

    public interface a {

        /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.e$a$a, reason: collision with other inner class name */
        public static final class C0184a {
            private final CopyOnWriteArrayList<C0185a> listeners = new CopyOnWriteArrayList<>();

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX INFO: renamed from: com.google.android.exoplayer2.upstream.e$a$a$a, reason: collision with other inner class name */
            static final class C0185a {
                private final Handler handler;
                private final a listener;
                private boolean released;

                public void d() {
                    this.released = true;
                }

                public C0185a(Handler handler, a aVar) {
                    this.handler = handler;
                    this.listener = aVar;
                }
            }

            public void c(final int i10, final long j6, final long j10) {
                for (final C0185a c0185a : this.listeners) {
                    if (!c0185a.released) {
                        c0185a.handler.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                e.a.C0184a.d(c0185a, i10, j6, j10);
                            }
                        });
                    }
                }
            }

            public void e(a aVar) {
                for (C0185a c0185a : this.listeners) {
                    if (c0185a.listener == aVar) {
                        c0185a.d();
                        this.listeners.remove(c0185a);
                    }
                }
            }

            /* JADX INFO: Access modifiers changed from: private */
            public static /* synthetic */ void d(C0185a c0185a, int i10, long j6, long j10) {
                c0185a.listener.onBandwidthSample(i10, j6, j10);
            }

            public void b(Handler handler, a aVar) {
                com.google.android.exoplayer2.util.a.e(handler);
                com.google.android.exoplayer2.util.a.e(aVar);
                e(aVar);
                this.listeners.add(new C0185a(handler, aVar));
            }
        }

        void onBandwidthSample(int i10, long j6, long j10);
    }

    void c(Handler handler, a aVar);

    @Nullable
    m0 d();

    void f(a aVar);
}
