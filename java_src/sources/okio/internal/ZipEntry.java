package okio.internal;

import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class ZipEntry {

    @NotNull
    private final Path canonicalPath;

    @NotNull
    private final List<Path> children;

    @NotNull
    private final String comment;
    private final long compressedSize;
    private final int compressionMethod;
    private final long crc;
    private final boolean isDirectory;

    @Nullable
    private final Long lastModifiedAtMillis;
    private final long offset;
    private final long size;

    public ZipEntry(@NotNull Path canonicalPath, boolean z6, @NotNull String comment, long j6, long j10, long j11, int i10, @Nullable Long l, long j12) {
        t.j(canonicalPath, "canonicalPath");
        t.j(comment, "comment");
        this.canonicalPath = canonicalPath;
        this.isDirectory = z6;
        this.comment = comment;
        this.crc = j6;
        this.compressedSize = j10;
        this.size = j11;
        this.compressionMethod = i10;
        this.lastModifiedAtMillis = l;
        this.offset = j12;
        this.children = new ArrayList();
    }

    @NotNull
    public final Path getCanonicalPath() {
        return this.canonicalPath;
    }

    @NotNull
    public final List<Path> getChildren() {
        return this.children;
    }

    @NotNull
    public final String getComment() {
        return this.comment;
    }

    public final long getCompressedSize() {
        return this.compressedSize;
    }

    public final int getCompressionMethod() {
        return this.compressionMethod;
    }

    public final long getCrc() {
        return this.crc;
    }

    @Nullable
    public final Long getLastModifiedAtMillis() {
        return this.lastModifiedAtMillis;
    }

    public final long getOffset() {
        return this.offset;
    }

    public final long getSize() {
        return this.size;
    }

    public final boolean isDirectory() {
        return this.isDirectory;
    }

    public /* synthetic */ ZipEntry(Path path, boolean z6, String str, long j6, long j10, long j11, int i10, Long l, long j12, int i11, k kVar) {
        this(path, (i11 & 2) != 0 ? false : z6, (i11 & 4) != 0 ? "" : str, (i11 & 8) != 0 ? -1L : j6, (i11 & 16) != 0 ? -1L : j10, (i11 & 32) != 0 ? -1L : j11, (i11 & 64) != 0 ? -1 : i10, (i11 & 128) != 0 ? null : l, (i11 & 256) == 0 ? j12 : -1L);
    }
}
