package okio;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.FileSystemException;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.nio.file.NoSuchFileException;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.BasicFileAttributes;
import java.nio.file.attribute.FileAttribute;
import java.nio.file.attribute.FileTime;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@IgnoreJRERequirement
public final class NioSystemFileSystem extends JvmSystemFileSystem {
    @Override // okio.JvmSystemFileSystem
    @NotNull
    public String toString() {
        return "NioSystemFileSystem";
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        try {
            Files.move(source.toNioPath(), target.toNioPath(), l.a(StandardCopyOption.ATOMIC_MOVE), l.a(StandardCopyOption.REPLACE_EXISTING));
        } catch (UnsupportedOperationException unused) {
            throw new IOException("atomic move not supported");
        } catch (NoSuchFileException e) {
            throw new FileNotFoundException(e.getMessage());
        }
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        Files.createSymbolicLink(source.toNioPath(), target.toNioPath(), new FileAttribute[0]);
    }

    @Override // okio.JvmSystemFileSystem, okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) {
        kotlin.jvm.internal.t.j(path, "path");
        java.nio.file.Path nioPath = path.toNioPath();
        try {
            BasicFileAttributes attributes = Files.readAttributes(nioPath, (Class<BasicFileAttributes>) q.a(), LinkOption.NOFOLLOW_LINKS);
            java.nio.file.Path symbolicLink = attributes.isSymbolicLink() ? Files.readSymbolicLink(nioPath) : f.a(null);
            boolean zIsRegularFile = attributes.isRegularFile();
            boolean zIsDirectory = attributes.isDirectory();
            Path path2 = symbolicLink != null ? Path.Companion.get$default(Path.Companion, symbolicLink, false, 1, (Object) null) : null;
            Long lValueOf = Long.valueOf(attributes.size());
            FileTime fileTimeCreationTime = attributes.creationTime();
            Long lZeroToNull = fileTimeCreationTime != null ? zeroToNull(fileTimeCreationTime) : null;
            FileTime fileTimeLastModifiedTime = attributes.lastModifiedTime();
            Long lZeroToNull2 = fileTimeLastModifiedTime != null ? zeroToNull(fileTimeLastModifiedTime) : null;
            FileTime fileTimeLastAccessTime = attributes.lastAccessTime();
            return new FileMetadata(zIsRegularFile, zIsDirectory, path2, lValueOf, lZeroToNull, lZeroToNull2, fileTimeLastAccessTime != null ? zeroToNull(fileTimeLastAccessTime) : null, null, 128, null);
        } catch (NoSuchFileException | FileSystemException unused) {
            return null;
        }
    }

    private final Long zeroToNull(FileTime fileTime) {
        Long lValueOf = Long.valueOf(fileTime.toMillis());
        if (lValueOf.longValue() == 0) {
            return null;
        }
        return lValueOf;
    }
}
