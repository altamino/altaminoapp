package okio.internal;

import java.io.IOException;
import kotlin.jvm.internal.t;
import okio.Buffer;
import okio.ForwardingSource;
import okio.Source;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class FixedLengthSource extends ForwardingSource {
    private long bytesReceived;
    private final long size;
    private final boolean truncate;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FixedLengthSource(@NotNull Source delegate, long j6, boolean z6) {
        super(delegate);
        t.j(delegate, "delegate");
        this.size = j6;
        this.truncate = z6;
    }

    private final void truncateToSize(Buffer buffer, long j6) throws IOException {
        Buffer buffer2 = new Buffer();
        buffer2.writeAll(buffer);
        buffer.write(buffer2, j6);
        buffer2.clear();
    }

    @Override // okio.ForwardingSource, okio.Source
    public long read(@NotNull Buffer sink, long j6) throws IOException {
        t.j(sink, "sink");
        long j10 = this.bytesReceived;
        long j11 = this.size;
        if (j10 > j11) {
            j6 = 0;
        } else if (this.truncate) {
            long j12 = j11 - j10;
            if (j12 == 0) {
                return -1L;
            }
            j6 = Math.min(j6, j12);
        }
        long j13 = super.read(sink, j6);
        if (j13 != -1) {
            this.bytesReceived += j13;
        }
        long j14 = this.bytesReceived;
        long j15 = this.size;
        if ((j14 >= j15 || j13 != -1) && j14 <= j15) {
            return j13;
        }
        if (j13 > 0 && j14 > j15) {
            truncateToSize(sink, sink.size() - (this.bytesReceived - this.size));
        }
        throw new IOException("expected " + this.size + " bytes but got " + this.bytesReceived);
    }
}
