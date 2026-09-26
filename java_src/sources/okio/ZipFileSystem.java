package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.zip.Inflater;
import kotlin.collections.d0;
import okio.internal.FixedLengthSource;
import okio.internal.ZipEntry;
import okio.internal.ZipKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
public final class ZipFileSystem extends FileSystem {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING, false, 1, (Object) null);

    @Nullable
    private final String comment;

    @NotNull
    private final Map<Path, ZipEntry> entries;

    @NotNull
    private final FileSystem fileSystem;

    @NotNull
    private final Path zipPath;

    private static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Path getROOT() {
            return ZipFileSystem.ROOT;
        }
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        List<Path> list = list(dir, true);
        kotlin.jvm.internal.t.g(list);
        return list;
    }

    public ZipFileSystem(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull Map<Path, ZipEntry> entries, @Nullable String str) {
        kotlin.jvm.internal.t.j(zipPath, "zipPath");
        kotlin.jvm.internal.t.j(fileSystem, "fileSystem");
        kotlin.jvm.internal.t.j(entries, "entries");
        this.zipPath = zipPath;
        this.fileSystem = fileSystem;
        this.entries = entries;
        this.comment = str;
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<Path> list(Path path, boolean z6) throws IOException {
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        if (zipEntry != null) {
            return d0.U0(zipEntry.getChildren());
        }
        if (!z6) {
            return null;
        }
        throw new IOException("not a directory: " + path);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) throws FileNotFoundException {
        kotlin.jvm.internal.t.j(path, "path");
        Path pathCanonicalizeInternal = canonicalizeInternal(path);
        if (this.entries.containsKey(pathCanonicalizeInternal)) {
            return pathCanonicalizeInternal;
        }
        throw new FileNotFoundException(String.valueOf(path));
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        kotlin.jvm.internal.t.j(dir, "dir");
        return list(dir, false);
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        kotlin.jvm.internal.t.j(path, "path");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(path));
        Throwable th = null;
        if (zipEntry == null) {
            return null;
        }
        FileMetadata fileMetadata = new FileMetadata(!zipEntry.isDirectory(), zipEntry.isDirectory(), null, zipEntry.isDirectory() ? null : Long.valueOf(zipEntry.getSize()), null, zipEntry.getLastModifiedAtMillis(), null, null, 128, null);
        if (zipEntry.getOffset() == -1) {
            return fileMetadata;
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
        } catch (Throwable th2) {
            th = th2;
            bufferedSourceBuffer = null;
        }
        if (fileHandleOpenReadOnly != null) {
            try {
                fileHandleOpenReadOnly.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    w7.f.a(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        kotlin.jvm.internal.t.g(bufferedSourceBuffer);
        return ZipKt.readLocalHeader(bufferedSourceBuffer, fileMetadata);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) {
        kotlin.jvm.internal.t.j(file, "file");
        throw new UnsupportedOperationException("not implemented yet!");
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z6, boolean z10) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        throw new IOException("zip entries are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        throw new IOException("zip file systems are read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws Throwable {
        BufferedSource bufferedSourceBuffer;
        kotlin.jvm.internal.t.j(file, "file");
        ZipEntry zipEntry = this.entries.get(canonicalizeInternal(file));
        if (zipEntry == null) {
            throw new FileNotFoundException("no such file: " + file);
        }
        FileHandle fileHandleOpenReadOnly = this.fileSystem.openReadOnly(this.zipPath);
        Throwable th = null;
        try {
            bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(zipEntry.getOffset()));
        } catch (Throwable th2) {
            bufferedSourceBuffer = null;
            th = th2;
        }
        if (fileHandleOpenReadOnly != null) {
            try {
                fileHandleOpenReadOnly.close();
            } catch (Throwable th3) {
                if (th == null) {
                    th = th3;
                } else {
                    w7.f.a(th, th3);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        kotlin.jvm.internal.t.g(bufferedSourceBuffer);
        ZipKt.skipLocalHeader(bufferedSourceBuffer);
        return zipEntry.getCompressionMethod() == 0 ? new FixedLengthSource(bufferedSourceBuffer, zipEntry.getSize(), true) : new FixedLengthSource(new InflaterSource(new FixedLengthSource(bufferedSourceBuffer, zipEntry.getCompressedSize(), true), new Inflater(true)), zipEntry.getSize(), false);
    }
}
