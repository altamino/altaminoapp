package okio.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.firebase.sessions.settings.c;
import e8.l;
import e8.p;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Map;
import kotlin.collections.d0;
import kotlin.collections.s0;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.o0;
import kotlin.jvm.internal.p0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlin.text.b;
import kotlin.text.u;
import okhttp3.internal.ws.WebSocketProtocol;
import okio.BufferedSource;
import okio.FileHandle;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.ZipFileSystem;
import org.jetbrains.annotations.NotNull;
import w7.a0;
import w7.i0;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
public final class ZipKt {
    private static final int BIT_FLAG_ENCRYPTED = 1;
    private static final int BIT_FLAG_UNSUPPORTED_MASK = 1;
    private static final int CENTRAL_FILE_HEADER_SIGNATURE = 33639248;
    public static final int COMPRESSION_METHOD_DEFLATED = 8;
    public static final int COMPRESSION_METHOD_STORED = 0;
    private static final int END_OF_CENTRAL_DIRECTORY_SIGNATURE = 101010256;
    private static final int HEADER_ID_EXTENDED_TIMESTAMP = 21589;
    private static final int HEADER_ID_ZIP64_EXTENDED_INFO = 1;
    private static final int LOCAL_FILE_HEADER_SIGNATURE = 67324752;
    private static final long MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE = 4294967295L;
    private static final int ZIP64_EOCD_RECORD_SIGNATURE = 101075792;
    private static final int ZIP64_LOCATOR_SIGNATURE = 117853008;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: okio.internal.ZipKt$openZip$1, reason: invalid class name */
    public static final class AnonymousClass1 extends v implements l<ZipEntry, Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        AnonymousClass1() {
            super(1);
        }

