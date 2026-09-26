package androidx.compose.ui.platform;

import android.view.Choreographer;

/* JADX INFO: loaded from: classes5.dex */
public final class AndroidUiDispatcher$dispatchCallback$1 implements Choreographer.FrameCallback, Runnable {
    final /* synthetic */ AndroidUiDispatcher this$0;

    AndroidUiDispatcher$dispatchCallback$1(AndroidUiDispatcher androidUiDispatcher) {
        this.this$0 = androidUiDispatcher;
    }

    @Override // android.view.Choreographer.FrameCallback
    public void doFrame(long j6) {
        this.this$0.handler.removeCallbacks(this);
        this.this$0.P0();
        this.this$0.O0(j6);
    }

    @Override // java.lang.Runnable
    public void run() {
        this.this$0.P0();
        Object obj = this.this$0.lock;
        AndroidUiDispatcher androidUiDispatcher = this.this$0;
        synchronized (obj) {
            try {
                if (androidUiDispatcher.toRunOnFrame.isEmpty()) {
                    androidUiDispatcher.L0().removeFrameCallback(this);
                    androidUiDispatcher.scheduledFrameDispatch = false;
                }
                w7.l0 l0Var = w7.l0.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
