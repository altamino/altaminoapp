package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.l0;
import w7.v;

/* JADX INFO: loaded from: classes9.dex */
final class ContinuationRunnable extends AtomicBoolean implements Runnable {

    @NotNull
    private final d<l0> continuation;

    @Override // java.lang.Runnable
    public void run() {
        if (compareAndSet(false, true)) {
            d<l0> dVar = this.continuation;
            v.a aVar = v.Companion;
            dVar.resumeWith(v.b(l0.INSTANCE));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationRunnable(@NotNull d<? super l0> continuation) {
        super(false);
        t.j(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationRunnable(ran = " + get() + ')';
    }
}
