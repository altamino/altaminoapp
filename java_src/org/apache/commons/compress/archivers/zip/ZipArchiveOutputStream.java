package org.apache.commons.compress.archivers.zip;

import android.support.v4.internal.view.SupportMenu;
import com.narvii.chat.call.CallScreenService;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.Deflater;
import org.apache.commons.compress.archivers.ArchiveOutputStream;
import org.apache.commons.compress.utils.IOUtils;

/* loaded from: classes4.dex */
public class ZipArchiveOutputStream extends ArchiveOutputStream {
    static final int BUFFER_SIZE = 512;
    private static final int CFH_COMMENT_LENGTH_OFFSET = 32;
    private static final int CFH_COMPRESSED_SIZE_OFFSET = 20;
    private static final int CFH_CRC_OFFSET = 16;
    private static final int CFH_DISK_NUMBER_OFFSET = 34;
    private static final int CFH_EXTERNAL_ATTRIBUTES_OFFSET = 38;
    private static final int CFH_EXTRA_LENGTH_OFFSET = 30;
    private static final int CFH_FILENAME_LENGTH_OFFSET = 28;
    private static final int CFH_FILENAME_OFFSET = 46;
    private static final int CFH_GPB_OFFSET = 8;
    private static final int CFH_INTERNAL_ATTRIBUTES_OFFSET = 36;
    private static final int CFH_LFH_OFFSET = 42;
    private static final int CFH_METHOD_OFFSET = 10;
    private static final int CFH_ORIGINAL_SIZE_OFFSET = 24;
    private static final int CFH_SIG_OFFSET = 0;
    private static final int CFH_TIME_OFFSET = 12;
    private static final int CFH_VERSION_MADE_BY_OFFSET = 4;
    private static final int CFH_VERSION_NEEDED_OFFSET = 6;
    public static final int DEFAULT_COMPRESSION = -1;
    static final String DEFAULT_ENCODING = "UTF8";
    public static final int DEFLATED = 8;

    @Deprecated
    public static final int EFS_FLAG = 2048;
    private static final int LFH_COMPRESSED_SIZE_OFFSET = 18;
    private static final int LFH_CRC_OFFSET = 14;
    private static final int LFH_EXTRA_LENGTH_OFFSET = 28;
    private static final int LFH_FILENAME_LENGTH_OFFSET = 26;
    private static final int LFH_FILENAME_OFFSET = 30;
    private static final int LFH_GPB_OFFSET = 6;
    private static final int LFH_METHOD_OFFSET = 8;
    private static final int LFH_ORIGINAL_SIZE_OFFSET = 22;
    private static final int LFH_SIG_OFFSET = 0;
    private static final int LFH_TIME_OFFSET = 10;
    private static final int LFH_VERSION_NEEDED_OFFSET = 4;
    public static final int STORED = 0;
    private final Calendar calendarInstance;
    private long cdLength;
    private long cdOffset;
    private final SeekableByteChannel channel;
    private String comment;
    private final byte[] copyBuffer;
    private UnicodeExtraFieldPolicy createUnicodeExtraFields;
    protected final Deflater def;
    private String encoding;
    private final List<ZipArchiveEntry> entries;
    private CurrentEntry entry;
    private boolean fallbackToUTF8;
    protected boolean finished;
    private boolean hasCompressionLevelChanged;
    private boolean hasUsedZip64;
    private int level;
    private final Map<ZipArchiveEntry, EntryMetaData> metaData;
    private int method;
    private final OutputStream out;
    private final StreamCompressor streamCompressor;
    private boolean useUTF8Flag;
    private Zip64Mode zip64Mode;
    private ZipEncoding zipEncoding;
    private static final byte[] EMPTY = new byte[0];
    private static final byte[] ZERO = {0, 0};
    private static final byte[] LZERO = {0, 0, 0, 0};
    private static final byte[] ONE = ZipLong.getBytes(1);
    static final byte[] LFH_SIG = ZipLong.LFH_SIG.getBytes();
    static final byte[] DD_SIG = ZipLong.DD_SIG.getBytes();
    static final byte[] CFH_SIG = ZipLong.CFH_SIG.getBytes();
    static final byte[] EOCD_SIG = ZipLong.getBytes(101010256);
    static final byte[] ZIP64_EOCD_SIG = ZipLong.getBytes(101075792);
    static final byte[] ZIP64_EOCD_LOC_SIG = ZipLong.getBytes(117853008);

