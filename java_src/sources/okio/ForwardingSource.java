package okio;

import java.io.IOException;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
public abstract class ForwardingSource implements Source {

    @NotNull
    private final Source delegate;

    @NotNull
    /* JADX INFO: renamed from: -deprecated_delegate, reason: not valid java name */
    public final Source m1796deprecated_delegate() {
        return this.delegate;
    }

    @NotNull
    public final Source delegate() {
        return this.delegate;
    }

    public ForwardingSource(@NotNull Source delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.delegate.close();
    }

    @Override // okio.Source
    public long read(@NotNull Buffer sink, long j6) throws IOException {
        kotlin.jvm.internal.t.j(sink, "sink");
        return this.delegate.read(sink, j6);
    }

    @Override // okio.Source
    @NotNull
    public Timeout timeout() {
        return this.delegate.timeout();
    }

    @NotNull
    public String toString() {
        return getClass().getSimpleName() + '(' + this.delegate + ')';
    }
}
