package okio.internal;

import com.google.firebase.sessions.settings.c;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URI;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.d0;
import kotlin.collections.w;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlin.text.u;
import kotlinx.serialization.json.internal.b;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Path;
import okio.Sink;
import okio.Source;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.a0;
import w7.m;
import w7.o;

/* JADX INFO: loaded from: classes4.dex */
public final class ResourceFileSystem extends FileSystem {

    @NotNull
    private static final Companion Companion = new Companion(null);

    @Deprecated
    @NotNull
    private static final Path ROOT = Path.Companion.get$default(Path.Companion, c.FORWARD_SLASH_STRING, false, 1, (Object) null);

    @NotNull
    private final m roots$delegate;

    /* JADX INFO: Access modifiers changed from: private */
    static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }

        @NotNull
        public final Path removeBase(@NotNull Path path, @NotNull Path base) {
            t.j(path, "<this>");
            t.j(base, "base");
            return getROOT().resolve(kotlin.text.t.F(u.t0(path.toString(), base.toString()), b.STRING_ESC, '/', false, 4, null));
        }

        @NotNull
        public final List<w7.u<FileSystem, Path>> toClasspathRoots(@NotNull ClassLoader classLoader) throws IOException {
            t.j(classLoader, "<this>");
            Enumeration<URL> resources = classLoader.getResources("");
            t.i(resources, "getResources(\"\")");
            ArrayList<URL> list = Collections.list(resources);
            t.i(list, "list(this)");
            ArrayList arrayList = new ArrayList();
            for (URL it : list) {
                Companion companion = ResourceFileSystem.Companion;
                t.i(it, "it");
                w7.u<FileSystem, Path> fileRoot = companion.toFileRoot(it);
                if (fileRoot != null) {
                    arrayList.add(fileRoot);
                }
            }
            Enumeration<URL> resources2 = classLoader.getResources("META-INF/MANIFEST.MF");
            t.i(resources2, "getResources(\"META-INF/MANIFEST.MF\")");
            ArrayList<URL> list2 = Collections.list(resources2);
            t.i(list2, "list(this)");
            ArrayList arrayList2 = new ArrayList();
            for (URL it2 : list2) {
                Companion companion2 = ResourceFileSystem.Companion;
                t.i(it2, "it");
                w7.u<FileSystem, Path> jarRoot = companion2.toJarRoot(it2);
                if (jarRoot != null) {
                    arrayList2.add(jarRoot);
                }
            }
            return d0.D0(arrayList, arrayList2);
        }

        @Nullable
        public final w7.u<FileSystem, Path> toFileRoot(@NotNull URL url) {
            t.j(url, "<this>");
            if (t.e(url.getProtocol(), "file")) {
                return a0.a(FileSystem.SYSTEM, Path.Companion.get$default(Path.Companion, new File(url.toURI()), false, 1, (Object) null));
            }
            return null;
        }

        @Nullable
        public final w7.u<FileSystem, Path> toJarRoot(@NotNull URL url) {
            int iI0;
            t.j(url, "<this>");
            String string = url.toString();
            t.i(string, "toString()");
            if (!kotlin.text.t.K(string, "jar:file:", false, 2, null) || (iI0 = u.i0(string, "!", 0, false, 6, null)) == -1) {
                return null;
            }
            Path.Companion companion = Path.Companion;
            String strSubstring = string.substring(4, iI0);
            t.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            return a0.a(ZipKt.openZip(Path.Companion.get$default(companion, new File(URI.create(strSubstring)), false, 1, (Object) null), FileSystem.SYSTEM, ResourceFileSystem$Companion$toJarRoot$zip$1.INSTANCE), getROOT());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean keepPath(Path path) {
            return !kotlin.text.t.u(path.name(), ".class", true);
        }

        @NotNull
        public final Path getROOT() {
            return ResourceFileSystem.ROOT;
        }
    }

    public ResourceFileSystem(@NotNull ClassLoader classLoader, boolean z6) {
        t.j(classLoader, "classLoader");
        this.roots$delegate = o.a(new ResourceFileSystem$roots$2(classLoader));
        if (z6) {
            getRoots().size();
        }
    }

    private final Path canonicalizeInternal(Path path) {
        return ROOT.resolve(path, true);
    }

    private final List<w7.u<FileSystem, Path>> getRoots() {
        return (List) this.roots$delegate.getValue();
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink appendingSink(@NotNull Path file, boolean z6) throws IOException {
        t.j(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void atomicMove(@NotNull Path source, @NotNull Path target) throws IOException {
        t.j(source, "source");
        t.j(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Path canonicalize(@NotNull Path path) {
        t.j(path, "path");
        return canonicalizeInternal(path);
    }

    @Override // okio.FileSystem
    public void createDirectory(@NotNull Path dir, boolean z6) throws IOException {
        t.j(dir, "dir");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void createSymlink(@NotNull Path source, @NotNull Path target) throws IOException {
        t.j(source, "source");
        t.j(target, "target");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    public void delete(@NotNull Path path, boolean z6) throws IOException {
        t.j(path, "path");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public List<Path> list(@NotNull Path dir) throws FileNotFoundException {
        t.j(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        boolean z6 = false;
        for (w7.u<FileSystem, Path> uVar : getRoots()) {
            FileSystem fileSystemA = uVar.a();
            Path pathB = uVar.b();
            try {
                List<Path> list = fileSystemA.list(pathB.resolve(relativePath));
                ArrayList arrayList = new ArrayList();
                for (Object obj : list) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList.add(obj);
                    }
                }
                ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    arrayList2.add(Companion.removeBase((Path) it.next(), pathB));
                }
                kotlin.collections.a0.D(linkedHashSet, arrayList2);
                z6 = true;
            } catch (IOException unused) {
            }
        }
        if (z6) {
            return d0.U0(linkedHashSet);
        }
        throw new FileNotFoundException("file not found: " + dir);
    }

    @Override // okio.FileSystem
    @Nullable
    public List<Path> listOrNull(@NotNull Path dir) {
        t.j(dir, "dir");
        String relativePath = toRelativePath(dir);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<w7.u<FileSystem, Path>> it = getRoots().iterator();
        boolean z6 = false;
        while (true) {
            ArrayList arrayList = null;
            if (!it.hasNext()) {
                break;
            }
            w7.u<FileSystem, Path> next = it.next();
            FileSystem fileSystemA = next.a();
            Path pathB = next.b();
            List<Path> listListOrNull = fileSystemA.listOrNull(pathB.resolve(relativePath));
            if (listListOrNull != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : listListOrNull) {
                    if (Companion.keepPath((Path) obj)) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(w.x(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(Companion.removeBase((Path) it2.next(), pathB));
                }
                arrayList = arrayList3;
            }
            if (arrayList != null) {
                kotlin.collections.a0.D(linkedHashSet, arrayList);
                z6 = true;
            }
        }
        if (z6) {
            return d0.U0(linkedHashSet);
        }
        return null;
    }

    @Override // okio.FileSystem
    @Nullable
    public FileMetadata metadataOrNull(@NotNull Path path) throws IOException {
        t.j(path, "path");
        if (!Companion.keepPath(path)) {
            return null;
        }
        String relativePath = toRelativePath(path);
        for (w7.u<FileSystem, Path> uVar : getRoots()) {
            FileMetadata fileMetadataMetadataOrNull = uVar.a().metadataOrNull(uVar.b().resolve(relativePath));
            if (fileMetadataMetadataOrNull != null) {
                return fileMetadataMetadataOrNull;
            }
        }
        return null;
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadOnly(@NotNull Path file) throws FileNotFoundException {
        t.j(file, "file");
        if (!Companion.keepPath(file)) {
            throw new FileNotFoundException("file not found: " + file);
        }
        String relativePath = toRelativePath(file);
        for (w7.u<FileSystem, Path> uVar : getRoots()) {
            try {
                return uVar.a().openReadOnly(uVar.b().resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    @Override // okio.FileSystem
    @NotNull
    public FileHandle openReadWrite(@NotNull Path file, boolean z6, boolean z10) throws IOException {
        t.j(file, "file");
        throw new IOException("resources are not writable");
    }

    @Override // okio.FileSystem
    @NotNull
    public Sink sink(@NotNull Path file, boolean z6) throws IOException {
        t.j(file, "file");
        throw new IOException(this + " is read-only");
    }

    @Override // okio.FileSystem
    @NotNull
    public Source source(@NotNull Path file) throws FileNotFoundException {
        t.j(file, "file");
        if (!Companion.keepPath(file)) {
            throw new FileNotFoundException("file not found: " + file);
        }
        String relativePath = toRelativePath(file);
        for (w7.u<FileSystem, Path> uVar : getRoots()) {
            try {
                return uVar.a().source(uVar.b().resolve(relativePath));
            } catch (FileNotFoundException unused) {
            }
        }
        throw new FileNotFoundException("file not found: " + file);
    }

    private final String toRelativePath(Path path) {
        return canonicalizeInternal(path).relativeTo(ROOT).toString();
    }
}
