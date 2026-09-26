package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import android.view.Choreographer;
import android.view.Display;
import android.view.View;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okhttp3.internal.http2.Http2Connection;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
@ExperimentalFoundationApi
public final class LazyLayoutPrefetcher implements RememberObserver, LazyLayoutPrefetchState.Prefetcher, Runnable, Choreographer.FrameCallback {

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static long frameIntervalNs;
    private long averagePrecomposeTimeNs;
    private long averagePremeasureTimeNs;
    private final Choreographer choreographer;
    private boolean isActive;

    @NotNull
    private final LazyLayoutItemContentFactory itemContentFactory;

    @NotNull
    private final MutableVector<PrefetchRequest> prefetchRequests;
    private boolean prefetchScheduled;

    @NotNull
    private final LazyLayoutPrefetchState prefetchState;

    @NotNull
    private final SubcomposeLayoutState subcomposeLayoutState;

    @NotNull
    private final View view;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:10:0x0021  */
        public final void b(View view) {
            float refreshRate;
            if (LazyLayoutPrefetcher.frameIntervalNs == 0) {
                Display display = view.getDisplay();
                if (!view.isInEditMode() && display != null) {
                    refreshRate = display.getRefreshRate();
                    if (refreshRate < 30.0f) {
                        refreshRate = 60.0f;
                    }
                } else {
                    refreshRate = 60.0f;
                }
                LazyLayoutPrefetcher.frameIntervalNs = (long) (Http2Connection.DEGRADED_PONG_TIMEOUT_NS / refreshRate);
            }
        }
    }

    private static final class PrefetchRequest implements LazyLayoutPrefetchState.PrefetchHandle {
        private boolean canceled;
        private final long constraints;
        private final int index;
        private boolean measured;

        @Nullable
        private SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;

        public /* synthetic */ PrefetchRequest(int i10, long j6, k kVar) {
            this(i10, j6);
        }

        public final boolean a() {
            return this.canceled;
        }

        public final long b() {
            return this.constraints;
        }

        public final int c() {
            return this.index;
        }

        public final boolean d() {
            return this.measured;
        }

        @Nullable
        public final SubcomposeLayoutState.PrecomposedSlotHandle e() {
            return this.precomposeHandle;
        }

        public final void f(@Nullable SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle) {
            this.precomposeHandle = precomposedSlotHandle;
        }

        private PrefetchRequest(int i10, long j6) {
            this.index = i10;
            this.constraints = j6;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public void cancel() {
            if (this.canceled) {
                return;
            }
            this.canceled = true;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle != null) {
                precomposedSlotHandle.t();
            }
            this.precomposeHandle = null;
        }
    }

    private final boolean h(long j6, long j10, long j11) {
        return j6 > j10 || j6 + j11 < j10;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        this.isActive = false;
        this.prefetchState.c(null);
        this.view.removeCallbacks(this);
        this.choreographer.removeFrameCallback(this);
    }

    public LazyLayoutPrefetcher(@NotNull LazyLayoutPrefetchState prefetchState, @NotNull SubcomposeLayoutState subcomposeLayoutState, @NotNull LazyLayoutItemContentFactory itemContentFactory, @NotNull View view) {
        t.j(prefetchState, "prefetchState");
        t.j(subcomposeLayoutState, "subcomposeLayoutState");
        t.j(itemContentFactory, "itemContentFactory");
        t.j(view, "view");
        this.prefetchState = prefetchState;
        this.subcomposeLayoutState = subcomposeLayoutState;
        this.itemContentFactory = itemContentFactory;
        this.view = view;
        this.prefetchRequests = new MutableVector<>(new PrefetchRequest[16], 0);
        this.choreographer = Choreographer.getInstance();
        Companion.b(view);
    }

    private final long g(long j6, long j10) {
        if (j10 == 0) {
            return j6;
        }
        long j11 = 4;
        return (j6 / j11) + ((j10 / j11) * ((long) 3));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.Prefetcher
    @NotNull
    public LazyLayoutPrefetchState.PrefetchHandle a(int i10, long j6) {
        PrefetchRequest prefetchRequest = new PrefetchRequest(i10, j6, null);
        this.prefetchRequests.b(prefetchRequest);
        if (!this.prefetchScheduled) {
            this.prefetchScheduled = true;
            this.view.post(this);
        }
        return prefetchRequest;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
        this.prefetchState.c(this);
        this.isActive = true;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j6) {
        if (this.isActive) {
            this.view.post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.prefetchRequests.p() || !this.prefetchScheduled || !this.isActive || this.view.getWindowVisibility() != 0) {
            this.prefetchScheduled = false;
            return;
        }
        long nanos = TimeUnit.MILLISECONDS.toNanos(this.view.getDrawingTime()) + frameIntervalNs;
        boolean z6 = false;
        while (this.prefetchRequests.q() && !z6) {
            PrefetchRequest prefetchRequest = this.prefetchRequests.m()[0];
            LazyLayoutItemProvider lazyLayoutItemProviderInvoke = this.itemContentFactory.d().invoke();
            if (!prefetchRequest.a()) {
                int iF = lazyLayoutItemProviderInvoke.f();
                int iC = prefetchRequest.c();
                if (iC >= 0 && iC < iF) {
                    if (prefetchRequest.e() == null) {
                        Trace.beginSection("compose:lazylist:prefetch:compose");
                        try {
                            long jNanoTime = System.nanoTime();
                            if (h(jNanoTime, nanos, this.averagePrecomposeTimeNs)) {
                                Object objD = lazyLayoutItemProviderInvoke.d(prefetchRequest.c());
                                prefetchRequest.f(this.subcomposeLayoutState.j(objD, this.itemContentFactory.b(prefetchRequest.c(), objD)));
                                this.averagePrecomposeTimeNs = g(System.nanoTime() - jNanoTime, this.averagePrecomposeTimeNs);
                            } else {
                                z6 = true;
                            }
                            l0 l0Var = l0.INSTANCE;
                            Trace.endSection();
                        } catch (Throwable th) {
                            Trace.endSection();
                            throw th;
                        }
                    } else {
                        if (!(!prefetchRequest.d())) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        Trace.beginSection("compose:lazylist:prefetch:measure");
                        try {
                            long jNanoTime2 = System.nanoTime();
                            if (h(jNanoTime2, nanos, this.averagePremeasureTimeNs)) {
                                SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandleE = prefetchRequest.e();
                                t.g(precomposedSlotHandleE);
                                int iA = precomposedSlotHandleE.a();
                                for (int i10 = 0; i10 < iA; i10++) {
                                    precomposedSlotHandleE.b(i10, prefetchRequest.b());
                                }
                                this.averagePremeasureTimeNs = g(System.nanoTime() - jNanoTime2, this.averagePremeasureTimeNs);
                                this.prefetchRequests.v(0);
                            } else {
                                l0 l0Var2 = l0.INSTANCE;
                                z6 = true;
                            }
                            Trace.endSection();
                        } catch (Throwable th2) {
                            Trace.endSection();
                            throw th2;
                        }
                    }
                }
            }
            this.prefetchRequests.v(0);
        }
        if (z6) {
            this.choreographer.postFrameCallback(this);
        } else {
            this.prefetchScheduled = false;
        }
    }
}
