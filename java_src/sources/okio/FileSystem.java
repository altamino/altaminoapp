package okio;

import java.io.IOException;
import java.util.List;
import okio.internal.ResourceFileSystem;
import okio.internal._FileSystemKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public abstract class FileSystem {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final FileSystem RESOURCES;

    @NotNull
    public static final FileSystem SYSTEM;

    @NotNull
    public static final Path SYSTEM_TEMPORARY_DIRECTORY;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @NotNull
    public final Sink appendingSink(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return appendingSink(file, false);
    }

    @NotNull
    public abstract Sink appendingSink(@NotNull Path path, boolean z6) throws IOException;

    public abstract void atomicMove(@NotNull Path path, @NotNull Path path2) throws IOException;

    @NotNull
    public abstract Path canonicalize(@NotNull Path path) throws IOException;

    public final void createDirectories(@NotNull Path dir, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        _FileSystemKt.commonCreateDirectories(this, dir, z6);
    }

    public final void createDirectory(@NotNull Path dir) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        createDirectory(dir, false);
    }

    public abstract void createDirectory(@NotNull Path path, boolean z6) throws IOException;

    public abstract void createSymlink(@NotNull Path path, @NotNull Path path2) throws IOException;

    public final void delete(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        delete(path, false);
    }

    public abstract void delete(@NotNull Path path, boolean z6) throws IOException;

    public void deleteRecursively(@NotNull Path fileOrDirectory, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(fileOrDirectory, "fileOrDirectory");
        _FileSystemKt.commonDeleteRecursively(this, fileOrDirectory, z6);
    }

    @NotNull
    public abstract List<Path> list(@NotNull Path path) throws IOException;

    @Nullable
    public abstract List<Path> listOrNull(@NotNull Path path);

    @NotNull
    public kotlin.sequences.g<Path> listRecursively(@NotNull Path dir, boolean z6) {
        kotlin.jvm.internal.t.j(dir, "dir");
        return _FileSystemKt.commonListRecursively(this, dir, z6);
    }

    @Nullable
    public abstract FileMetadata metadataOrNull(@NotNull Path path) throws IOException;

    @NotNull
    public abstract FileHandle openReadOnly(@NotNull Path path) throws IOException;

    @NotNull
    public final FileHandle openReadWrite(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return openReadWrite(file, false, false);
    }

    @NotNull
    public abstract FileHandle openReadWrite(@NotNull Path path, boolean z6, boolean z10) throws IOException;

    @NotNull
    public final Sink sink(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return sink(file, false);
    }

    @NotNull
    public abstract Sink sink(@NotNull Path path, boolean z6) throws IOException;

    @NotNull
    public abstract Source source(@NotNull Path path) throws IOException;

    /* JADX INFO: renamed from: -write$default, reason: not valid java name */
    public static /* synthetic */ Object m1792write$default(FileSystem fileSystem, Path file, boolean z6, e8.l writerAction, int i10, Object obj) throws Throwable {
        Object objInvoke;
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: write");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        kotlin.jvm.internal.t.j(file, "file");
        kotlin.jvm.internal.t.j(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(file, z6));
        Throwable th = null;
        try {
            objInvoke = writerAction.invoke(bufferedSinkBuffer);
        } catch (Throwable th2) {
            objInvoke = null;
            th = th2;
        }
        if (bufferedSinkBuffer != null) {
            try {
                bufferedSinkBuffer.close();
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
        kotlin.jvm.internal.t.g(objInvoke);
        return objInvoke;
    }

    static {
        FileSystem jvmSystemFileSystem;
        try {
            Class.forName("java.nio.file.Files");
            jvmSystemFileSystem = new NioSystemFileSystem();
        } catch (ClassNotFoundException unused) {
            jvmSystemFileSystem = new JvmSystemFileSystem();
        }
        SYSTEM = jvmSystemFileSystem;
        Path.Companion companion = Path.Companion;
        String property = System.getProperty("java.io.tmpdir");
        kotlin.jvm.internal.t.i(property, "getProperty(\"java.io.tmpdir\")");
        SYSTEM_TEMPORARY_DIRECTORY = Path.Companion.get$default(companion, property, false, 1, (Object) null);
        ClassLoader classLoader = ResourceFileSystem.class.getClassLoader();
        kotlin.jvm.internal.t.i(classLoader, "ResourceFileSystem::class.java.classLoader");
        RESOURCES = new ResourceFileSystem(classLoader, false);
    }

    public static /* synthetic */ Sink appendingSink$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: appendingSink");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return fileSystem.appendingSink(path, z6);
    }

    public static /* synthetic */ void createDirectories$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectories");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        fileSystem.createDirectories(path, z6);
    }

    public static /* synthetic */ void createDirectory$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: createDirectory");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        fileSystem.createDirectory(path, z6);
    }

    public static /* synthetic */ void delete$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delete");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        fileSystem.delete(path, z6);
    }

    public static /* synthetic */ void deleteRecursively$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: deleteRecursively");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        fileSystem.deleteRecursively(path, z6);
    }

    public static /* synthetic */ kotlin.sequences.g listRecursively$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: listRecursively");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return fileSystem.listRecursively(path, z6);
    }

    public static /* synthetic */ FileHandle openReadWrite$default(FileSystem fileSystem, Path path, boolean z6, boolean z10, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: openReadWrite");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return fileSystem.openReadWrite(path, z6, z10);
    }

    public static /* synthetic */ Sink sink$default(FileSystem fileSystem, Path path, boolean z6, int i10, Object obj) throws IOException {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: sink");
        }
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return fileSystem.sink(path, z6);
    }

    /* JADX INFO: renamed from: -read, reason: not valid java name */
    public final <T> T m1793read(@NotNull Path file, @NotNull e8.l<? super BufferedSource, ? extends T> readerAction) throws Throwable {
        T tInvoke;
        kotlin.jvm.internal.t.j(file, "file");
        kotlin.jvm.internal.t.j(readerAction, "readerAction");
        BufferedSource bufferedSourceBuffer = Okio.buffer(source(file));
        Throwable th = null;
        try {
            tInvoke = readerAction.invoke(bufferedSourceBuffer);
        } catch (Throwable th2) {
            th = th2;
            tInvoke = null;
        }
        if (bufferedSourceBuffer != null) {
            try {
                bufferedSourceBuffer.close();
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
        kotlin.jvm.internal.t.g(tInvoke);
        return tInvoke;
    }

    /* JADX INFO: renamed from: -write, reason: not valid java name */
    public final <T> T m1794write(@NotNull Path file, boolean z6, @NotNull e8.l<? super BufferedSink, ? extends T> writerAction) throws Throwable {
        T tInvoke;
        kotlin.jvm.internal.t.j(file, "file");
        kotlin.jvm.internal.t.j(writerAction, "writerAction");
        BufferedSink bufferedSinkBuffer = Okio.buffer(sink(file, z6));
        Throwable th = null;
        try {
            tInvoke = writerAction.invoke(bufferedSinkBuffer);
        } catch (Throwable th2) {
            tInvoke = null;
            th = th2;
        }
        if (bufferedSinkBuffer != null) {
            try {
                bufferedSinkBuffer.close();
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
        kotlin.jvm.internal.t.g(tInvoke);
        return tInvoke;
    }

    public void copy(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        _FileSystemKt.commonCopy(this, source, target);
    }

    public final void createDirectories(@NotNull Path dir) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        createDirectories(dir, false);
    }

    public final void deleteRecursively(@NotNull Path fileOrDirectory) throws IOException {
        kotlin.jvm.internal.t.j(fileOrDirectory, "fileOrDirectory");
        deleteRecursively(fileOrDirectory, false);
    }

    public final boolean exists(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        return _FileSystemKt.commonExists(this, path);
    }

    @NotNull
    public final kotlin.sequences.g<Path> listRecursively(@NotNull Path dir) {
        kotlin.jvm.internal.t.j(dir, "dir");
        return listRecursively(dir, false);
    }

    @NotNull
    public final FileMetadata metadata(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        return _FileSystemKt.commonMetadata(this, path);
    }
}
