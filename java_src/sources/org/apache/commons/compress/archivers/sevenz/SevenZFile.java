package org.apache.commons.compress.archivers.sevenz;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.EnumSet;
import java.util.LinkedList;
import java.util.zip.CRC32;
import org.apache.commons.compress.archivers.tar.TarConstants;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes10.dex */
public class SevenZFile implements Closeable {
    static final int SIGNATURE_HEADER_SIZE = 32;
    static final byte[] sevenZSignature = {TarConstants.LF_CONTIG, 122, -68, -81, 39, com.google.common.base.c.FS};
    private final Archive archive;
    private SeekableByteChannel channel;
    private int currentEntryIndex;
    private int currentFolderIndex;
    private InputStream currentFolderInputStream;
    private final ArrayList<InputStream> deferredBlockStreams;
    private final String fileName;
    private byte[] password;

    public SevenZFile(File file, byte[] bArr) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.READ), new FileAttribute[0]), file.getAbsolutePath(), bArr, true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v11, types: [int] */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v15, types: [int] */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v19, types: [int] */
    /* JADX WARN: Type inference failed for: r10v22 */
    /* JADX WARN: Type inference failed for: r10v23, types: [int] */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v27 */
    /* JADX WARN: Type inference failed for: r10v28 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r11v26 */
    /* JADX WARN: Type inference failed for: r11v27 */
    /* JADX WARN: Type inference failed for: r11v8, types: [int] */
    /* JADX WARN: Type inference failed for: r12v10, types: [int] */
    /* JADX WARN: Type inference failed for: r12v22 */
    /* JADX WARN: Type inference failed for: r12v23 */
    /* JADX WARN: Type inference failed for: r12v8, types: [int] */
    /* JADX WARN: Type inference failed for: r12v9 */
    /* JADX WARN: Type inference failed for: r14v4, types: [java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3, types: [java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r9v11, types: [java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r9v14 */
    /* JADX WARN: Type inference failed for: r9v15 */
    /* JADX WARN: Type inference failed for: r9v2, types: [int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4, types: [int] */
    /* JADX WARN: Type inference failed for: r9v8, types: [java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r9v9, types: [java.util.BitSet] */
    private void readFilesInfo(ByteBuffer byteBuffer, Archive archive) throws IOException {
        ?? r12;
        ?? r11;
        int uint64 = (int) readUint64(byteBuffer);
        SevenZArchiveEntry[] sevenZArchiveEntryArr = new SevenZArchiveEntry[uint64];
        boolean z6 = false;
        for (int i10 = 0; i10 < uint64; i10++) {
            sevenZArchiveEntryArr[i10] = new SevenZArchiveEntry();
        }
        ?? bits = 0;
        BitSet bits2 = null;
        BitSet bits3 = null;
        while (true) {
            int unsignedByte = getUnsignedByte(byteBuffer);
            if (unsignedByte == 0) {
                boolean z10 = z6;
                boolean z11 = z10;
                int i11 = z11 ? 1 : 0;
                ?? r1 = z10;
                ?? r10 = z11;
                while (r1 < uint64) {
                    sevenZArchiveEntryArr[r1].setHasStream((bits == 0 || !bits.get(r1)) ? true : z6);
                    if (sevenZArchiveEntryArr[r1].hasStream()) {
                        sevenZArchiveEntryArr[r1].setDirectory(z6);
                        sevenZArchiveEntryArr[r1].setAntiItem(z6);
                        sevenZArchiveEntryArr[r1].setHasCrc(archive.subStreamsInfo.hasCrc.get(r10));
                        sevenZArchiveEntryArr[r1].setCrcValue(archive.subStreamsInfo.crcs[r10]);
                        sevenZArchiveEntryArr[r1].setSize(archive.subStreamsInfo.unpackSizes[r10]);
                        r10++;
                    } else {
                        sevenZArchiveEntryArr[r1].setDirectory((bits2 == null || !bits2.get(i11)) ? true : z6);
                        sevenZArchiveEntryArr[r1].setAntiItem((bits3 == null || !bits3.get(i11)) ? z6 : true);
                        sevenZArchiveEntryArr[r1].setHasCrc(z6);
                        sevenZArchiveEntryArr[r1].setSize(0L);
                        i11++;
                    }
                    r1++;
                    r10 = r10;
                }
                archive.files = sevenZArchiveEntryArr;
                calculateStreamMap(archive);
                return;
            }
            long uint65 = readUint64(byteBuffer);
            switch (unsignedByte) {
                case 14:
                    bits = readBits(byteBuffer, uint64);
                    break;
                case 15:
                    if (bits == 0) {
                        throw new IOException("Header format error: kEmptyStream must appear before kEmptyFile");
                    }
                    bits2 = readBits(byteBuffer, bits.cardinality());
                    break;
                    break;
                case 16:
                    if (bits == 0) {
                        throw new IOException("Header format error: kEmptyStream must appear before kAnti");
                    }
                    bits3 = readBits(byteBuffer, bits.cardinality());
                    break;
                    break;
                case 17:
                    if (getUnsignedByte(byteBuffer) != 0) {
                        throw new IOException("Not implemented");
                    }
                    long j6 = uint65 - 1;
                    if ((1 & j6) != 0) {
                        throw new IOException("File names length invalid");
                    }
                    int i12 = (int) j6;
                    byte[] bArr = new byte[i12];
                    byteBuffer.get(bArr);
                    boolean z12 = z6;
                    boolean z13 = z12;
                    int i13 = z13 ? 1 : 0;
                    while (r11 < i12) {
                        if (bArr[r11] == 0 && bArr[r11 + 1] == 0) {
                            r11 = z12;
                            r12 = z13;
                            int i14 = (i13 == true ? 1 : 0) + 1;
                            sevenZArchiveEntryArr[i13 == true ? 1 : 0].setName(new String(bArr, (int) r12, r11 - r12, "UTF-16LE"));
                            r12 = r11 + 2;
                            i13 = i14;
                        } else {
                            r11 = z12;
                            r12 = z13;
                        }
                        r11 += 2;
                        r12 = r12;
                    }
                    if (r12 != i12) {
                        r11 = z12;
                        r12 = z13;
                    } else if (i13 == uint64) {
                        break;
                    }
                    throw new IOException("Error parsing file names");
                case 18:
                    ?? allOrBits = readAllOrBits(byteBuffer, uint64);
                    if (getUnsignedByte(byteBuffer) != 0) {
                        throw new IOException("Unimplemented");
                    }
                    for (?? r13 = z6; r13 < uint64; r13++) {
                        sevenZArchiveEntryArr[r13].setHasCreationDate(allOrBits.get(r13));
                        if (sevenZArchiveEntryArr[r13].getHasCreationDate()) {
                            sevenZArchiveEntryArr[r13].setCreationDate(byteBuffer.getLong());
                        }
                    }
                    break;
                    break;
                case 19:
                    ?? allOrBits2 = readAllOrBits(byteBuffer, uint64);
                    if (getUnsignedByte(byteBuffer) != 0) {
                        throw new IOException("Unimplemented");
                    }
                    for (?? r14 = z6; r14 < uint64; r14++) {
                        sevenZArchiveEntryArr[r14].setHasAccessDate(allOrBits2.get(r14));
                        if (sevenZArchiveEntryArr[r14].getHasAccessDate()) {
                            sevenZArchiveEntryArr[r14].setAccessDate(byteBuffer.getLong());
                        }
                    }
                    break;
                    break;
                case 20:
                    ?? allOrBits3 = readAllOrBits(byteBuffer, uint64);
                    if (getUnsignedByte(byteBuffer) != 0) {
                        throw new IOException("Unimplemented");
                    }
                    for (?? r15 = z6; r15 < uint64; r15++) {
                        sevenZArchiveEntryArr[r15].setHasLastModifiedDate(allOrBits3.get(r15));
                        if (sevenZArchiveEntryArr[r15].getHasLastModifiedDate()) {
                            sevenZArchiveEntryArr[r15].setLastModifiedDate(byteBuffer.getLong());
                        }
                    }
                    break;
                    break;
                case 21:
                    ?? allOrBits4 = readAllOrBits(byteBuffer, uint64);
                    if (getUnsignedByte(byteBuffer) != 0) {
                        throw new IOException("Unimplemented");
                    }
                    for (?? r16 = z6; r16 < uint64; r16++) {
                        sevenZArchiveEntryArr[r16].setHasWindowsAttributes(allOrBits4.get(r16));
                        if (sevenZArchiveEntryArr[r16].getHasWindowsAttributes()) {
                            sevenZArchiveEntryArr[r16].setWindowsAttributes(byteBuffer.getInt());
                        }
                    }
                    break;
                    break;
                case 22:
                case 23:
                default:
                    if (skipBytesFully(byteBuffer, uint65) < uint65) {
                        throw new IOException("Incomplete property of type " + unsignedByte);
                    }
                    break;
                    break;
                case 24:
                    throw new IOException("kStartPos is unsupported, please report");
                case 25:
                    if (skipBytesFully(byteBuffer, uint65) < uint65) {
                        throw new IOException("Incomplete kDummy property");
                    }
                    break;
                    break;
            }
            z6 = false;
            bits = bits;
        }
    }

    public int read() throws IOException {
        return getCurrentStream().read();
    }

    private InputStream buildDecoderStack(Folder folder, long j6, int i10, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        this.channel.position(j6);
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new BoundedSeekableByteChannelInputStream(this.channel, this.archive.packSizes[i10]));
        LinkedList linkedList = new LinkedList();
        InputStream inputStreamAddDecoder = bufferedInputStream;
        for (Coder coder : folder.getOrderedCoders()) {
            if (coder.numInStreams != 1 || coder.numOutStreams != 1) {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
            SevenZMethod sevenZMethodById = SevenZMethod.byId(coder.decompressionMethodId);
            inputStreamAddDecoder = Coders.addDecoder(this.fileName, inputStreamAddDecoder, folder.getUnpackSizeForCoder(coder), coder, this.password);
            linkedList.addFirst(new SevenZMethodConfiguration(sevenZMethodById, Coders.findByMethod(sevenZMethodById).getOptionsFromCoder(coder, inputStreamAddDecoder)));
        }
        sevenZArchiveEntry.setContentMethods(linkedList);
        return folder.hasCrc ? new CRC32VerifyingInputStream(inputStreamAddDecoder, folder.getUnpackSize(), folder.crc) : inputStreamAddDecoder;
    }

    private void buildDecodingStream() throws IOException {
        Archive archive = this.archive;
        int[] iArr = archive.streamMap.fileFolderIndex;
        int i10 = this.currentEntryIndex;
        int i11 = iArr[i10];
        if (i11 < 0) {
            this.deferredBlockStreams.clear();
            return;
        }
        SevenZArchiveEntry[] sevenZArchiveEntryArr = archive.files;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i10];
        if (this.currentFolderIndex == i11) {
            sevenZArchiveEntry.setContentMethods(sevenZArchiveEntryArr[i10 - 1].getContentMethods());
        } else {
            this.currentFolderIndex = i11;
            this.deferredBlockStreams.clear();
            InputStream inputStream = this.currentFolderInputStream;
            if (inputStream != null) {
                inputStream.close();
                this.currentFolderInputStream = null;
            }
            Archive archive2 = this.archive;
            Folder folder = archive2.folders[i11];
            StreamMap streamMap = archive2.streamMap;
            int i12 = streamMap.folderFirstPackStreamIndex[i11];
            this.currentFolderInputStream = buildDecoderStack(folder, streamMap.packStreamOffsets[i12] + archive2.packPos + 32, i12, sevenZArchiveEntry);
        }
        InputStream boundedInputStream = new BoundedInputStream(this.currentFolderInputStream, sevenZArchiveEntry.getSize());
        if (sevenZArchiveEntry.getHasCrc()) {
            boundedInputStream = new CRC32VerifyingInputStream(boundedInputStream, sevenZArchiveEntry.getSize(), sevenZArchiveEntry.getCrcValue());
        }
        this.deferredBlockStreams.add(boundedInputStream);
    }

    private void calculateStreamMap(Archive archive) throws IOException {
        Folder[] folderArr;
        StreamMap streamMap = new StreamMap();
        Folder[] folderArr2 = archive.folders;
        int length = folderArr2 != null ? folderArr2.length : 0;
        streamMap.folderFirstPackStreamIndex = new int[length];
        int length2 = 0;
        for (int i10 = 0; i10 < length; i10++) {
            streamMap.folderFirstPackStreamIndex[i10] = length2;
            length2 += archive.folders[i10].packedStreams.length;
        }
        long[] jArr = archive.packSizes;
        int length3 = jArr != null ? jArr.length : 0;
        streamMap.packStreamOffsets = new long[length3];
        long j6 = 0;
        for (int i11 = 0; i11 < length3; i11++) {
            streamMap.packStreamOffsets[i11] = j6;
            j6 += archive.packSizes[i11];
        }
        streamMap.folderFirstFileIndex = new int[length];
        streamMap.fileFolderIndex = new int[archive.files.length];
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            SevenZArchiveEntry[] sevenZArchiveEntryArr = archive.files;
            if (i12 >= sevenZArchiveEntryArr.length) {
                archive.streamMap = streamMap;
                return;
            }
            if (sevenZArchiveEntryArr[i12].hasStream() || i13 != 0) {
                if (i13 == 0) {
                    while (true) {
                        folderArr = archive.folders;
                        if (i14 >= folderArr.length) {
                            break;
                        }
                        streamMap.folderFirstFileIndex[i14] = i12;
                        if (folderArr[i14].numUnpackSubStreams > 0) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                    if (i14 >= folderArr.length) {
                        throw new IOException("Too few folders in archive");
                    }
                }
                streamMap.fileFolderIndex[i12] = i14;
                if (archive.files[i12].hasStream() && (i13 = i13 + 1) >= archive.folders[i14].numUnpackSubStreams) {
                    i14++;
                    i13 = 0;
                }
            } else {
                streamMap.fileFolderIndex[i12] = -1;
            }
            i12++;
        }
    }

    private InputStream getCurrentStream() throws IOException {
        if (this.archive.files[this.currentEntryIndex].getSize() == 0) {
            return new ByteArrayInputStream(new byte[0]);
        }
        if (this.deferredBlockStreams.isEmpty()) {
            throw new IllegalStateException("No current 7z entry (call getNextEntry() first).");
        }
        while (this.deferredBlockStreams.size() > 1) {
            InputStream inputStreamRemove = this.deferredBlockStreams.remove(0);
            try {
                IOUtils.skip(inputStreamRemove, Long.MAX_VALUE);
                if (inputStreamRemove != null) {
                    inputStreamRemove.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (inputStreamRemove != null) {
                        try {
                            inputStreamRemove.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        return this.deferredBlockStreams.get(0);
    }

    public static boolean matches(byte[] bArr, int i10) {
        if (i10 < sevenZSignature.length) {
            return false;
        }
        int i11 = 0;
        while (true) {
            byte[] bArr2 = sevenZSignature;
            if (i11 >= bArr2.length) {
                return true;
            }
            if (bArr[i11] != bArr2[i11]) {
                return false;
            }
            i11++;
        }
    }

    private BitSet readBits(ByteBuffer byteBuffer, int i10) throws IOException {
        BitSet bitSet = new BitSet(i10);
        int i11 = 0;
        int unsignedByte = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            if (i11 == 0) {
                unsignedByte = getUnsignedByte(byteBuffer);
                i11 = 128;
            }
            bitSet.set(i12, (unsignedByte & i11) != 0);
            i11 >>>= 1;
        }
        return bitSet;
    }

    private Folder readFolder(ByteBuffer byteBuffer) throws IOException {
        int i10;
        Folder folder = new Folder();
        int uint64 = (int) readUint64(byteBuffer);
        Coder[] coderArr = new Coder[uint64];
        long j6 = 0;
        long j10 = 0;
        for (int i11 = 0; i11 < uint64; i11++) {
            coderArr[i11] = new Coder();
            int unsignedByte = getUnsignedByte(byteBuffer);
            int i12 = unsignedByte & 15;
            boolean z6 = (unsignedByte & 16) == 0;
            boolean z10 = (unsignedByte & 32) != 0;
            boolean z11 = (unsignedByte & 128) != 0;
            byte[] bArr = new byte[i12];
            coderArr[i11].decompressionMethodId = bArr;
            byteBuffer.get(bArr);
            if (z6) {
                Coder coder = coderArr[i11];
                coder.numInStreams = 1L;
                coder.numOutStreams = 1L;
            } else {
                coderArr[i11].numInStreams = readUint64(byteBuffer);
                coderArr[i11].numOutStreams = readUint64(byteBuffer);
            }
            Coder coder2 = coderArr[i11];
            j6 += coder2.numInStreams;
            j10 += coder2.numOutStreams;
            if (z10) {
                byte[] bArr2 = new byte[(int) readUint64(byteBuffer)];
                coderArr[i11].properties = bArr2;
                byteBuffer.get(bArr2);
            }
            if (z11) {
                throw new IOException("Alternative methods are unsupported, please report. The reference implementation doesn't support them either.");
            }
        }
        folder.coders = coderArr;
        folder.totalInputStreams = j6;
        folder.totalOutputStreams = j10;
        if (j10 == 0) {
            throw new IOException("Total output streams can't be 0");
        }
        long j11 = j10 - 1;
        int i13 = (int) j11;
        BindPair[] bindPairArr = new BindPair[i13];
        for (int i14 = 0; i14 < i13; i14++) {
            BindPair bindPair = new BindPair();
            bindPairArr[i14] = bindPair;
            bindPair.inIndex = readUint64(byteBuffer);
            bindPairArr[i14].outIndex = readUint64(byteBuffer);
        }
        folder.bindPairs = bindPairArr;
        if (j6 < j11) {
            throw new IOException("Total input streams can't be less than the number of bind pairs");
        }
        long j12 = j6 - j11;
        int i15 = (int) j12;
        long[] jArr = new long[i15];
        if (j12 == 1) {
            int i16 = 0;
            while (true) {
                i10 = (int) j6;
                if (i16 >= i10 || folder.findBindPairForInStream(i16) < 0) {
                    break;
                }
                i16++;
            }
            if (i16 == i10) {
                throw new IOException("Couldn't find stream's bind pair index");
            }
            jArr[0] = i16;
        } else {
            for (int i17 = 0; i17 < i15; i17++) {
                jArr[i17] = readUint64(byteBuffer);
            }
        }
        folder.packedStreams = jArr;
        return folder;
    }

    private Archive readHeaders(byte[] bArr) throws IOException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
        ByteBuffer byteBufferOrder = byteBufferAllocate.order(byteOrder);
        readFully(byteBufferOrder);
        byte[] bArr2 = new byte[6];
        byteBufferOrder.get(bArr2);
        if (!Arrays.equals(bArr2, sevenZSignature)) {
            throw new IOException("Bad 7z signature");
        }
        byte b7 = byteBufferOrder.get();
        byte b10 = byteBufferOrder.get();
        if (b7 != 0) {
            throw new IOException(String.format("Unsupported 7z version (%d,%d)", Byte.valueOf(b7), Byte.valueOf(b10)));
        }
        StartHeader startHeader = readStartHeader(((long) byteBufferOrder.getInt()) & 4294967295L);
        long j6 = startHeader.nextHeaderSize;
        int i10 = (int) j6;
        if (i10 != j6) {
            throw new IOException("cannot handle nextHeaderSize " + startHeader.nextHeaderSize);
        }
        this.channel.position(startHeader.nextHeaderOffset + 32);
        ByteBuffer byteBufferOrder2 = ByteBuffer.allocate(i10).order(byteOrder);
        readFully(byteBufferOrder2);
        CRC32 crc32 = new CRC32();
        crc32.update(byteBufferOrder2.array());
        if (startHeader.nextHeaderCrc != crc32.getValue()) {
            throw new IOException("NextHeader CRC mismatch");
        }
        Archive archive = new Archive();
        int unsignedByte = getUnsignedByte(byteBufferOrder2);
        if (unsignedByte == 23) {
            byteBufferOrder2 = readEncodedHeader(byteBufferOrder2, archive, bArr);
            archive = new Archive();
            unsignedByte = getUnsignedByte(byteBufferOrder2);
        }
        if (unsignedByte != 1) {
            throw new IOException("Broken or unsupported archive: no Header");
        }
        readHeader(byteBufferOrder2, archive);
        return archive;
    }

    private StartHeader readStartHeader(long j6) throws IOException {
        StartHeader startHeader = new StartHeader();
        DataInputStream dataInputStream = new DataInputStream(new CRC32VerifyingInputStream(new BoundedSeekableByteChannelInputStream(this.channel, 20L), 20L, j6));
        try {
            startHeader.nextHeaderOffset = Long.reverseBytes(dataInputStream.readLong());
            startHeader.nextHeaderSize = Long.reverseBytes(dataInputStream.readLong());
            startHeader.nextHeaderCrc = ((long) Integer.reverseBytes(dataInputStream.readInt())) & 4294967295L;
            dataInputStream.close();
            return startHeader;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void readSubStreamsInfo(ByteBuffer byteBuffer, Archive archive) throws IOException {
        boolean z6;
        Folder[] folderArr = archive.folders;
        int length = folderArr.length;
        int i10 = 0;
        while (true) {
            z6 = true;
            if (i10 >= length) {
                break;
            }
            folderArr[i10].numUnpackSubStreams = 1;
            i10++;
        }
        int length2 = archive.folders.length;
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 13) {
            int i11 = 0;
            for (Folder folder : archive.folders) {
                long uint64 = readUint64(byteBuffer);
                folder.numUnpackSubStreams = (int) uint64;
                i11 = (int) (((long) i11) + uint64);
            }
            unsignedByte = getUnsignedByte(byteBuffer);
            length2 = i11;
        }
        SubStreamsInfo subStreamsInfo = new SubStreamsInfo();
        subStreamsInfo.unpackSizes = new long[length2];
        subStreamsInfo.hasCrc = new BitSet(length2);
        subStreamsInfo.crcs = new long[length2];
        int i12 = 0;
        for (Folder folder2 : archive.folders) {
            if (folder2.numUnpackSubStreams != 0) {
                long j6 = 0;
                if (unsignedByte == 9) {
                    int i13 = 0;
                    while (i13 < folder2.numUnpackSubStreams - 1) {
                        long uint65 = readUint64(byteBuffer);
                        subStreamsInfo.unpackSizes[i12] = uint65;
                        j6 += uint65;
                        i13++;
                        i12++;
                    }
                }
                subStreamsInfo.unpackSizes[i12] = folder2.getUnpackSize() - j6;
                i12++;
            }
        }
        if (unsignedByte == 9) {
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        int i14 = 0;
        for (Folder folder3 : archive.folders) {
            int i15 = folder3.numUnpackSubStreams;
            if (i15 != 1 || !folder3.hasCrc) {
                i14 += i15;
            }
        }
        if (unsignedByte == 10) {
            BitSet allOrBits = readAllOrBits(byteBuffer, i14);
            long[] jArr = new long[i14];
            for (int i16 = 0; i16 < i14; i16++) {
                if (allOrBits.get(i16)) {
                    jArr[i16] = ((long) byteBuffer.getInt()) & 4294967295L;
                }
            }
            Folder[] folderArr2 = archive.folders;
            int length3 = folderArr2.length;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            while (i17 < length3) {
                Folder folder4 = folderArr2[i17];
                if (folder4.numUnpackSubStreams == z6 && folder4.hasCrc) {
                    subStreamsInfo.hasCrc.set(i18, z6);
                    subStreamsInfo.crcs[i18] = folder4.crc;
                    i18++;
                } else {
                    for (int i20 = 0; i20 < folder4.numUnpackSubStreams; i20++) {
                        subStreamsInfo.hasCrc.set(i18, allOrBits.get(i19));
                        subStreamsInfo.crcs[i18] = jArr[i19];
                        i18++;
                        i19++;
                    }
                }
                i17++;
                z6 = true;
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte != 0) {
            throw new IOException("Badly terminated SubStreamsInfo");
        }
        archive.subStreamsInfo = subStreamsInfo;
    }

    private static long skipBytesFully(ByteBuffer byteBuffer, long j6) throws IOException {
        if (j6 < 1) {
            return 0L;
        }
        int iPosition = byteBuffer.position();
        long jRemaining = byteBuffer.remaining();
        if (jRemaining < j6) {
            j6 = jRemaining;
        }
        byteBuffer.position(iPosition + ((int) j6));
        return j6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        SeekableByteChannel seekableByteChannel = this.channel;
        if (seekableByteChannel != null) {
            try {
                seekableByteChannel.close();
            } finally {
                this.channel = null;
                byte[] bArr = this.password;
                if (bArr != null) {
                    Arrays.fill(bArr, (byte) 0);
                }
                this.password = null;
            }
        }
    }

    public Iterable<SevenZArchiveEntry> getEntries() {
        return Arrays.asList(this.archive.files);
    }

    public SevenZArchiveEntry getNextEntry() throws IOException {
        int i10 = this.currentEntryIndex;
        SevenZArchiveEntry[] sevenZArchiveEntryArr = this.archive.files;
        if (i10 >= sevenZArchiveEntryArr.length - 1) {
            return null;
        }
        int i11 = i10 + 1;
        this.currentEntryIndex = i11;
        SevenZArchiveEntry sevenZArchiveEntry = sevenZArchiveEntryArr[i11];
        buildDecodingStream();
        return sevenZArchiveEntry;
    }

    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    public String toString() {
        return this.archive.toString();
    }

    private static int getUnsignedByte(ByteBuffer byteBuffer) {
        return byteBuffer.get() & 255;
    }

    private BitSet readAllOrBits(ByteBuffer byteBuffer, int i10) throws IOException {
        if (getUnsignedByte(byteBuffer) != 0) {
            BitSet bitSet = new BitSet(i10);
            for (int i11 = 0; i11 < i10; i11++) {
                bitSet.set(i11, true);
            }
            return bitSet;
        }
        return readBits(byteBuffer, i10);
    }

    private void readArchiveProperties(ByteBuffer byteBuffer) throws IOException {
        int unsignedByte = getUnsignedByte(byteBuffer);
        while (unsignedByte != 0) {
            byteBuffer.get(new byte[(int) readUint64(byteBuffer)]);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
    }

    private ByteBuffer readEncodedHeader(ByteBuffer byteBuffer, Archive archive, byte[] bArr) throws IOException {
        readStreamsInfo(byteBuffer, archive);
        Folder folder = archive.folders[0];
        this.channel.position(archive.packPos + 32);
        BoundedSeekableByteChannelInputStream boundedSeekableByteChannelInputStream = new BoundedSeekableByteChannelInputStream(this.channel, archive.packSizes[0]);
        InputStream cRC32VerifyingInputStream = boundedSeekableByteChannelInputStream;
        for (Coder coder : folder.getOrderedCoders()) {
            if (coder.numInStreams == 1 && coder.numOutStreams == 1) {
                cRC32VerifyingInputStream = Coders.addDecoder(this.fileName, cRC32VerifyingInputStream, folder.getUnpackSizeForCoder(coder), coder, bArr);
            } else {
                throw new IOException("Multi input/output stream coders are not yet supported");
            }
        }
        if (folder.hasCrc) {
            cRC32VerifyingInputStream = new CRC32VerifyingInputStream(cRC32VerifyingInputStream, folder.getUnpackSize(), folder.crc);
        }
        byte[] bArr2 = new byte[(int) folder.getUnpackSize()];
        DataInputStream dataInputStream = new DataInputStream(cRC32VerifyingInputStream);
        try {
            dataInputStream.readFully(bArr2);
            dataInputStream.close();
            return ByteBuffer.wrap(bArr2).order(ByteOrder.LITTLE_ENDIAN);
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    dataInputStream.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    private void readFully(ByteBuffer byteBuffer) throws IOException {
        byteBuffer.rewind();
        IOUtils.readFully(this.channel, byteBuffer);
        byteBuffer.flip();
    }

    private void readHeader(ByteBuffer byteBuffer, Archive archive) throws IOException {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 2) {
            readArchiveProperties(byteBuffer);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte != 3) {
            if (unsignedByte == 4) {
                readStreamsInfo(byteBuffer, archive);
                unsignedByte = getUnsignedByte(byteBuffer);
            }
            if (unsignedByte == 5) {
                readFilesInfo(byteBuffer, archive);
                unsignedByte = getUnsignedByte(byteBuffer);
            }
            if (unsignedByte == 0) {
                return;
            }
            throw new IOException("Badly terminated header, found " + unsignedByte);
        }
        throw new IOException("Additional streams unsupported");
    }

    private void readPackInfo(ByteBuffer byteBuffer, Archive archive) throws IOException {
        archive.packPos = readUint64(byteBuffer);
        long uint64 = readUint64(byteBuffer);
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 9) {
            archive.packSizes = new long[(int) uint64];
            int i10 = 0;
            while (true) {
                long[] jArr = archive.packSizes;
                if (i10 >= jArr.length) {
                    break;
                }
                jArr[i10] = readUint64(byteBuffer);
                i10++;
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 10) {
            int i11 = (int) uint64;
            archive.packCrcsDefined = readAllOrBits(byteBuffer, i11);
            archive.packCrcs = new long[i11];
            for (int i12 = 0; i12 < i11; i12++) {
                if (archive.packCrcsDefined.get(i12)) {
                    archive.packCrcs[i12] = ((long) byteBuffer.getInt()) & 4294967295L;
                }
            }
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 0) {
            return;
        }
        throw new IOException("Badly terminated PackInfo (" + unsignedByte + ")");
    }

    private void readStreamsInfo(ByteBuffer byteBuffer, Archive archive) throws IOException {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 6) {
            readPackInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 7) {
            readUnpackInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        } else {
            archive.folders = new Folder[0];
        }
        if (unsignedByte == 8) {
            readSubStreamsInfo(byteBuffer, archive);
            unsignedByte = getUnsignedByte(byteBuffer);
        }
        if (unsignedByte == 0) {
        } else {
            throw new IOException("Badly terminated StreamsInfo");
        }
    }

    private static long readUint64(ByteBuffer byteBuffer) throws IOException {
        long unsignedByte = getUnsignedByte(byteBuffer);
        int i10 = 128;
        long unsignedByte2 = 0;
        for (int i11 = 0; i11 < 8; i11++) {
            if ((((long) i10) & unsignedByte) == 0) {
                return ((unsignedByte & ((long) (i10 - 1))) << (i11 * 8)) | unsignedByte2;
            }
            unsignedByte2 |= ((long) getUnsignedByte(byteBuffer)) << (i11 * 8);
            i10 >>>= 1;
        }
        return unsignedByte2;
    }

    private void readUnpackInfo(ByteBuffer byteBuffer, Archive archive) throws IOException {
        int unsignedByte = getUnsignedByte(byteBuffer);
        if (unsignedByte == 11) {
            int uint64 = (int) readUint64(byteBuffer);
            Folder[] folderArr = new Folder[uint64];
            archive.folders = folderArr;
            if (getUnsignedByte(byteBuffer) == 0) {
                for (int i10 = 0; i10 < uint64; i10++) {
                    folderArr[i10] = readFolder(byteBuffer);
                }
                int unsignedByte2 = getUnsignedByte(byteBuffer);
                if (unsignedByte2 == 12) {
                    for (int i11 = 0; i11 < uint64; i11++) {
                        Folder folder = folderArr[i11];
                        folder.unpackSizes = new long[(int) folder.totalOutputStreams];
                        for (int i12 = 0; i12 < folder.totalOutputStreams; i12++) {
                            folder.unpackSizes[i12] = readUint64(byteBuffer);
                        }
                    }
                    int unsignedByte3 = getUnsignedByte(byteBuffer);
                    if (unsignedByte3 == 10) {
                        BitSet allOrBits = readAllOrBits(byteBuffer, uint64);
                        for (int i13 = 0; i13 < uint64; i13++) {
                            if (allOrBits.get(i13)) {
                                Folder folder2 = folderArr[i13];
                                folder2.hasCrc = true;
                                folder2.crc = ((long) byteBuffer.getInt()) & 4294967295L;
                            } else {
                                folderArr[i13].hasCrc = false;
                            }
                        }
                        unsignedByte3 = getUnsignedByte(byteBuffer);
                    }
                    if (unsignedByte3 == 0) {
                        return;
                    } else {
                        throw new IOException("Badly terminated UnpackInfo");
                    }
                }
                throw new IOException("Expected kCodersUnpackSize, got " + unsignedByte2);
            }
            throw new IOException("External unsupported");
        }
        throw new IOException("Expected kFolder, got " + unsignedByte);
    }

    public int read(byte[] bArr, int i10, int i11) throws IOException {
        return getCurrentStream().read(bArr, i10, i11);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this(seekableByteChannel, "unknown archive", null);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, byte[] bArr) throws IOException {
        this(seekableByteChannel, "unknown archive", bArr);
    }

    public SevenZFile(SeekableByteChannel seekableByteChannel, String str, byte[] bArr) throws IOException {
        this(seekableByteChannel, str, bArr, false);
    }

    private SevenZFile(SeekableByteChannel seekableByteChannel, String str, byte[] bArr, boolean z6) throws IOException {
        this.currentEntryIndex = -1;
        this.currentFolderIndex = -1;
        this.currentFolderInputStream = null;
        this.deferredBlockStreams = new ArrayList<>();
        this.channel = seekableByteChannel;
        this.fileName = str;
        try {
            this.archive = readHeaders(bArr);
            if (bArr == null) {
                this.password = null;
                return;
            }
            byte[] bArr2 = new byte[bArr.length];
            this.password = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        } catch (Throwable th) {
            if (z6) {
                this.channel.close();
            }
            throw th;
        }
    }

    public SevenZFile(File file) throws IOException {
        this(file, (byte[]) null);
    }
}
