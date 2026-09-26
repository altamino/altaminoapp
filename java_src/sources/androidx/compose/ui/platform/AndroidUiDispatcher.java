package androidx.compose.ui.platform;

import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import androidx.compose.runtime.MonotonicFrameClock;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.core.os.HandlerCompat;
import java.util.ArrayList;
import java.util.List;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class AndroidUiDispatcher extends kotlinx.coroutines.k0 {

    @NotNull
    private final Choreographer choreographer;

    @NotNull
    private final AndroidUiDispatcher$dispatchCallback$1 dispatchCallback;

    @NotNull
    private final MonotonicFrameClock frameClock;

    @NotNull
    private final Handler handler;

    @NotNull
    private final Object lock;
    private boolean scheduledFrameDispatch;
    private boolean scheduledTrampolineDispatch;

    @NotNull
    private List<Choreographer.FrameCallback> spareToRunOnFrame;

    @NotNull
    private List<Choreographer.FrameCallback> toRunOnFrame;

    @NotNull
    private final kotlin.collections.k<Runnable> toRunTrampolined;

    @NotNull
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;

    @NotNull
    private static final w7.m<kotlin.coroutines.g> Main$delegate = w7.o.a(AndroidUiDispatcher$Companion$Main$2.INSTANCE);

    @NotNull
    private static final ThreadLocal<kotlin.coroutines.g> currentThread = new ThreadLocal<kotlin.coroutines.g>() { // from class: androidx.compose.ui.platform.AndroidUiDispatcher$Companion$currentThread$1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        @NotNull
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.coroutines.g initialValue() {
            Choreographer choreographer = Choreographer.getInstance();
            kotlin.jvm.internal.t.i(choreographer, "getInstance()");
            Looper looperMyLooper = Looper.myLooper();
            if (looperMyLooper == null) {
                throw new IllegalStateException("no Looper on this thread".toString());
            }
            Handler handlerA = HandlerCompat.a(looperMyLooper);
            kotlin.jvm.internal.t.i(handlerA, "createAsync(\n           …d\")\n                    )");
            AndroidUiDispatcher androidUiDispatcher = new AndroidUiDispatcher(choreographer, handlerA, null);
            return androidUiDispatcher.plus(androidUiDispatcher.M0());
        }
    };

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final kotlin.coroutines.g a() {
            if (AndroidUiDispatcher_androidKt.b()) {
                return b();
            }
            kotlin.coroutines.g gVar = (kotlin.coroutines.g) AndroidUiDispatcher.currentThread.get();
            if (gVar != null) {
                return gVar;
            }
            throw new IllegalStateException("no AndroidUiDispatcher for this thread".toString());
        }

        @NotNull
        public final kotlin.coroutines.g b() {
            return (kotlin.coroutines.g) AndroidUiDispatcher.Main$delegate.getValue();
        }
    }

    public /* synthetic */ AndroidUiDispatcher(Choreographer choreographer, Handler handler, kotlin.jvm.internal.k kVar) {
        this(choreographer, handler);
    }

    @NotNull
    public final Choreographer L0() {
        return this.choreographer;
    }

    @NotNull
    public final MonotonicFrameClock M0() {
        return this.frameClock;
    }

    private AndroidUiDispatcher(Choreographer choreographer, Handler handler) {
        this.choreographer = choreographer;
        this.handler = handler;
        this.lock = new Object();
        this.toRunTrampolined = new kotlin.collections.k<>();
        this.toRunOnFrame = new ArrayList();
        this.spareToRunOnFrame = new ArrayList();
        this.dispatchCallback = new AndroidUiDispatcher$dispatchCallback$1(this);
        this.frameClock = new AndroidUiFrameClock(choreographer);
    }

    private final Runnable N0() {
        Runnable runnableX;
        synchronized (this.lock) {
            runnableX = this.toRunTrampolined.x();
        }
        return runnableX;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O0(long j6) {
        synchronized (this.lock) {
            if (this.scheduledFrameDispatch) {
                this.scheduledFrameDispatch = false;
                List<Choreographer.FrameCallback> list = this.toRunOnFrame;
                this.toRunOnFrame = this.spareToRunOnFrame;
                this.spareToRunOnFrame = list;
                int size = list.size();
                for (int i10 = 0; i10 < size; i10++) {
                    list.get(i10).doFrame(j6);
                }
                list.clear();
            }
        }
    }

    public final void Q0(@NotNull Choreographer.FrameCallback callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        synchronized (this.lock) {
            try {
                this.toRunOnFrame.add(callback);
                if (!this.scheduledFrameDispatch) {
                    this.scheduledFrameDispatch = true;
                    this.choreographer.postFrameCallback(this.dispatchCallback);
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void R0(@NotNull Choreographer.FrameCallback callback) {
        kotlin.jvm.internal.t.j(callback, "callback");
        synchronized (this.lock) {
            this.toRunOnFrame.remove(callback);
        }
    }

    @Override // kotlinx.coroutines.k0
    public void dispatch(@NotNull kotlin.coroutines.g context, @NotNull Runnable block) {
        kotlin.jvm.internal.t.j(context, "context");
        kotlin.jvm.internal.t.j(block, "block");
        synchronized (this.lock) {
            try {
                this.toRunTrampolined.g(block);
                if (!this.scheduledTrampolineDispatch) {
                    this.scheduledTrampolineDispatch = true;
                    this.handler.post(this.dispatchCallback);
                    if (!this.scheduledFrameDispatch) {
                        this.scheduledFrameDispatch = true;
                        this.choreographer.postFrameCallback(this.dispatchCallback);
                    }
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P0() {
        boolean z6;
        do {
            Runnable runnableN0 = N0();
            while (runnableN0 != null) {
                runnableN0.run();
                runnableN0 = N0();
            }
            synchronized (this.lock) {
                if (this.toRunTrampolined.isEmpty()) {
                    z6 = false;
                    this.scheduledTrampolineDispatch = false;
                } else {
                    z6 = true;
                }
            }
        } while (z6);
    }
}
