package androidx.core.util;

import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.v;

/* JADX INFO: loaded from: classes10.dex */
final class AndroidXContinuationConsumer<T> extends AtomicBoolean implements Consumer<T> {

    @NotNull
    private final d<T> continuation;

    @Override // androidx.core.util.Consumer
    public void accept(T t5) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(v.b(t5));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public AndroidXContinuationConsumer(@NotNull d<? super T> continuation) {
        super(false);
        t.j(continuation, "continuation");
        this.continuation = continuation;
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationConsumer(resultAccepted = " + get() + ')';
    }
}
