package okio.internal;

import com.google.firebase.sessions.settings.c;
import java.io.EOFException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.a0;
import kotlin.collections.d0;
import kotlin.collections.w;
import kotlin.jvm.internal.t;
import okio.Buffer;
import okio.ByteString;
import okio.Path;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
public final class _PathKt {

    @NotNull
    private static final ByteString ANY_SLASH;

    @NotNull
    private static final ByteString BACKSLASH;

    @NotNull
    private static final ByteString DOT;

    @NotNull
    private static final ByteString DOT_DOT;

    @NotNull
    private static final ByteString SLASH;

    @NotNull
    public static final Path commonResolve(@NotNull Path path, @NotNull String child, boolean z6) {
        t.j(path, "<this>");
        t.j(child, "child");
        return commonResolve(path, toPath(new Buffer().writeUtf8(child), false), z6);
    }

    private static /* synthetic */ void getANY_SLASH$annotations() {
    }

    private static /* synthetic */ void getBACKSLASH$annotations() {
    }

    private static /* synthetic */ void getDOT$annotations() {
    }

    private static /* synthetic */ void getDOT_DOT$annotations() {
    }

    private static /* synthetic */ void getSLASH$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString toSlash(String str) {
        if (t.e(str, c.FORWARD_SLASH_STRING)) {
            return SLASH;
        }
        if (t.e(str, "\\")) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + str);
    }

    static {
        ByteString.Companion companion = ByteString.Companion;
        SLASH = companion.encodeUtf8(c.FORWARD_SLASH_STRING);
        BACKSLASH = companion.encodeUtf8("\\");
        ANY_SLASH = companion.encodeUtf8("/\\");
        DOT = companion.encodeUtf8(".");
        DOT_DOT = companion.encodeUtf8("..");
    }

    public static final int commonCompareTo(@NotNull Path path, @NotNull Path other) {
        t.j(path, "<this>");
        t.j(other, "other");
        return path.getBytes$okio().compareTo(other.getBytes$okio());
    }

    public static final boolean commonEquals(@NotNull Path path, @Nullable Object obj) {
        t.j(path, "<this>");
        return (obj instanceof Path) && t.e(((Path) obj).getBytes$okio(), path.getBytes$okio());
    }

    public static final int commonHashCode(@NotNull Path path) {
        t.j(path, "<this>");
        return path.getBytes$okio().hashCode();
    }

    public static final boolean commonIsAbsolute(@NotNull Path path) {
        t.j(path, "<this>");
        return rootLength(path) != -1;
    }

    public static final boolean commonIsRelative(@NotNull Path path) {
        t.j(path, "<this>");
        return rootLength(path) == -1;
    }

    public static final boolean commonIsRoot(@NotNull Path path) {
        t.j(path, "<this>");
        return rootLength(path) == path.getBytes$okio().size();
    }

    @NotNull
    public static final String commonName(@NotNull Path path) {
        t.j(path, "<this>");
        return path.nameBytes().utf8();
    }

    @NotNull
    public static final ByteString commonNameBytes(@NotNull Path path) {
        t.j(path, "<this>");
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash != -1) {
            return ByteString.substring$default(path.getBytes$okio(), indexOfLastSlash + 1, 0, 2, null);
        }
        return (path.volumeLetter() == null || path.getBytes$okio().size() != 2) ? path.getBytes$okio() : ByteString.EMPTY;
    }

    @NotNull
    public static final Path commonNormalized(@NotNull Path path) {
        t.j(path, "<this>");
        return Path.Companion.get(path.toString(), true);
    }

    @Nullable
    public static final Path commonParent(@NotNull Path path) {
        t.j(path, "<this>");
        if (t.e(path.getBytes$okio(), DOT) || t.e(path.getBytes$okio(), SLASH) || t.e(path.getBytes$okio(), BACKSLASH) || lastSegmentIsDotDot(path)) {
            return null;
        }
        int indexOfLastSlash = getIndexOfLastSlash(path);
        if (indexOfLastSlash == 2 && path.volumeLetter() != null) {
            if (path.getBytes$okio().size() == 3) {
                return null;
            }
            return new Path(ByteString.substring$default(path.getBytes$okio(), 0, 3, 1, null));
        }
        if (indexOfLastSlash == 1 && path.getBytes$okio().startsWith(BACKSLASH)) {
            return null;
        }
        if (indexOfLastSlash != -1 || path.volumeLetter() == null) {
            if (indexOfLastSlash == -1) {
                return new Path(DOT);
            }
            return indexOfLastSlash == 0 ? new Path(ByteString.substring$default(path.getBytes$okio(), 0, 1, 1, null)) : new Path(ByteString.substring$default(path.getBytes$okio(), 0, indexOfLastSlash, 1, null));
        }
        if (path.getBytes$okio().size() == 2) {
            return null;
        }
        return new Path(ByteString.substring$default(path.getBytes$okio(), 0, 2, 1, null));
    }

    @NotNull
    public static final Path commonRelativeTo(@NotNull Path path, @NotNull Path other) {
        t.j(path, "<this>");
        t.j(other, "other");
        if (!t.e(path.getRoot(), other.getRoot())) {
            throw new IllegalArgumentException(("Paths of different roots cannot be relative to each other: " + path + " and " + other).toString());
        }
        List<ByteString> segmentsBytes = path.getSegmentsBytes();
        List<ByteString> segmentsBytes2 = other.getSegmentsBytes();
        int iMin = Math.min(segmentsBytes.size(), segmentsBytes2.size());
        int i10 = 0;
        while (i10 < iMin && t.e(segmentsBytes.get(i10), segmentsBytes2.get(i10))) {
            i10++;
        }
        if (i10 == iMin && path.getBytes$okio().size() == other.getBytes$okio().size()) {
            return Path.Companion.get$default(Path.Companion, ".", false, 1, (Object) null);
        }
        if (segmentsBytes2.subList(i10, segmentsBytes2.size()).indexOf(DOT_DOT) != -1) {
            throw new IllegalArgumentException(("Impossible relative path to resolve: " + path + " and " + other).toString());
        }
        Buffer buffer = new Buffer();
        ByteString slash = getSlash(other);
        if (slash == null && (slash = getSlash(path)) == null) {
            slash = toSlash(Path.DIRECTORY_SEPARATOR);
        }
        int size = segmentsBytes2.size();
        for (int i11 = i10; i11 < size; i11++) {
            buffer.write(DOT_DOT);
            buffer.write(slash);
        }
        int size2 = segmentsBytes.size();
        while (i10 < size2) {
            buffer.write(segmentsBytes.get(i10));
            buffer.write(slash);
            i10++;
        }
        return toPath(buffer, false);
    }

    @Nullable
    public static final Path commonRoot(@NotNull Path path) {
        t.j(path, "<this>");
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            return null;
        }
        return new Path(path.getBytes$okio().substring(0, iRootLength));
    }

    @NotNull
    public static final List<String> commonSegments(@NotNull Path path) {
        t.j(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = path.getBytes$okio().size();
        int i10 = iRootLength;
        while (iRootLength < size) {
            if (path.getBytes$okio().getByte(iRootLength) == ((byte) 47) || path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                arrayList.add(path.getBytes$okio().substring(i10, iRootLength));
                i10 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i10 < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(i10, path.getBytes$okio().size()));
        }
        ArrayList arrayList2 = new ArrayList(w.x(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((ByteString) it.next()).utf8());
        }
        return arrayList2;
    }

    @NotNull
    public static final List<ByteString> commonSegmentsBytes(@NotNull Path path) {
        t.j(path, "<this>");
        ArrayList arrayList = new ArrayList();
        int iRootLength = rootLength(path);
        if (iRootLength == -1) {
            iRootLength = 0;
        } else if (iRootLength < path.getBytes$okio().size() && path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
            iRootLength++;
        }
        int size = path.getBytes$okio().size();
        int i10 = iRootLength;
        while (iRootLength < size) {
            if (path.getBytes$okio().getByte(iRootLength) == ((byte) 47) || path.getBytes$okio().getByte(iRootLength) == ((byte) 92)) {
                arrayList.add(path.getBytes$okio().substring(i10, iRootLength));
                i10 = iRootLength + 1;
            }
            iRootLength++;
        }
        if (i10 < path.getBytes$okio().size()) {
            arrayList.add(path.getBytes$okio().substring(i10, path.getBytes$okio().size()));
        }
        return arrayList;
    }

    @NotNull
    public static final Path commonToPath(@NotNull String str, boolean z6) {
        t.j(str, "<this>");
        return toPath(new Buffer().writeUtf8(str), z6);
    }

    @NotNull
    public static final String commonToString(@NotNull Path path) {
        t.j(path, "<this>");
        return path.getBytes$okio().utf8();
    }

    @Nullable
    public static final Character commonVolumeLetter(@NotNull Path path) {
        t.j(path, "<this>");
        if (ByteString.indexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null) != -1 || path.getBytes$okio().size() < 2 || path.getBytes$okio().getByte(1) != ((byte) 58)) {
            return null;
        }
        char c7 = (char) path.getBytes$okio().getByte(0);
        if (('a' > c7 || c7 >= '{') && ('A' > c7 || c7 >= '[')) {
            return null;
        }
        return Character.valueOf(c7);
    }

    private static final boolean startsWithVolumeLetterAndColon(Buffer buffer, ByteString byteString) {
        if (!t.e(byteString, BACKSLASH) || buffer.size() < 2 || buffer.getByte(1L) != ((byte) 58)) {
            return false;
        }
        char c7 = (char) buffer.getByte(0L);
        return ('a' <= c7 && c7 < '{') || ('A' <= c7 && c7 < '[');
    }

    @NotNull
    public static final Path toPath(@NotNull Buffer buffer, boolean z6) throws EOFException {
        ByteString byteString;
        ByteString byteString2;
        t.j(buffer, "<this>");
        Buffer buffer2 = new Buffer();
        ByteString slash = null;
        int i10 = 0;
        while (true) {
            if (!buffer.rangeEquals(0L, SLASH)) {
                byteString = BACKSLASH;
                if (!buffer.rangeEquals(0L, byteString)) {
                    break;
                }
            }
            byte b7 = buffer.readByte();
            if (slash == null) {
                slash = toSlash(b7);
            }
            i10++;
        }
        boolean z10 = i10 >= 2 && t.e(slash, byteString);
        if (z10) {
            t.g(slash);
            buffer2.write(slash);
            buffer2.write(slash);
        } else if (i10 > 0) {
            t.g(slash);
            buffer2.write(slash);
        } else {
            long jIndexOfElement = buffer.indexOfElement(ANY_SLASH);
            if (slash == null) {
                slash = jIndexOfElement == -1 ? toSlash(Path.DIRECTORY_SEPARATOR) : toSlash(buffer.getByte(jIndexOfElement));
            }
            if (startsWithVolumeLetterAndColon(buffer, slash)) {
                if (jIndexOfElement == 2) {
                    buffer2.write(buffer, 3L);
                } else {
                    buffer2.write(buffer, 2L);
                }
            }
        }
        boolean z11 = buffer2.size() > 0;
        ArrayList arrayList = new ArrayList();
        while (!buffer.exhausted()) {
            long jIndexOfElement2 = buffer.indexOfElement(ANY_SLASH);
            if (jIndexOfElement2 == -1) {
                byteString2 = buffer.readByteString();
            } else {
                byteString2 = buffer.readByteString(jIndexOfElement2);
                buffer.readByte();
            }
            ByteString byteString3 = DOT_DOT;
            if (t.e(byteString2, byteString3)) {
                if (!z11 || !arrayList.isEmpty()) {
                    if (!z6 || (!z11 && (arrayList.isEmpty() || t.e(d0.v0(arrayList), byteString3)))) {
                        arrayList.add(byteString2);
                    } else if (!z10 || arrayList.size() != 1) {
                        a0.N(arrayList);
                    }
                }
            } else if (!t.e(byteString2, DOT) && !t.e(byteString2, ByteString.EMPTY)) {
                arrayList.add(byteString2);
            }
        }
        int size = arrayList.size();
        for (int i11 = 0; i11 < size; i11++) {
            if (i11 > 0) {
                buffer2.write(slash);
            }
            buffer2.write((ByteString) arrayList.get(i11));
        }
        if (buffer2.size() == 0) {
            buffer2.write(DOT);
        }
        return new Path(buffer2.readByteString());
    }

    @NotNull
    public static final Path commonResolve(@NotNull Path path, @NotNull ByteString child, boolean z6) {
        t.j(path, "<this>");
        t.j(child, "child");
        return commonResolve(path, toPath(new Buffer().write(child), false), z6);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int getIndexOfLastSlash(Path path) {
        int iLastIndexOf$default = ByteString.lastIndexOf$default(path.getBytes$okio(), SLASH, 0, 2, (Object) null);
        if (iLastIndexOf$default != -1) {
            return iLastIndexOf$default;
        }
        return ByteString.lastIndexOf$default(path.getBytes$okio(), BACKSLASH, 0, 2, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ByteString getSlash(Path path) {
        ByteString bytes$okio = path.getBytes$okio();
        ByteString byteString = SLASH;
        if (ByteString.indexOf$default(bytes$okio, byteString, 0, 2, (Object) null) == -1) {
            ByteString bytes$okio2 = path.getBytes$okio();
            ByteString byteString2 = BACKSLASH;
            if (ByteString.indexOf$default(bytes$okio2, byteString2, 0, 2, (Object) null) == -1) {
                return null;
            }
            return byteString2;
        }
        return byteString;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean lastSegmentIsDotDot(Path path) {
        if (!path.getBytes$okio().endsWith(DOT_DOT) || (path.getBytes$okio().size() != 2 && !path.getBytes$okio().rangeEquals(path.getBytes$okio().size() - 3, SLASH, 0, 1) && !path.getBytes$okio().rangeEquals(path.getBytes$okio().size() - 3, BACKSLASH, 0, 1))) {
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int rootLength(Path path) {
        if (path.getBytes$okio().size() == 0) {
            return -1;
        }
        if (path.getBytes$okio().getByte(0) == ((byte) 47)) {
            return 1;
        }
        byte b7 = (byte) 92;
        if (path.getBytes$okio().getByte(0) == b7) {
            if (path.getBytes$okio().size() <= 2 || path.getBytes$okio().getByte(1) != b7) {
                return 1;
            }
            int iIndexOf = path.getBytes$okio().indexOf(BACKSLASH, 2);
            if (iIndexOf == -1) {
                return path.getBytes$okio().size();
            }
            return iIndexOf;
        }
        if (path.getBytes$okio().size() > 2 && path.getBytes$okio().getByte(1) == ((byte) 58) && path.getBytes$okio().getByte(2) == b7) {
            char c7 = (char) path.getBytes$okio().getByte(0);
            if ('a' > c7 || c7 >= '{') {
                if ('A' <= c7 && c7 < '[') {
                    return 3;
                }
            } else {
                return 3;
            }
        }
        return -1;
    }

    private static final ByteString toSlash(byte b7) {
        if (b7 == 47) {
            return SLASH;
        }
        if (b7 == 92) {
            return BACKSLASH;
        }
        throw new IllegalArgumentException("not a directory separator: " + ((int) b7));
    }

    @NotNull
    public static final Path commonResolve(@NotNull Path path, @NotNull Buffer child, boolean z6) {
        t.j(path, "<this>");
        t.j(child, "child");
        return commonResolve(path, toPath(child, false), z6);
    }

    @NotNull
    public static final Path commonResolve(@NotNull Path path, @NotNull Path child, boolean z6) {
        t.j(path, "<this>");
        t.j(child, "child");
        if (child.isAbsolute() || child.volumeLetter() != null) {
            return child;
        }
        ByteString slash = getSlash(path);
        if (slash == null && (slash = getSlash(child)) == null) {
            slash = toSlash(Path.DIRECTORY_SEPARATOR);
        }
        Buffer buffer = new Buffer();
        buffer.write(path.getBytes$okio());
        if (buffer.size() > 0) {
            buffer.write(slash);
        }
        buffer.write(child.getBytes$okio());
        return toPath(buffer, z6);
    }
}