        @Override // e8.l
        @NotNull
        public final Boolean invoke(@NotNull ZipEntry it) {
            t.j(it, "it");
            return Boolean.TRUE;
        }
    }

    /* JADX INFO: renamed from: okio.internal.ZipKt$readEntry$1, reason: invalid class name and case insensitive filesystem */
    static final class C05881 extends v implements p<Integer, Long, l0> {
        final /* synthetic */ o0 $compressedSize;
        final /* synthetic */ k0 $hasZip64Extra;
        final /* synthetic */ o0 $offset;
        final /* synthetic */ long $requiredZip64ExtraSize;
        final /* synthetic */ o0 $size;
        final /* synthetic */ BufferedSource $this_readEntry;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05881(k0 k0Var, long j6, o0 o0Var, BufferedSource bufferedSource, o0 o0Var2, o0 o0Var3) {
            super(2);
            this.$hasZip64Extra = k0Var;
            this.$requiredZip64ExtraSize = j6;
            this.$size = o0Var;
            this.$this_readEntry = bufferedSource;
            this.$compressedSize = o0Var2;
            this.$offset = o0Var3;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Integer num, Long l) throws IOException {
            invoke(num.intValue(), l.longValue());
            return l0.INSTANCE;
        }

        public final void invoke(int i10, long j6) throws IOException {
            if (i10 == 1) {
                k0 k0Var = this.$hasZip64Extra;
                if (k0Var.element) {
                    throw new IOException("bad zip: zip64 extra repeated");
                }
                k0Var.element = true;
                if (j6 < this.$requiredZip64ExtraSize) {
                    throw new IOException("bad zip: zip64 extra too short");
                }
                o0 o0Var = this.$size;
                long longLe = o0Var.element;
                if (longLe == ZipKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
                    longLe = this.$this_readEntry.readLongLe();
                }
                o0Var.element = longLe;
                o0 o0Var2 = this.$compressedSize;
                o0Var2.element = o0Var2.element == ZipKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? this.$this_readEntry.readLongLe() : 0L;
                o0 o0Var3 = this.$offset;
                o0Var3.element = o0Var3.element == ZipKt.MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? this.$this_readEntry.readLongLe() : 0L;
            }
        }
    }

    /* JADX INFO: renamed from: okio.internal.ZipKt$readOrSkipLocalHeader$1, reason: invalid class name and case insensitive filesystem */
    static final class C05891 extends v implements p<Integer, Long, l0> {
        final /* synthetic */ p0<Long> $createdAtMillis;
        final /* synthetic */ p0<Long> $lastAccessedAtMillis;
        final /* synthetic */ p0<Long> $lastModifiedAtMillis;
        final /* synthetic */ BufferedSource $this_readOrSkipLocalHeader;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05891(BufferedSource bufferedSource, p0<Long> p0Var, p0<Long> p0Var2, p0<Long> p0Var3) {
            super(2);
            this.$this_readOrSkipLocalHeader = bufferedSource;
            this.$lastModifiedAtMillis = p0Var;
            this.$lastAccessedAtMillis = p0Var2;
            this.$createdAtMillis = p0Var3;
        }

        @Override // e8.p
        public /* bridge */ /* synthetic */ l0 invoke(Integer num, Long l) throws IOException {
            invoke(num.intValue(), l.longValue());
            return l0.INSTANCE;
        }

        /* JADX WARN: Type inference failed for: r0v13, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r10v11, types: [T, java.lang.Long] */
        /* JADX WARN: Type inference failed for: r11v3, types: [T, java.lang.Long] */
        public final void invoke(int i10, long j6) throws IOException {
            if (i10 == ZipKt.HEADER_ID_EXTENDED_TIMESTAMP) {
                if (j6 < 1) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                byte b7 = this.$this_readOrSkipLocalHeader.readByte();
                boolean z6 = (b7 & 1) == 1;
                boolean z10 = (b7 & 2) == 2;
                boolean z11 = (b7 & 4) == 4;
                BufferedSource bufferedSource = this.$this_readOrSkipLocalHeader;
                long j10 = z6 ? 5L : 1L;
                if (z10) {
                    j10 += 4;
                }
                if (z11) {
                    j10 += 4;
                }
                if (j6 < j10) {
                    throw new IOException("bad zip: extended timestamp extra too short");
                }
                if (z6) {
                    this.$lastModifiedAtMillis.element = Long.valueOf(((long) bufferedSource.readIntLe()) * 1000);
                }
                if (z10) {
                    this.$lastAccessedAtMillis.element = Long.valueOf(((long) this.$this_readOrSkipLocalHeader.readIntLe()) * 1000);
                }
                if (z11) {
                    this.$createdAtMillis.element = Long.valueOf(((long) this.$this_readOrSkipLocalHeader.readIntLe()) * 1000);
                }
            }
        }
    }

    private static final Long dosDateTimeToEpochMillis(int i10, int i11) {
        if (i11 == -1) {
            return null;
        }
        GregorianCalendar gregorianCalendar = new GregorianCalendar();
        gregorianCalendar.set(14, 0);
        gregorianCalendar.set(((i10 >> 9) & 127) + 1980, ((i10 >> 5) & 15) - 1, i10 & 31, (i11 >> 11) & 31, (i11 >> 5) & 63, (i11 & 31) << 1);
        return Long.valueOf(gregorianCalendar.getTime().getTime());
    }

    private static final void readExtra(BufferedSource bufferedSource, int i10, p<? super Integer, ? super Long, l0> pVar) throws IOException {
        long j6 = i10;
        while (j6 != 0) {
            if (j6 < 4) {
                throw new IOException("bad zip: truncated header in extra field");
            }
            int shortLe = bufferedSource.readShortLe() & i0.MAX_VALUE;
            long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
            long j10 = j6 - ((long) 4);
            if (j10 < shortLe2) {
                throw new IOException("bad zip: truncated value in extra field");
            }
            bufferedSource.require(shortLe2);
            long size = bufferedSource.getBuffer().size();
            pVar.invoke(Integer.valueOf(shortLe), Long.valueOf(shortLe2));
            long size2 = (bufferedSource.getBuffer().size() + shortLe2) - size;
            if (size2 < 0) {
                throw new IOException("unsupported zip: too many bytes processed for " + shortLe);
            }
            if (size2 > 0) {
                bufferedSource.getBuffer().skip(size2);
            }
            j6 = j10 - shortLe2;
        }
    }

    private static final Map<Path, ZipEntry> buildIndex(List<ZipEntry> list) {
        Path path = Path.Companion.get$default(Path.Companion, c.FORWARD_SLASH_STRING, false, 1, (Object) null);
        Map<Path, ZipEntry> mapN = s0.n(a0.a(path, new ZipEntry(path, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null)));
        for (ZipEntry zipEntry : d0.L0(list, new Comparator() { // from class: okio.internal.ZipKt$buildIndex$$inlined$sortedBy$1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.Comparator
            public final int compare(T t5, T t10) {
                return y7.c.d(((ZipEntry) t5).getCanonicalPath(), ((ZipEntry) t10).getCanonicalPath());
            }
        })) {
            if (mapN.put(zipEntry.getCanonicalPath(), zipEntry) == null) {
                while (true) {
                    Path pathParent = zipEntry.getCanonicalPath().parent();
                    if (pathParent == null) {
                        break;
                    }
                    ZipEntry zipEntry2 = mapN.get(pathParent);
                    if (zipEntry2 != null) {
                        zipEntry2.getChildren().add(zipEntry.getCanonicalPath());
                        break;
                    }
                    ZipEntry zipEntry3 = new ZipEntry(pathParent, true, null, 0L, 0L, 0L, 0, null, 0L, 508, null);
                    mapN.put(pathParent, zipEntry3);
                    zipEntry3.getChildren().add(zipEntry.getCanonicalPath());
                    zipEntry = zipEntry3;
                }
            }
        }
        return mapN;
    }

    private static final String getHex(int i10) {
        StringBuilder sb = new StringBuilder();
        sb.append("0x");
        String string = Integer.toString(i10, b.a(16));
        t.i(string, "toString(this, checkRadix(radix))");
        sb.append(string);
        return sb.toString();
    }

    @NotNull
    public static final ZipFileSystem openZip(@NotNull Path zipPath, @NotNull FileSystem fileSystem, @NotNull l<? super ZipEntry, Boolean> predicate) throws IOException {
        t.j(zipPath, "zipPath");
        t.j(fileSystem, "fileSystem");
        t.j(predicate, "predicate");
        FileHandle fileHandleOpenReadOnly = fileSystem.openReadOnly(zipPath);
        try {
            long size = fileHandleOpenReadOnly.size() - ((long) 22);
            if (size < 0) {
                throw new IOException("not a zip: size=" + fileHandleOpenReadOnly.size());
            }
            long jMax = Math.max(size - PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, 0L);
            do {
                BufferedSource bufferedSourceBuffer = Okio.buffer(fileHandleOpenReadOnly.source(size));
                try {
                    if (bufferedSourceBuffer.readIntLe() == END_OF_CENTRAL_DIRECTORY_SIGNATURE) {
                        EocdRecord eocdRecord = readEocdRecord(bufferedSourceBuffer);
                        String utf8 = bufferedSourceBuffer.readUtf8(eocdRecord.getCommentByteCount());
                        bufferedSourceBuffer.close();
                        long j6 = size - ((long) 20);
                        if (j6 > 0) {
                            BufferedSource bufferedSourceBuffer2 = Okio.buffer(fileHandleOpenReadOnly.source(j6));
                            try {
                                if (bufferedSourceBuffer2.readIntLe() == ZIP64_LOCATOR_SIGNATURE) {
                                    int intLe = bufferedSourceBuffer2.readIntLe();
                                    long longLe = bufferedSourceBuffer2.readLongLe();
                                    if (bufferedSourceBuffer2.readIntLe() != 1 || intLe != 0) {
                                        throw new IOException("unsupported zip: spanned");
                                    }
                                    BufferedSource bufferedSourceBuffer3 = Okio.buffer(fileHandleOpenReadOnly.source(longLe));
                                    try {
                                        int intLe2 = bufferedSourceBuffer3.readIntLe();
                                        if (intLe2 != ZIP64_EOCD_RECORD_SIGNATURE) {
                                            throw new IOException("bad zip: expected " + getHex(ZIP64_EOCD_RECORD_SIGNATURE) + " but was " + getHex(intLe2));
                                        }
                                        eocdRecord = readZip64EocdRecord(bufferedSourceBuffer3, eocdRecord);
                                        l0 l0Var = l0.INSTANCE;
                                        kotlin.io.c.a(bufferedSourceBuffer3, null);
                                    } catch (Throwable th) {
                                        try {
                                            throw th;
                                        } catch (Throwable th2) {
                                            kotlin.io.c.a(bufferedSourceBuffer3, th);
                                            throw th2;
                                        }
                                    }
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        kotlin.io.c.a(fileHandleOpenReadOnly, th);
                                        throw th3;
                                    }
                                }
                                l0 l0Var2 = l0.INSTANCE;
                                kotlin.io.c.a(bufferedSourceBuffer2, null);
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    kotlin.io.c.a(bufferedSourceBuffer2, th4);
                                    throw th5;
                                }
                            }
                        }
                        ArrayList arrayList = new ArrayList();
                        BufferedSource bufferedSourceBuffer4 = Okio.buffer(fileHandleOpenReadOnly.source(eocdRecord.getCentralDirectoryOffset()));
                        try {
                            long entryCount = eocdRecord.getEntryCount();
                            for (long j10 = 0; j10 < entryCount; j10++) {
                                ZipEntry entry = readEntry(bufferedSourceBuffer4);
                                if (entry.getOffset() >= eocdRecord.getCentralDirectoryOffset()) {
                                    throw new IOException("bad zip: local file header offset >= central directory offset");
                                }
                                if (predicate.invoke(entry).booleanValue()) {
                                    arrayList.add(entry);
                                }
                            }
                            l0 l0Var3 = l0.INSTANCE;
                            kotlin.io.c.a(bufferedSourceBuffer4, null);
                            ZipFileSystem zipFileSystem = new ZipFileSystem(zipPath, fileSystem, buildIndex(arrayList), utf8);
                            kotlin.io.c.a(fileHandleOpenReadOnly, null);
                            return zipFileSystem;
                        } catch (Throwable th6) {
                            try {
                                throw th6;
                            } catch (Throwable th7) {
                                kotlin.io.c.a(bufferedSourceBuffer4, th6);
                                throw th7;
                            }
                        }
                    }
                    bufferedSourceBuffer.close();
                    size--;
                } catch (Throwable th8) {
                    bufferedSourceBuffer.close();
                    throw th8;
                }
            } while (size >= jMax);
            throw new IOException("not a zip: end of central directory signature not found");
        } catch (Throwable th9) {
            throw th9;
        }
    }

    public static /* synthetic */ ZipFileSystem openZip$default(Path path, FileSystem fileSystem, l lVar, int i10, Object obj) throws IOException {
        if ((i10 & 4) != 0) {
            lVar = AnonymousClass1.INSTANCE;
        }
        return openZip(path, fileSystem, lVar);
    }

    @NotNull
    public static final ZipEntry readEntry(@NotNull BufferedSource bufferedSource) throws IOException {
        t.j(bufferedSource, "<this>");
        int intLe = bufferedSource.readIntLe();
        if (intLe != CENTRAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(CENTRAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(4L);
        short shortLe = bufferedSource.readShortLe();
        int i10 = shortLe & i0.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i10));
        }
        int shortLe2 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        Long lDosDateTimeToEpochMillis = dosDateTimeToEpochMillis(bufferedSource.readShortLe() & i0.MAX_VALUE, bufferedSource.readShortLe() & i0.MAX_VALUE);
        long intLe2 = ((long) bufferedSource.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        o0 o0Var = new o0();
        o0Var.element = ((long) bufferedSource.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        o0 o0Var2 = new o0();
        o0Var2.element = ((long) bufferedSource.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        int shortLe3 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        int shortLe4 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        int shortLe5 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        bufferedSource.skip(8L);
        o0 o0Var3 = new o0();
        o0Var3.element = ((long) bufferedSource.readIntLe()) & MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE;
        String utf8 = bufferedSource.readUtf8(shortLe3);
        if (u.O(utf8, (char) 0, false, 2, null)) {
            throw new IOException("bad zip: filename contains 0x00");
        }
        long j6 = o0Var2.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? 8 : 0L;
        long j10 = o0Var.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE ? j6 + ((long) 8) : j6;
        if (o0Var3.element == MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE) {
            j10 += (long) 8;
        }
        long j11 = j10;
        k0 k0Var = new k0();
        readExtra(bufferedSource, shortLe4, new C05881(k0Var, j11, o0Var2, bufferedSource, o0Var, o0Var3));
        if (j11 <= 0 || k0Var.element) {
            return new ZipEntry(Path.Companion.get$default(Path.Companion, c.FORWARD_SLASH_STRING, false, 1, (Object) null).resolve(utf8), kotlin.text.t.v(utf8, c.FORWARD_SLASH_STRING, false, 2, null), bufferedSource.readUtf8(shortLe5), intLe2, o0Var.element, o0Var2.element, shortLe2, lDosDateTimeToEpochMillis, o0Var3.element);
        }
        throw new IOException("bad zip: zip64 extra required but absent");
    }

    @NotNull
    public static final FileMetadata readLocalHeader(@NotNull BufferedSource bufferedSource, @NotNull FileMetadata basicMetadata) throws IOException {
        t.j(bufferedSource, "<this>");
        t.j(basicMetadata, "basicMetadata");
        FileMetadata orSkipLocalHeader = readOrSkipLocalHeader(bufferedSource, basicMetadata);
        t.g(orSkipLocalHeader);
        return orSkipLocalHeader;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static final FileMetadata readOrSkipLocalHeader(BufferedSource bufferedSource, FileMetadata fileMetadata) throws IOException {
        p0 p0Var = new p0();
        p0Var.element = fileMetadata != null ? fileMetadata.getLastModifiedAtMillis() : 0;
        p0 p0Var2 = new p0();
        p0 p0Var3 = new p0();
        int intLe = bufferedSource.readIntLe();
        if (intLe != LOCAL_FILE_HEADER_SIGNATURE) {
            throw new IOException("bad zip: expected " + getHex(LOCAL_FILE_HEADER_SIGNATURE) + " but was " + getHex(intLe));
        }
        bufferedSource.skip(2L);
        short shortLe = bufferedSource.readShortLe();
        int i10 = shortLe & i0.MAX_VALUE;
        if ((shortLe & 1) != 0) {
            throw new IOException("unsupported zip: general purpose bit flag=" + getHex(i10));
        }
        bufferedSource.skip(18L);
        long shortLe2 = ((long) bufferedSource.readShortLe()) & WebSocketProtocol.PAYLOAD_SHORT_MAX;
        int shortLe3 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        bufferedSource.skip(shortLe2);
        if (fileMetadata == null) {
            bufferedSource.skip(shortLe3);
            return null;
        }
        readExtra(bufferedSource, shortLe3, new C05891(bufferedSource, p0Var, p0Var2, p0Var3));
        return new FileMetadata(fileMetadata.isRegularFile(), fileMetadata.isDirectory(), null, fileMetadata.getSize(), (Long) p0Var3.element, (Long) p0Var.element, (Long) p0Var2.element, null, 128, null);
    }

    private static final EocdRecord readZip64EocdRecord(BufferedSource bufferedSource, EocdRecord eocdRecord) throws IOException {
        bufferedSource.skip(12L);
        int intLe = bufferedSource.readIntLe();
        int intLe2 = bufferedSource.readIntLe();
        long longLe = bufferedSource.readLongLe();
        if (longLe != bufferedSource.readLongLe() || intLe != 0 || intLe2 != 0) {
            throw new IOException("unsupported zip: spanned");
        }
        bufferedSource.skip(8L);
        return new EocdRecord(longLe, bufferedSource.readLongLe(), eocdRecord.getCommentByteCount());
    }

    public static final void skipLocalHeader(@NotNull BufferedSource bufferedSource) throws IOException {
        t.j(bufferedSource, "<this>");
        readOrSkipLocalHeader(bufferedSource, null);
    }

    private static final EocdRecord readEocdRecord(BufferedSource bufferedSource) throws IOException {
        int shortLe = bufferedSource.readShortLe() & i0.MAX_VALUE;
        int shortLe2 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        long shortLe3 = bufferedSource.readShortLe() & i0.MAX_VALUE;
        if (shortLe3 == (bufferedSource.readShortLe() & i0.MAX_VALUE) && shortLe == 0 && shortLe2 == 0) {
            bufferedSource.skip(4L);
            return new EocdRecord(shortLe3, MAX_ZIP_ENTRY_AND_ARCHIVE_SIZE & ((long) bufferedSource.readIntLe()), bufferedSource.readShortLe() & i0.MAX_VALUE);
        }
        throw new IOException("unsupported zip: spanned");
    }
}
