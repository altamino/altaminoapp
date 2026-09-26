package coil.decode;

import java.io.File;
import kotlin.jvm.internal.t;
import okio.BufferedSource;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
public final class s extends p {

    @NotNull
    private final File cacheDirectory;

    @Nullable
    private Path file;
    private boolean isClosed;

    @Nullable
    private final p.a metadata;

    @Nullable
    private BufferedSource source;

    public s(@NotNull BufferedSource bufferedSource, @NotNull File file, @Nullable p.a aVar) {
        super(null);
        this.cacheDirectory = file;
        this.metadata = aVar;
        this.source = bufferedSource;
        if (!file.isDirectory()) {
            throw new IllegalArgumentException("cacheDirectory must be a directory.".toString());
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() {
        try {
            this.isClosed = true;
            BufferedSource bufferedSource = this.source;
            if (bufferedSource != null) {
                coil.util.i.d(bufferedSource);
            }
            Path path = this.file;
            if (path != null) {
                l().delete(path);
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
        FileSystem fileSystemL = l();
        Path path = this.file;
        t.g(path);
        BufferedSource bufferedSourceBuffer = Okio.buffer(fileSystemL.source(path));
        this.source = bufferedSourceBuffer;
        return bufferedSourceBuffer;
    }

    private final void k() {
        if (!(!this.isClosed)) {
            throw new IllegalStateException("closed".toString());
        }
    }

    @NotNull
    public FileSystem l() {
        return FileSystem.SYSTEM;
    }
}
