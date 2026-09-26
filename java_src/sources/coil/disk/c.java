package coil.disk;

import e8.l;
import java.io.EOFException;
import java.io.IOException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.Sink;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class c extends ForwardingSink {
    private boolean hasErrors;

    @NotNull
    private final l<IOException, l0> onException;

    @Override // okio.ForwardingSink, okio.Sink
    public void write(@NotNull Buffer buffer, long j6) throws EOFException {
        if (this.hasErrors) {
            buffer.skip(j6);
            return;
        }
        try {
            super.write(buffer, j6);
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c(@NotNull Sink sink, @NotNull l<? super IOException, l0> lVar) {
        super(sink);
        this.onException = lVar;
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            super.close();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }

    @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
    public void flush() {
        try {
            super.flush();
        } catch (IOException e) {
            this.hasErrors = true;
            this.onException.invoke(e);
        }
    }
}
