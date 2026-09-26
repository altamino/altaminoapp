package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.narvii.account.ThirdPartyAccountBaseFragment;
import com.narvii.modulization.ConfigApiRequestHelper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.z;
import kotlin.jvm.internal.q0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ForwardingFileSystem extends FileSystem {

    @NotNull
    private final FileSystem delegate;

    /* JADX INFO: renamed from: okio.ForwardingFileSystem$listRecursively$1, reason: invalid class name */
    static final class AnonymousClass1 extends kotlin.jvm.internal.v implements e8.l<Path, Path> {
        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        public final Path invoke(@NotNull Path it) {
            kotlin.jvm.internal.t.j(it, "it");
            return ForwardingFileSystem.this.onPathResult(it, "listRecursively");
        }
    }

    @NotNull
    public final FileSystem delegate() {
        return this.delegate;
    }

    @NotNull
    public Path onPathParameter(@NotNull Path path, @NotNull String functionName, @NotNull String parameterName) {
        kotlin.jvm.internal.t.j(path, "path");
        kotlin.jvm.internal.t.j(functionName, "functionName");
        kotlin.jvm.internal.t.j(parameterName, "parameterName");
        return path;
    }

    @NotNull
    public Path onPathResult(@NotNull Path path, @NotNull String functionName) {
        kotlin.jvm.internal.t.j(path, "path");
        kotlin.jvm.internal.t.j(functionName, "functionName");
        return path;
    }

    public ForwardingFileSystem(@NotNull FileSystem delegate) {
        kotlin.jvm.internal.t.j(delegate, "delegate");
        this.delegate = delegate;
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return this.delegate.appendingSink(onPathParameter(file, "appendingSink", "file"), z6);
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        this.delegate.atomicMove(onPathParameter(source, "atomicMove", "source"), onPathParameter(target, "atomicMove", TypedValues.AttributesType.S_TARGET));
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        return onPathResult(this.delegate.canonicalize(onPathParameter(path, "canonicalize", ConfigApiRequestHelper.PATH_KEY)), "canonicalize");
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        this.delegate.createDirectory(onPathParameter(dir, "createDirectory", "dir"), z6);
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        kotlin.jvm.internal.t.j(source, "source");
        kotlin.jvm.internal.t.j(target, "target");
        this.delegate.createSymlink(onPathParameter(source, "createSymlink", "source"), onPathParameter(target, "createSymlink", TypedValues.AttributesType.S_TARGET));
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        this.delegate.delete(onPathParameter(path, "delete", ConfigApiRequestHelper.PATH_KEY), z6);
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws IOException {
        kotlin.jvm.internal.t.j(dir, "dir");
        List<Path> list = this.delegate.list(onPathParameter(dir, "list", "dir"));
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "list"));
        }
        z.B(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        kotlin.jvm.internal.t.j(dir, "dir");
        List<Path> listListOrNull = this.delegate.listOrNull(onPathParameter(dir, "listOrNull", "dir"));
        if (listListOrNull == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = listListOrNull.iterator();
        while (it.hasNext()) {
            arrayList.add(onPathResult((Path) it.next(), "listOrNull"));
        }
        z.B(arrayList);
        return arrayList;
    }

    @Override // okio.FileSystem
    @NotNull
    public kotlin.sequences.g<Path> listRecursively(@NotNull Path dir, boolean z6) {
        kotlin.jvm.internal.t.j(dir, "dir");
        return kotlin.sequences.o.u(this.delegate.listRecursively(onPathParameter(dir, "listRecursively", "dir"), z6), new AnonymousClass1());
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) throws IOException {
        kotlin.jvm.internal.t.j(path, "path");
        FileMetadata fileMetadataMetadataOrNull = this.delegate.metadataOrNull(onPathParameter(path, "metadataOrNull", ConfigApiRequestHelper.PATH_KEY));
        if (fileMetadataMetadataOrNull == null) {
            return null;
        }
        return fileMetadataMetadataOrNull.getSymlinkTarget() == null ? fileMetadataMetadataOrNull : fileMetadataMetadataOrNull.copy((ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 1) != 0 ? fileMetadataMetadataOrNull.isRegularFile : false, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 2) != 0 ? fileMetadataMetadataOrNull.isDirectory : false, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 4) != 0 ? fileMetadataMetadataOrNull.symlinkTarget : onPathResult(fileMetadataMetadataOrNull.getSymlinkTarget(), "metadataOrNull"), (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 8) != 0 ? fileMetadataMetadataOrNull.size : null, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 16) != 0 ? fileMetadataMetadataOrNull.createdAtMillis : null, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 32) != 0 ? fileMetadataMetadataOrNull.lastModifiedAtMillis : null, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 64) != 0 ? fileMetadataMetadataOrNull.lastAccessedAtMillis : null, (ThirdPartyAccountBaseFragment.API_ERR_EMAIL_NO_PASSWORD & 128) != 0 ? fileMetadataMetadataOrNull.extras : null);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return this.delegate.openReadOnly(onPathParameter(file, "openReadOnly", "file"));
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z6, boolean z10) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return this.delegate.openReadWrite(onPathParameter(file, "openReadWrite", "file"), z6, z10);
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z6) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return this.delegate.sink(onPathParameter(file, "sink", "file"), z6);
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws IOException {
        kotlin.jvm.internal.t.j(file, "file");
        return this.delegate.source(onPathParameter(file, "source", "file"));
    }

    @NotNull
    public String toString() {
        return q0.b(getClass()).getSimpleName() + '(' + this.delegate + ')';
    }
}
