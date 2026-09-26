package androidx.work;

import com.google.common.util.concurrent.k;
import java.util.concurrent.CancellationException;
import kotlinx.coroutines.o;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes2.dex */
public final class ListenableFutureKt$await$2$1 implements Runnable {
    final /* synthetic */ o<Object> $cancellableContinuation;
    final /* synthetic */ k<Object> $this_await;

    public ListenableFutureKt$await$2$1(o<Object> oVar, k<Object> kVar) {
        this.$cancellableContinuation = oVar;
        this.$this_await = kVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            o<Object> oVar = this.$cancellableContinuation;
            v.a aVar = v.Companion;
            oVar.resumeWith(v.b(this.$this_await.get()));
        } catch (Throwable th) {
            Throwable cause = th.getCause();
            if (cause == null) {
                cause = th;
            }
            if (th instanceof CancellationException) {
                this.$cancellableContinuation.e(cause);
                return;
            }
            o<Object> oVar2 = this.$cancellableContinuation;
            v.a aVar2 = v.Companion;
            oVar2.resumeWith(v.b(w.a(cause)));
        }
    }
}
