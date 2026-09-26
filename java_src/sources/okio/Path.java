package okio;

import java.io.File;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.w;
import okio.internal._PathKt;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
public final class Path implements Comparable<Path> {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    public static final String DIRECTORY_SEPARATOR;

    @NotNull
    private final ByteString bytes;

    public static final class Companion {
        public /* synthetic */ Companion(kotlin.jvm.internal.k kVar) {
            this();
        }

        public static /* synthetic */ Path get$default(Companion companion, String str, boolean z6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z6 = false;
            }
            return companion.get(str, z6);
        }

        @NotNull
        public final Path get(@NotNull File file) {
            kotlin.jvm.internal.t.j(file, "<this>");
            return get$default(this, file, false, 1, (Object) null);
        }

        private Companion() {
        }

        public static /* synthetic */ Path get$default(Companion companion, File file, boolean z6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z6 = false;
            }
            return companion.get(file, z6);
        }

        @NotNull
        public final Path get(@NotNull String str) {
            kotlin.jvm.internal.t.j(str, "<this>");
            return get$default(this, str, false, 1, (Object) null);
        }

        public static /* synthetic */ Path get$default(Companion companion, java.nio.file.Path path, boolean z6, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                z6 = false;
            }
            return companion.get(path, z6);
        }

        @IgnoreJRERequirement
        @NotNull
        public final Path get(@NotNull java.nio.file.Path path) {
            kotlin.jvm.internal.t.j(path, "<this>");
            return get$default(this, path, false, 1, (Object) null);
        }

        @NotNull
        public final Path get(@NotNull String str, boolean z6) {
            kotlin.jvm.internal.t.j(str, "<this>");
            return _PathKt.commonToPath(str, z6);
        }

        @NotNull
        public final Path get(@NotNull File file, boolean z6) {
            kotlin.jvm.internal.t.j(file, "<this>");
            String string = file.toString();
            kotlin.jvm.internal.t.i(string, "toString()");
            return get(string, z6);
        }

        @IgnoreJRERequirement
        @NotNull
        public final Path get(@NotNull java.nio.file.Path path, boolean z6) {
            kotlin.jvm.internal.t.j(path, "<this>");
            return get(path.toString(), z6);
        }
    }

    @NotNull
    public static final Path get(@NotNull File file) {
        return Companion.get(file);
    }

    public static /* synthetic */ Path resolve$default(Path path, String str, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return path.resolve(str, z6);
    }

    @NotNull
    public final ByteString getBytes$okio() {
        return this.bytes;
    }

    @NotNull
    public final Path resolve(@NotNull Path child) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, child, false);
    }

    static {
        String separator = File.separator;
        kotlin.jvm.internal.t.i(separator, "separator");
        DIRECTORY_SEPARATOR = separator;
    }

    public Path(@NotNull ByteString bytes) {
        kotlin.jvm.internal.t.j(bytes, "bytes");
        this.bytes = bytes;
    }

    @NotNull
    public static final Path get(@NotNull File file, boolean z6) {
        return Companion.get(file, z6);
    }

    public static /* synthetic */ Path resolve$default(Path path, ByteString byteString, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return path.resolve(byteString, z6);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull Path other) {
        kotlin.jvm.internal.t.j(other, "other");
        return getBytes$okio().compareTo(other.getBytes$okio());
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof Path) && kotlin.jvm.internal.t.e(((Path) obj).getBytes$okio(), getBytes$okio());
    }

    @NotNull
    public final List<String> getSegments() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        int i10 = iRootLength;
        while (iRootLength < size) {
            if (getBytes$okio().getByte(iRootLength) == ((byte) 47) || getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                arrayList.add(getBytes$okio().substring(i10, iRootLength));
                i10 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i10 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i10, getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    @NotNull
    public final List<ByteString> getSegmentsBytes() {
        ArrayList arrayList = new ArrayList();
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < getBytes$okio().size() && getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = getBytes$okio().size();
        int i10 = iRootLength;
        while (iRootLength < size) {
            if (getBytes$okio().getByte(iRootLength) == ((byte) 47) || getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                arrayList.add(getBytes$okio().substring(i10, iRootLength));
                i10 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i10 < getBytes$okio().size()) {
            arrayList.add(getBytes$okio().substring(i10, getBytes$okio().size()));
        }
        return arrayList;
    }

    @NotNull
    public final Path normalized() {
        return Companion.get(toString(), true);
    }

    @NotNull
    public final Path relativeTo(@NotNull Path other) {
        kotlin.jvm.internal.t.j(other, "other");
        if (!kotlin.jvm.internal.t.e(getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + this + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i10 = 0;
        while (i10 < iMin && kotlin.jvm.internal.t.e(segmentsBytes.get(i10), segmentsBytes2.get(i10))) {
            i10++;
        }
        if (i10 == iMin && getBytes$okio().size() == other.getBytes$okio().size()) {
            return Companion.get$default(Companion, ".", false, 1, (Object) null);
        }
        if (segmentsBytes2.subList(i10, segmentsBytes2.size()).indexOf(_PathKt.DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + this + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = _PathKt.getSlash(other);
        if (slash == null && (slash = _PathKt.getSlash(this)) == null) {
            slash = _PathKt.toSlash(DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i11 = i10; i11 < size; i11++) {
            buffer.write(_PathKt.DOT_DOT);
            buffer.write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i10 < size2) {
            buffer.write(segmentsBytes.get(i10));
            buffer.write(slash);
            i10++;
        }
        return _PathKt.toPath(buffer, false);
    }

    @NotNull
    public final Path resolve(@NotNull Path child, boolean z6) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, child, z6);
    }

    @NotNull
    public final File toFile() {
        return new File(toString());
    }

    @NotNull
    public static final Path get(@NotNull String str) {
        return Companion.get(str);
    }

    public static /* synthetic */ Path resolve$default(Path path, Path path2, boolean z6, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z6 = false;
        }
        return path.resolve(path2, z6);
    }

    @Nullable
    public final Path getRoot() {
        int iRootLength = _PathKt.rootLength(this);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(getBytes$okio().substring(0, iRootLength));
    }

    public int hashCode() {
        return getBytes$okio().hashCode();
    }

    public final boolean isAbsolute() {
        if (_PathKt.rootLength(this) != -1) {
            return true;
        }
        return false;
    }

    public final boolean isRelative() {
        if (_PathKt.rootLength(this) == -1) {
            return true;
        }
        return false;
    }

    public final boolean isRoot() {
        if (_PathKt.rootLength(this) == getBytes$okio().size()) {
            return true;
        }
        return false;
    }

    @NotNull
    public final String name() {
        return nameBytes().utf8();
    }

    @NotNull
    public final ByteString nameBytes() {
        int indexOfLastSlash = _PathKt.getIndexOfLastSlash(this);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(getBytes$okio(), indexOfLastSlash + 1, 0, 2, null);
        }
        if (volumeLetter() != null && getBytes$okio().size() == 2) {
            return ByteString.EMPTY;
        }
        return getBytes$okio();
    }

    @Nullable
    public final Path parent() {
        Path path;
        if (!kotlin.jvm.internal.t.e(getBytes$okio(), _PathKt.DOT) && !kotlin.jvm.internal.t.e(getBytes$okio(), _PathKt.SLASH) && !kotlin.jvm.internal.t.e(getBytes$okio(), _PathKt.BACKSLASH) && !_PathKt.lastSegmentIsDotDot(this)) {
            int indexOfLastSlash = _PathKt.getIndexOfLastSlash(this);
            if (indexOfLastSlash == 2 && volumeLetter() != null) {
                if (getBytes$okio().size() == 3) {
                    return null;
                }
                path = new Path(ByteString.substring$default(getBytes$okio(), 0, 3, 1, null));
            } else {
                if (indexOfLastSlash == 1 && getBytes$okio().startsWith(_PathKt.BACKSLASH)) {
                    return null;
                }
                if (indexOfLastSlash == -1 && volumeLetter() != null) {
                    if (getBytes$okio().size() == 2) {
                        return null;
                    }
                    path = new Path(ByteString.substring$default(getBytes$okio(), 0, 2, 1, null));
                } else {
                    if (indexOfLastSlash == -1) {
                        return new Path(_PathKt.DOT);
                    }
                    if (indexOfLastSlash == 0) {
                        path = new Path(ByteString.substring$default(getBytes$okio(), 0, 1, 1, null));
                    } else {
                        return new Path(ByteString.substring$default(getBytes$okio(), 0, indexOfLastSlash, 1, null));
                    }
                }
            }
            return path;
        }
        return null;
    }

    @NotNull
    public final Path resolve(@NotNull String child) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), false);
    }

    @IgnoreJRERequirement
    @NotNull
    public final java.nio.file.Path toNioPath() {
        java.nio.file.Path path = Paths.get(toString(), new String[0]);
        kotlin.jvm.internal.t.i(path, "get(toString())");
        return path;
    }

    @NotNull
    public String toString() {
        return getBytes$okio().utf8();
    }

    @Nullable
    public final Character volumeLetter() {
        if (ByteString.indexOf$default(getBytes$okio(), _PathKt.SLASH, 0, 2, (Object) null) != -1 || getBytes$okio().size() < 2 || getBytes$okio().getByte(1) != ((byte) 58)) {
            return null;
        }
        char c7 = (char) getBytes$okio().getByte(0);
        if (('a' > c7 || c7 >= '{') && ('A' > c7 || c7 >= '[')) {
            return null;
        }
        return Character.valueOf(c7);
    }

    @NotNull
    public static final Path get(@NotNull String str, boolean z6) {
        return Companion.get(str, z6);
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Path get(@NotNull java.nio.file.Path path) {
        return Companion.get(path);
    }

    @NotNull
    public final Path resolve(@NotNull ByteString child) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), false);
    }

    @IgnoreJRERequirement
    @NotNull
    public static final Path get(@NotNull java.nio.file.Path path, boolean z6) {
        return Companion.get(path, z6);
    }

    @NotNull
    public final Path resolve(@NotNull String child, boolean z6) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().writeUtf8(child), false), z6);
    }

    @NotNull
    public final Path resolve(@NotNull ByteString child, boolean z6) {
        kotlin.jvm.internal.t.j(child, "child");
        return _PathKt.commonResolve(this, _PathKt.toPath(new Buffer().write(child), false), z6);
    }
}
