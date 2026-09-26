package okhttp3.internal.cache;

import e8.l;
import java.io.EOFException;
import java.io.IOException;
import kotlin.jvm.internal.t;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
public class FaultHidingSink extends ForwardingSink {
    private boolean hasErrors;

    @NotNull
    private final l<IOException, l0> onException;

    @NotNull
    public final l<IOException, l0> getOnException() {
        return this.onException;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public FaultHidingSink(@NotNull Sink delegate, @NotNull l<? super IOException, l0> onException) {
        super(delegate);
        t.j(delegate, "delegate");
        t.j(onException, "onException");
        this.onException = onException;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.close();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        if (this.hasErrors) {
            return;
        }
        try {
            super.flush();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer source, long j6) throws EOFException {
        t.j(source, "source");
        if (this.hasErrors) {
            source.skip(j6);
            return;
        }
        try {
            super.write(source, j6);
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }
}
