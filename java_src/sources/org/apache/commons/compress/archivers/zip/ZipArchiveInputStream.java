package org.apache.commons.compress.archivers.zip;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PushbackInputStream;
import java.nio.ByteBuffer;
import java.util.zip.CRC32;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import java.util.zip.ZipException;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.compressors.bzip2.BZip2CompressorInputStream;
import org.apache.commons.compress.compressors.deflate64.Deflate64CompressorInputStream;
import org.apache.commons.compress.utils.ArchiveUtils;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes5.dex */
public class ZipArchiveInputStream extends ArchiveInputStream {
    private static final int CFH_LEN = 46;
    private static final int LFH_LEN = 30;
    private static final long TWO_EXP_32 = 4294967296L;
    private boolean allowStoredEntriesWithDataDescriptor;
    private final ByteBuffer buf;
    private boolean closed;
    private CurrentEntry current;
    final String encoding;
    private int entriesRead;
    private boolean hitCentralDirectory;
    private final InputStream in;
    private final Inflater inf;
    private ByteArrayInputStream lastStoredEntry;
    private final byte[] lfhBuf;
    private final byte[] shortBuf;
    private final byte[] skipBuf;
    private final byte[] twoDwordBuf;
    private final boolean useUnicodeExtraFields;
    private final byte[] wordBuf;
    private final ZipEncoding zipEncoding;
    private static final byte[] LFH = ZipLong.LFH_SIG.getBytes();
    private static final byte[] CFH = ZipLong.CFH_SIG.getBytes();
    private static final byte[] DD = ZipLong.DD_SIG.getBytes();

    private class BoundedInputStream extends InputStream {
        private final InputStream in;
        private final long max;
        private long pos = 0;

        @Override // java.io.InputStream
        public int read() throws IOException {
            long j6 = this.max;
            if (j6 >= 0 && this.pos >= j6) {
                return -1;
            }
            int i10 = this.in.read();
            this.pos++;
            ZipArchiveInputStream.this.count(1);
            CurrentEntry.access$708(ZipArchiveInputStream.this.current);
            return i10;
        }

        public BoundedInputStream(InputStream inputStream, long j6) {
            this.max = j6;
            this.in = inputStream;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            long j6 = this.max;
            if (j6 < 0 || this.pos < j6) {
                return this.in.available();
            }
            return 0;
        }

        @Override // java.io.InputStream
        public long skip(long j6) throws IOException {
            long j10 = this.max;
            if (j10 >= 0) {
                j6 = Math.min(j6, j10 - this.pos);
            }
            long jSkip = this.in.skip(j6);
            this.pos += jSkip;
            return jSkip;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr) throws IOException {
            return read(bArr, 0, bArr.length);
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            long j6 = this.max;
            if (j6 >= 0 && this.pos >= j6) {
                return -1;
            }
            int i12 = this.in.read(bArr, i10, (int) (j6 >= 0 ? Math.min(i11, j6 - this.pos) : i11));
            if (i12 == -1) {
                return -1;
            }
            long j10 = i12;
            this.pos += j10;
            ZipArchiveInputStream.this.count(i12);
            ZipArchiveInputStream.this.current.bytesReadFromStream += j10;
            return i12;
        }
    }

    private static final class CurrentEntry {
        private long bytesRead;
        private long bytesReadFromStream;
        private final CRC32 crc;
        private final ZipArchiveEntry entry;
        private boolean hasDataDescriptor;
        private InputStream in;
        private boolean usesZip64;

        private CurrentEntry() {
            this.entry = new ZipArchiveEntry();
            this.crc = new CRC32();
        }

        static /* synthetic */ long access$708(CurrentEntry currentEntry) {
            long j6 = currentEntry.bytesReadFromStream;
            currentEntry.bytesReadFromStream = 1 + j6;
            return j6;
        }

        /* synthetic */ CurrentEntry(AnonymousClass1 anonymousClass1) {
            this();
        }
    }

