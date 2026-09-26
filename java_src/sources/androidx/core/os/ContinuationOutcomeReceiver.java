package androidx.core.os;

import android.os.OutcomeReceiver;
import androidx.annotation.RequiresApi;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import w7.v;
import w7.w;

/* JADX INFO: loaded from: classes9.dex */
@RequiresApi
final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {

    @NotNull
    private final kotlin.coroutines.d<R> continuation;

    public void onResult(R r) {
        if (compareAndSet(false, true)) {
            this.continuation.resumeWith(v.b(r));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public ContinuationOutcomeReceiver(@NotNull kotlin.coroutines.d<? super R> continuation) {
        super(false);
        t.j(continuation, "continuation");
        this.continuation = continuation;
    }

    public void onError(@NotNull E error) {
        t.j(error, "error");
        if (compareAndSet(false, true)) {
            kotlin.coroutines.d<R> dVar = this.continuation;
            v.a aVar = v.Companion;
            dVar.resumeWith(v.b(w.a(error)));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    @NotNull
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
