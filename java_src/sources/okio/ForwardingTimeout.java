package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public class ForwardingTimeout extends Timeout {

    @NotNull
    private Timeout delegate;

    @Override // okio.Timeout
    public long deadlineNanoTime() {
        return this.delegate.deadlineNanoTime();
    }

    @NotNull
    public final Timeout delegate() {
        return this.delegate;
    }

    @NotNull
    public final ForwardingTimeout setDelegate(@NotNull Timeout delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
        return this;
    }

    public ForwardingTimeout(@NotNull Timeout delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearDeadline() {
        return this.delegate.clearDeadline();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout clearTimeout() {
        return this.delegate.clearTimeout();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout deadlineNanoTime(long j6) {
        return this.delegate.deadlineNanoTime(j6);
    }

    @Override // okio.Timeout
    public boolean hasDeadline() {
        return this.delegate.hasDeadline();
    }

    /* JADX INFO: renamed from: setDelegate, reason: collision with other method in class */
    public final /* synthetic */ void m1797setDelegate(Timeout timeout) {
        kotlin.jvm.internal.t.j(timeout, "<set-?>");
        this.delegate = timeout;
    }

    @Override // okio.Timeout
    public void throwIfReached() throws IOException {
        this.delegate.throwIfReached();
    }

    @Override // okio.Timeout
    @NotNull
    public Timeout timeout(long j6, @NotNull TimeUnit unit) {
        kotlin.jvm.internal.t.j(unit, "unit");
        return this.delegate.timeout(j6, unit);
    }

    @Override // okio.Timeout
    public long timeoutNanos() {
        return this.delegate.timeoutNanos();
    }
}
