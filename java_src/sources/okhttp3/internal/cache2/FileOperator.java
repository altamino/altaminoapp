package okhttp3.internal.cache2;

import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.t;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public final class FileOperator {

    @NotNull
    private final FileChannel fileChannel;

    public FileOperator(@NotNull FileChannel fileChannel) {
        t.j(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j6, @NotNull Buffer sink, long j10) throws IOException {
        t.j(sink, "sink");
        if (j10 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j10 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j6, j10, sink);
            j6 += jTransferTo;
            j10 -= jTransferTo;
        }
    }

    public final void write(long j6, @NotNull Buffer source, long j10) throws IOException {
        t.j(source, "source");
        if (j10 < 0 || j10 > source.size()) {
            throw new IndexOutOfBoundsException();
        }
        while (j10 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(source, j6, j10);
            j6 += jTransferFrom;
            j10 -= jTransferFrom;
        }
    }
}
