package coil.decode;

import java.io.Closeable;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class o extends p {

    @Nullable
    private final Closeable closeable;

    @Nullable
    private final String diskCacheKey;

    @NotNull
    private final Path file;

    @NotNull
    private final FileSystem fileSystem;
    private boolean isClosed;

    @Nullable
    private final p.a metadata;

    @Nullable
    private BufferedSource source;

    public o(@NotNull Path path, @NotNull FileSystem fileSystem, @Nullable String str, @Nullable Closeable closeable, @Nullable p.a aVar) {
        super(null);
        this.file = path;
        this.fileSystem = fileSystem;
        this.diskCacheKey = str;
        this.closeable = closeable;
        this.metadata = aVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.isClosed = true;
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                coil.util.i.d(bufferedSource);
            }
            Closeable closeable = this.closeable;
            if (closeable != null) {
                coil.util.i.d(closeable);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // coil.decode.p
    @Nullable
    public p.a d() {
        return this.metadata;
    }

    @Override // coil.decode.p
    @NotNull
    public synchronized BufferedSource h() {
        k();
        BufferedSource bufferedSource = this.source;
        if (bufferedSource != null) {
            return bufferedSource;
        }
        BufferedSource bufferedSourceBuffer = Okio.buffer(m().source(this.file));
        this.source = bufferedSourceBuffer;
        return bufferedSourceBuffer;
    }

    @Nullable
    public final String l() {
        return this.diskCacheKey;
    }

    @NotNull
    public FileSystem m() {
        return this.fileSystem;
    }

    private final void k() {
        if (!(!this.isClosed)) {
            throw new IllegalStateException("closed".toString());
        }
    }
}