    public ZipArchiveInputStream(InputStream inputStream) {
        this(inputStream, "UTF8");
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0061  */
    private boolean bufferContainsSignature(ByteArrayOutputStream byteArrayOutputStream, int i10, int i11, int i12) throws IOException {
        boolean z6 = false;
        int i13 = 0;
        for (int i14 = 0; !z6 && i14 < i11 - 4; i14++) {
            byte b7 = this.buf.array()[i14];
            byte[] bArr = LFH;
            if (b7 == bArr[0] && this.buf.array()[i14 + 1] == bArr[1]) {
                int i15 = i14 + 2;
                if (this.buf.array()[i15] == bArr[2] && this.buf.array()[i14 + 3] == bArr[3]) {
                    i13 = ((i10 + i11) - i14) - i12;
                    z6 = true;
                } else {
                    byte b10 = this.buf.array()[i14];
                    byte[] bArr2 = CFH;
                    if (b10 == bArr2[2] && this.buf.array()[i14 + 3] == bArr2[3]) {
                        i13 = ((i10 + i11) - i14) - i12;
                    } else {
                        byte b11 = this.buf.array()[i15];
                        byte[] bArr3 = DD;
                        if (b11 == bArr3[2] && this.buf.array()[i14 + 3] == bArr3[3]) {
                            i13 = (i10 + i11) - i14;
                        }
                    }
                    z6 = true;
                }
                if (z6) {
                    pushback(this.buf.array(), (i10 + i11) - i13, i13);
                    byteArrayOutputStream.write(this.buf.array(), 0, i14);
                    readDataDescriptor();
                }
            }
        }
        return z6;
    }

    private int cacheBytesRead(ByteArrayOutputStream byteArrayOutputStream, int i10, int i11, int i12) {
        int i13 = i10 + i11;
        int i14 = (i13 - i12) - 3;
        if (i14 <= 0) {
            return i13;
        }
        byteArrayOutputStream.write(this.buf.array(), 0, i14);
        int i15 = i12 + 3;
        System.arraycopy(this.buf.array(), i14, this.buf.array(), 0, i15);
        return i15;
    }

    private static boolean checksig(byte[] bArr, byte[] bArr2) {
        for (int i10 = 0; i10 < bArr2.length; i10++) {
            if (bArr[i10] != bArr2[i10]) {
                return false;
            }
        }
        return true;
    }

    private void findEocdRecord() throws IOException {
        int oneByte = -1;
        while (true) {
            boolean zIsFirstByteOfEocdSig = false;
            while (true) {
                if (!zIsFirstByteOfEocdSig) {
                    oneByte = readOneByte();
                    if (oneByte <= -1) {
                        return;
                    }
                }
                if (!isFirstByteOfEocdSig(oneByte)) {
                    break;
                }
                oneByte = readOneByte();
                byte[] bArr = ZipArchiveOutputStream.EOCD_SIG;
                if (oneByte == bArr[1]) {
                    oneByte = readOneByte();
                    if (oneByte == bArr[2]) {
                        oneByte = readOneByte();
                        if (oneByte == -1 || oneByte == bArr[3]) {
                            return;
                        } else {
                            zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                        }
                    } else if (oneByte == -1) {
                        return;
                    } else {
                        zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                    }
                } else if (oneByte == -1) {
                    return;
                } else {
                    zIsFirstByteOfEocdSig = isFirstByteOfEocdSig(oneByte);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x002d  */
    /* JADX WARN: Code duplicated, block: B:22:0x0035 A[EDGE_INSN: B:22:0x0035->B:15:0x0035 BREAK  A[LOOP:0: B:3:0x0001->B:24:?], SYNTHETIC] */
    private int readFromInflater(byte[] bArr, int i10, int i11) throws IOException {
        int iInflate = 0;
        do {
            if (this.inf.needsInput()) {
                int iFill = fill();
                if (iFill > 0) {
                    this.current.bytesReadFromStream += (long) this.buf.limit();
                    iInflate = this.inf.inflate(bArr, i10, i11);
                    if (iInflate == 0) {
                        break;
                        break;
                    }
                } else if (iFill == -1) {
                    return -1;
                }
            } else {
                try {
                    iInflate = this.inf.inflate(bArr, i10, i11);
                    if (iInflate == 0) {
                        break;
                    }
                } catch (DataFormatException e) {
                    throw ((IOException) new ZipException(e.getMessage()).initCause(e));
                }
            }
        } while (this.inf.needsInput());
        return iInflate;
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.archivers.zip.ZipArchiveInputStream$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod;

        static {
            int[] iArr = new int[ZipMethod.values().length];
            $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod = iArr;
            try {
                iArr[ZipMethod.UNSHRINKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.IMPLODING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.BZIP2.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[ZipMethod.ENHANCED_DEFLATED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ZipArchiveInputStream(InputStream inputStream, String str) {
        this(inputStream, str, true);
    }

    private void closeEntry() throws IOException {
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        if (this.current == null) {
            return;
        }
        if (currentEntryHasOutstandingBytes()) {
            drainCurrentEntryData();
        } else {
            skip(Long.MAX_VALUE);
            int bytesInflated = (int) (this.current.bytesReadFromStream - (this.current.entry.getMethod() == 8 ? getBytesInflated() : this.current.bytesRead));
            if (bytesInflated > 0) {
                pushback(this.buf.array(), this.buf.limit() - bytesInflated, bytesInflated);
                this.current.bytesReadFromStream -= (long) bytesInflated;
            }
            if (currentEntryHasOutstandingBytes()) {
                drainCurrentEntryData();
            }
        }
        if (this.lastStoredEntry == null && this.current.hasDataDescriptor) {
            readDataDescriptor();
        }
        this.inf.reset();
        this.buf.clear().flip();
        this.current = null;
        this.lastStoredEntry = null;
    }

    private boolean currentEntryHasOutstandingBytes() {
        return this.current.bytesReadFromStream <= this.current.entry.getCompressedSize() && !this.current.hasDataDescriptor;
    }

    private void drainCurrentEntryData() throws IOException {
        long compressedSize = this.current.entry.getCompressedSize() - this.current.bytesReadFromStream;
        while (compressedSize > 0) {
            long j6 = this.in.read(this.buf.array(), 0, (int) Math.min(this.buf.capacity(), compressedSize));
            if (j6 < 0) {
                throw new EOFException("Truncated ZIP entry: " + ArchiveUtils.sanitize(this.current.entry.getName()));
            }
            count(j6);
            compressedSize -= j6;
        }
    }

    private int fill() throws IOException {
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        int i10 = this.in.read(this.buf.array());
        if (i10 > 0) {
            this.buf.limit(i10);
            count(this.buf.limit());
            this.inf.setInput(this.buf.array(), 0, this.buf.limit());
        }
        return i10;
    }

    private long getBytesInflated() {
        long bytesRead = this.inf.getBytesRead();
        if (this.current.bytesReadFromStream >= TWO_EXP_32) {
            while (true) {
                long j6 = bytesRead + TWO_EXP_32;
                if (j6 > this.current.bytesReadFromStream) {
                    break;
                }
                bytesRead = j6;
            }
        }
        return bytesRead;
    }

    private boolean isFirstByteOfEocdSig(int i10) {
        return i10 == ZipArchiveOutputStream.EOCD_SIG[0];
    }

    public static boolean matches(byte[] bArr, int i10) {
        byte[] bArr2 = ZipArchiveOutputStream.LFH_SIG;
        if (i10 < bArr2.length) {
            return false;
        }
        return checksig(bArr, bArr2) || checksig(bArr, ZipArchiveOutputStream.EOCD_SIG) || checksig(bArr, ZipArchiveOutputStream.DD_SIG) || checksig(bArr, ZipLong.SINGLE_SEGMENT_SPLIT_MARKER.getBytes());
    }

    private void processZip64Extra(ZipLong zipLong, ZipLong zipLong2) {
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) this.current.entry.getExtraField(Zip64ExtendedInformationExtraField.HEADER_ID);
        this.current.usesZip64 = zip64ExtendedInformationExtraField != null;
        if (this.current.hasDataDescriptor) {
            return;
        }
        if (zip64ExtendedInformationExtraField != null) {
            ZipLong zipLong3 = ZipLong.ZIP64_MAGIC;
            if (zipLong2.equals(zipLong3) || zipLong.equals(zipLong3)) {
                this.current.entry.setCompressedSize(zip64ExtendedInformationExtraField.getCompressedSize().getLongValue());
                this.current.entry.setSize(zip64ExtendedInformationExtraField.getSize().getLongValue());
                return;
            }
        }
        this.current.entry.setCompressedSize(zipLong2.getValue());
        this.current.entry.setSize(zipLong.getValue());
    }

    private void pushback(byte[] bArr, int i10, int i11) throws IOException {
        ((PushbackInputStream) this.in).unread(bArr, i10, i11);
        pushedBackBytes(i11);
    }

    private void readDataDescriptor() throws IOException {
        readFully(this.wordBuf);
        ZipLong zipLong = new ZipLong(this.wordBuf);
        if (ZipLong.DD_SIG.equals(zipLong)) {
            readFully(this.wordBuf);
            zipLong = new ZipLong(this.wordBuf);
        }
        this.current.entry.setCrc(zipLong.getValue());
        readFully(this.twoDwordBuf);
        ZipLong zipLong2 = new ZipLong(this.twoDwordBuf, 8);
        if (!zipLong2.equals(ZipLong.CFH_SIG) && !zipLong2.equals(ZipLong.LFH_SIG)) {
            this.current.entry.setCompressedSize(ZipEightByteInteger.getLongValue(this.twoDwordBuf));
            this.current.entry.setSize(ZipEightByteInteger.getLongValue(this.twoDwordBuf, 8));
        } else {
            pushback(this.twoDwordBuf, 8, 8);
            this.current.entry.setCompressedSize(ZipLong.getValue(this.twoDwordBuf));
            this.current.entry.setSize(ZipLong.getValue(this.twoDwordBuf, 4));
        }
    }

    private void readFully(byte[] bArr) throws IOException {
        int fully = IOUtils.readFully(this.in, bArr);
        count(fully);
        if (fully < bArr.length) {
            throw new EOFException();
        }
    }

    private int readOneByte() throws IOException {
        int i10 = this.in.read();
        if (i10 != -1) {
            count(1);
        }
        return i10;
    }

    private int readStored(byte[] bArr, int i10, int i11) throws IOException {
        if (this.current.hasDataDescriptor) {
            if (this.lastStoredEntry == null) {
                readStoredEntry();
            }
            return this.lastStoredEntry.read(bArr, i10, i11);
        }
        long size = this.current.entry.getSize();
        if (this.current.bytesRead >= size) {
            return -1;
        }
        if (this.buf.position() >= this.buf.limit()) {
            this.buf.position(0);
            int i12 = this.in.read(this.buf.array());
            if (i12 == -1) {
                return -1;
            }
            this.buf.limit(i12);
            count(i12);
            this.current.bytesReadFromStream += (long) i12;
        }
        int iMin = Math.min(this.buf.remaining(), i11);
        if (size - this.current.bytesRead < iMin) {
            iMin = (int) (size - this.current.bytesRead);
        }
        this.buf.get(bArr, i10, iMin);
        this.current.bytesRead += (long) iMin;
        return iMin;
    }

    private void readStoredEntry() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i10 = this.current.usesZip64 ? 20 : 12;
        boolean zBufferContainsSignature = false;
        int iCacheBytesRead = 0;
        while (!zBufferContainsSignature) {
            int i11 = this.in.read(this.buf.array(), iCacheBytesRead, 512 - iCacheBytesRead);
            if (i11 <= 0) {
                throw new IOException("Truncated ZIP file");
            }
            int i12 = i11 + iCacheBytesRead;
            if (i12 < 4) {
                iCacheBytesRead = i12;
            } else {
                zBufferContainsSignature = bufferContainsSignature(byteArrayOutputStream, iCacheBytesRead, i11, i10);
                if (!zBufferContainsSignature) {
                    iCacheBytesRead = cacheBytesRead(byteArrayOutputStream, iCacheBytesRead, i11, i10);
                }
            }
        }
        this.lastStoredEntry = new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    }

    private void realSkip(long j6) throws IOException {
        long j10 = 0;
        if (j6 < 0) {
            throw new IllegalArgumentException();
        }
        while (j10 < j6) {
            long length = j6 - j10;
            InputStream inputStream = this.in;
            byte[] bArr = this.skipBuf;
            if (bArr.length <= length) {
                length = bArr.length;
            }
            int i10 = inputStream.read(bArr, 0, (int) length);
            if (i10 == -1) {
                return;
            }
            count(i10);
            j10 += (long) i10;
        }
    }

    private void skipRemainderOfArchive() throws IOException {
        realSkip((((long) this.entriesRead) * 46) - 30);
        findEocdRecord();
        realSkip(16L);
        readFully(this.shortBuf);
        realSkip(ZipShort.getValue(this.shortBuf));
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        if (!(archiveEntry instanceof ZipArchiveEntry)) {
            return false;
        }
        ZipArchiveEntry zipArchiveEntry = (ZipArchiveEntry) archiveEntry;
        return ZipUtil.canHandleEntryData(zipArchiveEntry) && supportsDataDescriptorFor(zipArchiveEntry) && supportsCompressedSizeFor(zipArchiveEntry);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            this.in.close();
        } finally {
            this.inf.end();
        }
    }

    public ZipArchiveEntry getNextZipEntry() throws IOException {
        boolean z6;
        ZipLong zipLong;
        ZipLong zipLong2;
        AnonymousClass1 anonymousClass1 = null;
        if (!this.closed && !this.hitCentralDirectory) {
            if (this.current != null) {
                closeEntry();
                z6 = false;
            } else {
                z6 = true;
            }
            long bytesRead = getBytesRead();
            try {
                if (z6) {
                    readFirstLocalFileHeader(this.lfhBuf);
                } else {
                    readFully(this.lfhBuf);
                }
                ZipLong zipLong3 = new ZipLong(this.lfhBuf);
                if (!zipLong3.equals(ZipLong.CFH_SIG) && !zipLong3.equals(ZipLong.AED_SIG)) {
                    if (!zipLong3.equals(ZipLong.LFH_SIG)) {
                        throw new ZipException(String.format("Unexpected record signature: 0X%X", Long.valueOf(zipLong3.getValue())));
                    }
                    this.current = new CurrentEntry(anonymousClass1);
                    this.current.entry.setPlatform((ZipShort.getValue(this.lfhBuf, 4) >> 8) & 15);
                    GeneralPurposeBit generalPurposeBit = GeneralPurposeBit.parse(this.lfhBuf, 6);
                    boolean zUsesUTF8ForNames = generalPurposeBit.usesUTF8ForNames();
                    ZipEncoding zipEncoding = zUsesUTF8ForNames ? ZipEncodingHelper.UTF8_ZIP_ENCODING : this.zipEncoding;
                    this.current.hasDataDescriptor = generalPurposeBit.usesDataDescriptor();
                    this.current.entry.setGeneralPurposeBit(generalPurposeBit);
                    this.current.entry.setMethod(ZipShort.getValue(this.lfhBuf, 8));
                    this.current.entry.setTime(ZipUtil.dosToJavaTime(ZipLong.getValue(this.lfhBuf, 10)));
                    if (this.current.hasDataDescriptor) {
                        zipLong = null;
                        zipLong2 = null;
                    } else {
                        this.current.entry.setCrc(ZipLong.getValue(this.lfhBuf, 14));
                        zipLong = new ZipLong(this.lfhBuf, 18);
                        zipLong2 = new ZipLong(this.lfhBuf, 22);
                    }
                    int value = ZipShort.getValue(this.lfhBuf, 26);
                    int value2 = ZipShort.getValue(this.lfhBuf, 28);
                    byte[] bArr = new byte[value];
                    readFully(bArr);
                    this.current.entry.setName(zipEncoding.decode(bArr), bArr);
                    if (zUsesUTF8ForNames) {
                        this.current.entry.setNameSource(ZipArchiveEntry.NameSource.NAME_WITH_EFS_FLAG);
                    }
                    byte[] bArr2 = new byte[value2];
                    readFully(bArr2);
                    this.current.entry.setExtra(bArr2);
                    if (!zUsesUTF8ForNames && this.useUnicodeExtraFields) {
                        ZipUtil.setNameAndCommentFromExtraFields(this.current.entry, bArr, null);
                    }
                    processZip64Extra(zipLong2, zipLong);
                    this.current.entry.setLocalHeaderOffset(bytesRead);
                    this.current.entry.setDataOffset(getBytesRead());
                    this.current.entry.setStreamContiguous(true);
                    ZipMethod methodByCode = ZipMethod.getMethodByCode(this.current.entry.getMethod());
                    if (this.current.entry.getCompressedSize() != -1) {
                        if (ZipUtil.canHandleEntryData(this.current.entry) && methodByCode != ZipMethod.STORED && methodByCode != ZipMethod.DEFLATED) {
                            BoundedInputStream boundedInputStream = new BoundedInputStream(this.in, this.current.entry.getCompressedSize());
                            int i10 = AnonymousClass1.$SwitchMap$org$apache$commons$compress$archivers$zip$ZipMethod[methodByCode.ordinal()];
                            if (i10 == 1) {
                                this.current.in = new UnshrinkingInputStream(boundedInputStream);
                            } else if (i10 == 2) {
                                CurrentEntry currentEntry = this.current;
                                currentEntry.in = new ExplodingInputStream(currentEntry.entry.getGeneralPurposeBit().getSlidingDictionarySize(), this.current.entry.getGeneralPurposeBit().getNumberOfShannonFanoTrees(), boundedInputStream);
                            } else if (i10 == 3) {
                                this.current.in = new BZip2CompressorInputStream(boundedInputStream);
                            } else if (i10 == 4) {
                                this.current.in = new Deflate64CompressorInputStream(boundedInputStream);
                            }
                        }
                    } else if (methodByCode == ZipMethod.ENHANCED_DEFLATED) {
                        this.current.in = new Deflate64CompressorInputStream(this.in);
                    }
                    this.entriesRead++;
                    return this.current.entry;
                }
                this.hitCentralDirectory = true;
                skipRemainderOfArchive();
            } catch (EOFException unused) {
            }
        }
        return null;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int deflated;
        if (this.closed) {
            throw new IOException("The stream is closed");
        }
        CurrentEntry currentEntry = this.current;
        if (currentEntry == null) {
            return -1;
        }
        if (i10 > bArr.length || i11 < 0 || i10 < 0 || bArr.length - i10 < i11) {
            throw new ArrayIndexOutOfBoundsException();
        }
        ZipUtil.checkRequestedFeatures(currentEntry.entry);
        if (!supportsDataDescriptorFor(this.current.entry)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.DATA_DESCRIPTOR, this.current.entry);
        }
        if (!supportsCompressedSizeFor(this.current.entry)) {
            throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.UNKNOWN_COMPRESSED_SIZE, this.current.entry);
        }
        if (this.current.entry.getMethod() == 0) {
            deflated = readStored(bArr, i10, i11);
        } else if (this.current.entry.getMethod() == 8) {
            deflated = readDeflated(bArr, i10, i11);
        } else {
            if (this.current.entry.getMethod() != ZipMethod.UNSHRINKING.getCode() && this.current.entry.getMethod() != ZipMethod.IMPLODING.getCode() && this.current.entry.getMethod() != ZipMethod.ENHANCED_DEFLATED.getCode() && this.current.entry.getMethod() != ZipMethod.BZIP2.getCode()) {
                throw new UnsupportedZipFeatureException(ZipMethod.getMethodByCode(this.current.entry.getMethod()), this.current.entry);
            }
            deflated = this.current.in.read(bArr, i10, i11);
        }
        if (deflated >= 0) {
            this.current.crc.update(bArr, i10, deflated);
        }
        return deflated;
    }

    @Override // java.io.InputStream
    public long skip(long j6) throws IOException {
        long j10 = 0;
        if (j6 < 0) {
            throw new IllegalArgumentException();
        }
        while (j10 < j6) {
            long length = j6 - j10;
            byte[] bArr = this.skipBuf;
            if (bArr.length <= length) {
                length = bArr.length;
            }
            int i10 = read(bArr, 0, (int) length);
            if (i10 == -1) {
                return j10;
            }
            j10 += (long) i10;
        }
        return j10;
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z6) {
        this(inputStream, str, z6, false);
    }

    private int readDeflated(byte[] bArr, int i10, int i11) throws IOException {
        int fromInflater = readFromInflater(bArr, i10, i11);
        if (fromInflater <= 0) {
            if (this.inf.finished()) {
                return -1;
            }
            if (!this.inf.needsDictionary()) {
                if (fromInflater == -1) {
                    throw new IOException("Truncated ZIP file");
                }
            } else {
                throw new ZipException("This archive needs a preset dictionary which is not supported by Commons Compress.");
            }
        }
        return fromInflater;
    }

    private void readFirstLocalFileHeader(byte[] bArr) throws IOException {
        readFully(bArr);
        ZipLong zipLong = new ZipLong(bArr);
        if (!zipLong.equals(ZipLong.DD_SIG)) {
            if (zipLong.equals(ZipLong.SINGLE_SEGMENT_SPLIT_MARKER)) {
                byte[] bArr2 = new byte[4];
                readFully(bArr2);
                System.arraycopy(bArr, 4, bArr, 0, 26);
                System.arraycopy(bArr2, 0, bArr, 26, 4);
                return;
            }
            return;
        }
        throw new UnsupportedZipFeatureException(UnsupportedZipFeatureException.Feature.SPLITTING);
    }

    private boolean supportsCompressedSizeFor(ZipArchiveEntry zipArchiveEntry) {
        if (zipArchiveEntry.getCompressedSize() == -1 && zipArchiveEntry.getMethod() != 8 && zipArchiveEntry.getMethod() != ZipMethod.ENHANCED_DEFLATED.getCode() && (!zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() || !this.allowStoredEntriesWithDataDescriptor || zipArchiveEntry.getMethod() != 0)) {
            return false;
        }
        return true;
    }

    private boolean supportsDataDescriptorFor(ZipArchiveEntry zipArchiveEntry) {
        if (zipArchiveEntry.getGeneralPurposeBit().usesDataDescriptor() && ((!this.allowStoredEntriesWithDataDescriptor || zipArchiveEntry.getMethod() != 0) && zipArchiveEntry.getMethod() != 8 && zipArchiveEntry.getMethod() != ZipMethod.ENHANCED_DEFLATED.getCode())) {
            return false;
        }
        return true;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArchiveEntry getNextEntry() throws IOException {
        return getNextZipEntry();
    }

    public ZipArchiveInputStream(InputStream inputStream, String str, boolean z6, boolean z10) {
        this.inf = new Inflater(true);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(512);
        this.buf = byteBufferAllocate;
        this.current = null;
        this.closed = false;
        this.hitCentralDirectory = false;
        this.lastStoredEntry = null;
        this.allowStoredEntriesWithDataDescriptor = false;
        this.lfhBuf = new byte[30];
        this.skipBuf = new byte[1024];
        this.shortBuf = new byte[2];
        this.wordBuf = new byte[4];
        this.twoDwordBuf = new byte[16];
        this.entriesRead = 0;
        this.encoding = str;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(str);
        this.useUnicodeExtraFields = z6;
        this.in = new PushbackInputStream(inputStream, byteBufferAllocate.capacity());
        this.allowStoredEntriesWithDataDescriptor = z10;
        byteBufferAllocate.limit(0);
    }
}
