package okio;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
public abstract class ForwardingSink implements Sink {

    @NotNull
    private final Sink delegate;

    @NotNull
    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final Sink m1795deprecated_delegate() {
        return this.delegate;
    }

    @NotNull
    public final Sink delegate() {
        return this.delegate;
    }

    public ForwardingSink(@NotNull Sink delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() throws IOException {
        this.delegate.flush();
    }

    @Override // okio.Sink
    @NotNull
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }

    @Override // okio.Sink
    public void write(@NotNull Buffer source, long j6) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        this.delegate.write(source, j6);
    }
}