    private int versionNeededToExtractMethod(int i) {
        return i == 8 ? 20 : 10;
    }

    public ZipArchiveOutputStream(OutputStream outputStream) {
        this.finished = false;
        this.comment = "";
        this.level = -1;
        this.hasCompressionLevelChanged = false;
        this.method = 8;
        this.entries = new LinkedList();
        this.cdOffset = 0L;
        this.cdLength = 0L;
        this.metaData = new HashMap();
        this.encoding = DEFAULT_ENCODING;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(DEFAULT_ENCODING);
        this.useUTF8Flag = true;
        this.fallbackToUTF8 = false;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.hasUsedZip64 = false;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.out = outputStream;
        this.channel = null;
        this.def = new Deflater(this.level, true);
        this.streamCompressor = StreamCompressor.create(outputStream, this.def);
    }

    public ZipArchiveOutputStream(File file) throws IOException {
        SeekableByteChannel seekableByteChannelNewByteChannel;
        FileOutputStream fileOutputStream;
        StreamCompressor streamCompressorCreate;
        this.finished = false;
        this.comment = "";
        this.level = -1;
        this.hasCompressionLevelChanged = false;
        this.method = 8;
        this.entries = new LinkedList();
        this.cdOffset = 0L;
        this.cdLength = 0L;
        this.metaData = new HashMap();
        this.encoding = DEFAULT_ENCODING;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(DEFAULT_ENCODING);
        this.useUTF8Flag = true;
        this.fallbackToUTF8 = false;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.hasUsedZip64 = false;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.def = new Deflater(this.level, true);
        SeekableByteChannel seekableByteChannel = null;
        try {
            seekableByteChannelNewByteChannel = Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.READ, StandardOpenOption.TRUNCATE_EXISTING), new FileAttribute[0]);
        } catch (IOException unused) {
            seekableByteChannelNewByteChannel = null;
        }
        try {
            streamCompressorCreate = StreamCompressor.create(seekableByteChannelNewByteChannel, this.def);
            seekableByteChannel = seekableByteChannelNewByteChannel;
            fileOutputStream = null;
        } catch (IOException unused2) {
            IOUtils.closeQuietly(seekableByteChannelNewByteChannel);
            fileOutputStream = new FileOutputStream(file);
            streamCompressorCreate = StreamCompressor.create(fileOutputStream, this.def);
            this.out = fileOutputStream;
            this.channel = seekableByteChannel;
            this.streamCompressor = streamCompressorCreate;
        }
        this.out = fileOutputStream;
        this.channel = seekableByteChannel;
        this.streamCompressor = streamCompressorCreate;
    }

    public ZipArchiveOutputStream(SeekableByteChannel seekableByteChannel) throws IOException {
        this.finished = false;
        this.comment = "";
        this.level = -1;
        this.hasCompressionLevelChanged = false;
        this.method = 8;
        this.entries = new LinkedList();
        this.cdOffset = 0L;
        this.cdLength = 0L;
        this.metaData = new HashMap();
        this.encoding = DEFAULT_ENCODING;
        this.zipEncoding = ZipEncodingHelper.getZipEncoding(DEFAULT_ENCODING);
        this.useUTF8Flag = true;
        this.fallbackToUTF8 = false;
        this.createUnicodeExtraFields = UnicodeExtraFieldPolicy.NEVER;
        this.hasUsedZip64 = false;
        this.zip64Mode = Zip64Mode.AsNeeded;
        this.copyBuffer = new byte[32768];
        this.calendarInstance = Calendar.getInstance();
        this.channel = seekableByteChannel;
        this.def = new Deflater(this.level, true);
        this.streamCompressor = StreamCompressor.create(seekableByteChannel, this.def);
        this.out = null;
    }

    public void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        if (this.entry != null) {
            throw new IOException("This archive contains unclosed entries.");
        }
        this.cdOffset = this.streamCompressor.getTotalBytesWritten();
        writeCentralDirectoryInChunks();
        this.cdLength = this.streamCompressor.getTotalBytesWritten() - this.cdOffset;
        writeZip64CentralDirectory();
        writeCentralDirectoryEnd();
        this.metaData.clear();
        this.entries.clear();
        this.streamCompressor.close();
        this.finished = true;
    }

    private void writeCentralDirectoryInChunks() throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(CallScreenService.CALL_TIME_LIMIT);
        Iterator<ZipArchiveEntry> it = this.entries.iterator();
        while (true) {
            int i = 0;
            while (it.hasNext()) {
                byteArrayOutputStream.write(createCentralFileHeader(it.next()));
                i++;
                if (i > 1000) {
                    break;
                }
            }
            writeCounted(byteArrayOutputStream.toByteArray());
            return;
            writeCounted(byteArrayOutputStream.toByteArray());
            byteArrayOutputStream.reset();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        CurrentEntry currentEntry = this.entry;
        if (currentEntry == null) {
            throw new IllegalStateException("No current entry");
        }
        ZipUtil.checkRequestedFeatures(currentEntry.entry);
        count(this.streamCompressor.write(bArr, i, i2, this.entry.entry.getMethod()));
    }

    private void writeCounted(byte[] bArr) throws IOException {
        this.streamCompressor.writeCounted(bArr);
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.finished) {
            finish();
        }
        destroy();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.out;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    private byte[] createCentralFileHeader(ZipArchiveEntry zipArchiveEntry) throws IOException {
        EntryMetaData entryMetaData = this.metaData.get(zipArchiveEntry);
        boolean z = hasZip64Extra(zipArchiveEntry) || zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || entryMetaData.offset >= 4294967295L || this.zip64Mode == Zip64Mode.Always;
        if (z && this.zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException("archive's size exceeds the limit of 4GByte.");
        }
        handleZip64Extra(zipArchiveEntry, entryMetaData.offset, z);
        return createCentralFileHeader(zipArchiveEntry, getName(zipArchiveEntry), entryMetaData, z);
    }

    private byte[] createCentralFileHeader(ZipArchiveEntry zipArchiveEntry, ByteBuffer byteBuffer, EntryMetaData entryMetaData, boolean z) throws IOException {
        byte[] centralDirectoryExtra = zipArchiveEntry.getCentralDirectoryExtra();
        String comment = zipArchiveEntry.getComment();
        if (comment == null) {
            comment = "";
        }
        ByteBuffer byteBufferEncode = getEntryEncoding(zipArchiveEntry).encode(comment);
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        int iLimit2 = byteBufferEncode.limit() - byteBufferEncode.position();
        int i = iLimit + 46;
        byte[] bArr = new byte[centralDirectoryExtra.length + i + iLimit2];
        System.arraycopy(CFH_SIG, 0, bArr, 0, 4);
        ZipShort.putShort((zipArchiveEntry.getPlatform() << 8) | (!this.hasUsedZip64 ? 20 : 45), bArr, 4);
        int method = zipArchiveEntry.getMethod();
        boolean zCanEncode = this.zipEncoding.canEncode(zipArchiveEntry.getName());
        ZipShort.putShort(versionNeededToExtract(method, z, entryMetaData.usesDataDescriptor), bArr, 6);
        getGeneralPurposeBits(!zCanEncode && this.fallbackToUTF8, entryMetaData.usesDataDescriptor).encode(bArr, 8);
        ZipShort.putShort(method, bArr, 10);
        ZipUtil.toDosTime(this.calendarInstance, zipArchiveEntry.getTime(), bArr, 12);
        ZipLong.putLong(zipArchiveEntry.getCrc(), bArr, 16);
        if (zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || this.zip64Mode == Zip64Mode.Always) {
            ZipLong.ZIP64_MAGIC.putLong(bArr, 20);
            ZipLong.ZIP64_MAGIC.putLong(bArr, 24);
        } else {
            ZipLong.putLong(zipArchiveEntry.getCompressedSize(), bArr, 20);
            ZipLong.putLong(zipArchiveEntry.getSize(), bArr, 24);
        }
        ZipShort.putShort(iLimit, bArr, 28);
        ZipShort.putShort(centralDirectoryExtra.length, bArr, 30);
        ZipShort.putShort(iLimit2, bArr, 32);
        System.arraycopy(ZERO, 0, bArr, 34, 2);
        ZipShort.putShort(zipArchiveEntry.getInternalAttributes(), bArr, 36);
        ZipLong.putLong(zipArchiveEntry.getExternalAttributes(), bArr, 38);
        if (entryMetaData.offset >= 4294967295L || this.zip64Mode == Zip64Mode.Always) {
            ZipLong.putLong(4294967295L, bArr, 42);
        } else {
            ZipLong.putLong(Math.min(entryMetaData.offset, 4294967295L), bArr, 42);
        }
        System.arraycopy(byteBuffer.array(), byteBuffer.arrayOffset(), bArr, 46, iLimit);
        System.arraycopy(centralDirectoryExtra, 0, bArr, i, centralDirectoryExtra.length);
        System.arraycopy(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), bArr, i + centralDirectoryExtra.length, iLimit2);
        return bArr;
    }

    private void handleZip64Extra(ZipArchiveEntry zipArchiveEntry, long j, boolean z) {
        if (z) {
            Zip64ExtendedInformationExtraField zip64Extra = getZip64Extra(zipArchiveEntry);
            if (zipArchiveEntry.getCompressedSize() >= 4294967295L || zipArchiveEntry.getSize() >= 4294967295L || this.zip64Mode == Zip64Mode.Always) {
                zip64Extra.setCompressedSize(new ZipEightByteInteger(zipArchiveEntry.getCompressedSize()));
                zip64Extra.setSize(new ZipEightByteInteger(zipArchiveEntry.getSize()));
            } else {
                zip64Extra.setCompressedSize(null);
                zip64Extra.setSize(null);
            }
            if (j >= 4294967295L || this.zip64Mode == Zip64Mode.Always) {
                zip64Extra.setRelativeHeaderOffset(new ZipEightByteInteger(j));
            }
            zipArchiveEntry.setExtra();
        }
    }

    protected void writeCentralDirectoryEnd() throws IOException {
        writeCounted(EOCD_SIG);
        writeCounted(ZERO);
        writeCounted(ZERO);
        int size = this.entries.size();
        if (size > 65535 && this.zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException("archive contains more than 65535 entries.");
        }
        if (this.cdOffset > 4294967295L && this.zip64Mode == Zip64Mode.Never) {
            throw new Zip64RequiredException("archive's size exceeds the limit of 4GByte.");
        }
        byte[] bytes = ZipShort.getBytes(Math.min(size, SupportMenu.USER_MASK));
        writeCounted(bytes);
        writeCounted(bytes);
        writeCounted(ZipLong.getBytes(Math.min(this.cdLength, 4294967295L)));
        writeCounted(ZipLong.getBytes(Math.min(this.cdOffset, 4294967295L)));
        ByteBuffer byteBufferEncode = this.zipEncoding.encode(this.comment);
        int iLimit = byteBufferEncode.limit() - byteBufferEncode.position();
        writeCounted(ZipShort.getBytes(iLimit));
        this.streamCompressor.writeCounted(byteBufferEncode.array(), byteBufferEncode.arrayOffset(), iLimit);
    }

    protected void writeZip64CentralDirectory() throws IOException {
        if (this.zip64Mode == Zip64Mode.Never) {
            return;
        }
        if (!this.hasUsedZip64 && (this.cdOffset >= 4294967295L || this.cdLength >= 4294967295L || this.entries.size() >= 65535)) {
            this.hasUsedZip64 = true;
        }
        if (this.hasUsedZip64) {
            long totalBytesWritten = this.streamCompressor.getTotalBytesWritten();
            writeOut(ZIP64_EOCD_SIG);
            writeOut(ZipEightByteInteger.getBytes(44L));
            writeOut(ZipShort.getBytes(45));
            writeOut(ZipShort.getBytes(45));
            writeOut(LZERO);
            writeOut(LZERO);
            byte[] bytes = ZipEightByteInteger.getBytes(this.entries.size());
            writeOut(bytes);
            writeOut(bytes);
            writeOut(ZipEightByteInteger.getBytes(this.cdLength));
            writeOut(ZipEightByteInteger.getBytes(this.cdOffset));
            writeOut(ZIP64_EOCD_LOC_SIG);
            writeOut(LZERO);
            writeOut(ZipEightByteInteger.getBytes(totalBytesWritten));
            writeOut(ONE);
        }
    }

    protected final void writeOut(byte[] bArr) throws IOException {
        this.streamCompressor.writeOut(bArr, 0, bArr.length);
    }

    private GeneralPurposeBit getGeneralPurposeBits(boolean z, boolean z2) {
        GeneralPurposeBit generalPurposeBit = new GeneralPurposeBit();
        generalPurposeBit.useUTF8ForNames(this.useUTF8Flag || z);
        if (z2) {
            generalPurposeBit.useDataDescriptor(true);
        }
        return generalPurposeBit;
    }

    private int versionNeededToExtract(int i, boolean z, boolean z2) {
        if (z) {
            return 45;
        }
        if (z2) {
            return 20;
        }
        return versionNeededToExtractMethod(i);
    }

    private Zip64ExtendedInformationExtraField getZip64Extra(ZipArchiveEntry zipArchiveEntry) {
        CurrentEntry currentEntry = this.entry;
        if (currentEntry != null) {
            currentEntry.causedUseOfZip64 = !this.hasUsedZip64;
        }
        this.hasUsedZip64 = true;
        Zip64ExtendedInformationExtraField zip64ExtendedInformationExtraField = (Zip64ExtendedInformationExtraField) zipArchiveEntry.getExtraField(Zip64ExtendedInformationExtraField.HEADER_ID);
        if (zip64ExtendedInformationExtraField == null) {
            zip64ExtendedInformationExtraField = new Zip64ExtendedInformationExtraField();
        }
        zipArchiveEntry.addAsFirstExtraField(zip64ExtendedInformationExtraField);
        return zip64ExtendedInformationExtraField;
    }

    private boolean hasZip64Extra(ZipArchiveEntry zipArchiveEntry) {
        return zipArchiveEntry.getExtraField(Zip64ExtendedInformationExtraField.HEADER_ID) != null;
    }

    private ZipEncoding getEntryEncoding(ZipArchiveEntry zipArchiveEntry) {
        return (this.zipEncoding.canEncode(zipArchiveEntry.getName()) || !this.fallbackToUTF8) ? this.zipEncoding : ZipEncodingHelper.UTF8_ZIP_ENCODING;
    }

    private ByteBuffer getName(ZipArchiveEntry zipArchiveEntry) throws IOException {
        return getEntryEncoding(zipArchiveEntry).encode(zipArchiveEntry.getName());
    }

    void destroy() throws IOException {
        SeekableByteChannel seekableByteChannel = this.channel;
        if (seekableByteChannel != null) {
            seekableByteChannel.close();
        }
        OutputStream outputStream = this.out;
        if (outputStream != null) {
            outputStream.close();
        }
    }

    public static final class UnicodeExtraFieldPolicy {
        public static final UnicodeExtraFieldPolicy ALWAYS = new UnicodeExtraFieldPolicy("always");
        public static final UnicodeExtraFieldPolicy NEVER = new UnicodeExtraFieldPolicy("never");
        public static final UnicodeExtraFieldPolicy NOT_ENCODEABLE = new UnicodeExtraFieldPolicy("not encodeable");
        private final String name;

        private UnicodeExtraFieldPolicy(String str) {
            this.name = str;
        }

        public String toString() {
            return this.name;
        }
    }

    private static final class CurrentEntry {
        private long bytesRead;
        private boolean causedUseOfZip64;
        private long dataStart;
        private final ZipArchiveEntry entry;
        private boolean hasWritten;
        private long localDataStart;
    }

    private static final class EntryMetaData {
        private final long offset;
        private final boolean usesDataDescriptor;
    }
}
