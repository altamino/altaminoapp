package org.apache.commons.compress.archivers.sevenz;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.channels.SeekableByteChannel;
import java.nio.file.Files;
import java.nio.file.StandardOpenOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Date;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.zip.CRC32;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.utils.CountingOutputStream;

/* JADX INFO: loaded from: classes7.dex */
public class SevenZOutputFile implements Closeable {
    private CountingOutputStream[] additionalCountingStreams;
    private final Map<SevenZArchiveEntry, long[]> additionalSizes;
    private final SeekableByteChannel channel;
    private final CRC32 compressedCrc32;
    private Iterable<? extends SevenZMethodConfiguration> contentMethods;
    private final CRC32 crc32;
    private CountingOutputStream currentOutputStream;
    private long fileBytesWritten;
    private final List<SevenZArchiveEntry> files;
    private boolean finished;
    private int numNonEmptyStreams;

    public SevenZOutputFile(File file) throws IOException {
        this(Files.newByteChannel(file.toPath(), EnumSet.of(StandardOpenOption.CREATE, StandardOpenOption.WRITE, StandardOpenOption.TRUNCATE_EXISTING), new FileAttribute[0]));
    }

    private void writeBits(DataOutput dataOutput, BitSet bitSet, int i10) throws IOException {
        int i11 = 0;
        int i12 = 7;
        for (int i13 = 0; i13 < i10; i13++) {
            i11 |= (bitSet.get(i13) ? 1 : 0) << i12;
            i12--;
            if (i12 < 0) {
                dataOutput.write(i11);
                i11 = 0;
                i12 = 7;
            }
        }
        if (i12 != 7) {
            dataOutput.write(i11);
        }
    }

    private void writeFilesInfo(DataOutput dataOutput) throws IOException {
        dataOutput.write(5);
        writeUint64(dataOutput, this.files.size());
        writeFileEmptyStreams(dataOutput);
        writeFileEmptyFiles(dataOutput);
        writeFileAntiItems(dataOutput);
        writeFileNames(dataOutput);
        writeFileCTimes(dataOutput);
        writeFileATimes(dataOutput);
        writeFileMTimes(dataOutput);
        writeFileWindowsAttributes(dataOutput);
        dataOutput.write(0);
    }

    private void writeHeader(DataOutput dataOutput) throws IOException {
        dataOutput.write(1);
        dataOutput.write(4);
        writeStreamsInfo(dataOutput);
        writeFilesInfo(dataOutput);
        dataOutput.write(0);
    }

    private void writePackInfo(DataOutput dataOutput) throws IOException {
        dataOutput.write(6);
        writeUint64(dataOutput, 0L);
        writeUint64(dataOutput, ((long) this.numNonEmptyStreams) & 4294967295L);
        dataOutput.write(9);
        for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
            if (sevenZArchiveEntry.hasStream()) {
                writeUint64(dataOutput, sevenZArchiveEntry.getCompressedSize());
            }
        }
        dataOutput.write(10);
        dataOutput.write(1);
        for (SevenZArchiveEntry sevenZArchiveEntry2 : this.files) {
            if (sevenZArchiveEntry2.hasStream()) {
                dataOutput.writeInt(Integer.reverseBytes((int) sevenZArchiveEntry2.getCompressedCrcValue()));
            }
        }
        dataOutput.write(0);
    }

    private void writeUint64(DataOutput dataOutput, long j6) throws IOException {
        int i10 = 0;
        int i11 = 128;
        int i12 = 0;
        while (i10 < 8) {
            int i13 = i10 + 1;
            if (j6 < (1 << (i13 * 7))) {
                i12 = (int) (((long) i12) | (j6 >>> (i10 * 8)));
                break;
            } else {
                i12 |= i11;
                i11 >>>= 1;
                i10 = i13;
            }
        }
        dataOutput.write(i12);
        while (i10 > 0) {
            dataOutput.write((int) (255 & j6));
            j6 >>>= 8;
            i10--;
        }
    }

    private void writeUnpackInfo(DataOutput dataOutput) throws IOException {
        dataOutput.write(7);
        dataOutput.write(11);
        writeUint64(dataOutput, this.numNonEmptyStreams);
        dataOutput.write(0);
        for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
            if (sevenZArchiveEntry.hasStream()) {
                writeFolder(dataOutput, sevenZArchiveEntry);
            }
        }
        dataOutput.write(12);
        for (SevenZArchiveEntry sevenZArchiveEntry2 : this.files) {
            if (sevenZArchiveEntry2.hasStream()) {
                long[] jArr = this.additionalSizes.get(sevenZArchiveEntry2);
                if (jArr != null) {
                    for (long j6 : jArr) {
                        writeUint64(dataOutput, j6);
                    }
                }
                writeUint64(dataOutput, sevenZArchiveEntry2.getSize());
            }
        }
        dataOutput.write(10);
        dataOutput.write(1);
        for (SevenZArchiveEntry sevenZArchiveEntry3 : this.files) {
            if (sevenZArchiveEntry3.hasStream()) {
                dataOutput.writeInt(Integer.reverseBytes((int) sevenZArchiveEntry3.getCrcValue()));
            }
        }
        dataOutput.write(0);
    }

    public void write(int i10) throws IOException {
        getCurrentOutputStream().write(i10);
    }

    static /* synthetic */ long access$408(SevenZOutputFile sevenZOutputFile) {
        long j6 = sevenZOutputFile.fileBytesWritten;
        sevenZOutputFile.fileBytesWritten = 1 + j6;
        return j6;
    }

    private OutputStream getCurrentOutputStream() throws IOException {
        if (this.currentOutputStream == null) {
            this.currentOutputStream = setupFileOutputStream();
        }
        return this.currentOutputStream;
    }

    private static <T> Iterable<T> reverse(Iterable<T> iterable) {
        LinkedList linkedList = new LinkedList();
        Iterator<T> it = iterable.iterator();
        while (it.hasNext()) {
            linkedList.addFirst(it.next());
        }
        return linkedList;
    }

    private CountingOutputStream setupFileOutputStream() throws IOException {
        if (this.files.isEmpty()) {
            throw new IllegalStateException("No current 7z entry");
        }
        OutputStream outputStreamWrapper = new OutputStreamWrapper();
        ArrayList arrayList = new ArrayList();
        List<SevenZArchiveEntry> list = this.files;
        boolean z6 = true;
        for (SevenZMethodConfiguration sevenZMethodConfiguration : getContentMethods(list.get(list.size() - 1))) {
            if (!z6) {
                CountingOutputStream countingOutputStream = new CountingOutputStream(outputStreamWrapper);
                arrayList.add(countingOutputStream);
                outputStreamWrapper = countingOutputStream;
            }
            outputStreamWrapper = Coders.addEncoder(outputStreamWrapper, sevenZMethodConfiguration.getMethod(), sevenZMethodConfiguration.getOptions());
            z6 = false;
        }
        if (!arrayList.isEmpty()) {
            this.additionalCountingStreams = (CountingOutputStream[]) arrayList.toArray(new CountingOutputStream[arrayList.size()]);
        }
        return new CountingOutputStream(outputStreamWrapper) { // from class: org.apache.commons.compress.archivers.sevenz.SevenZOutputFile.1
            @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i10) throws IOException {
                super.write(i10);
                SevenZOutputFile.this.crc32.update(i10);
            }

            @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr) throws IOException {
                super.write(bArr);
                SevenZOutputFile.this.crc32.update(bArr);
            }

            @Override // org.apache.commons.compress.utils.CountingOutputStream, java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i10, int i11) throws IOException {
                super.write(bArr, i10, i11);
                SevenZOutputFile.this.crc32.update(bArr, i10, i11);
            }
        };
    }

    private void writeFileATimes(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getHasAccessDate()) {
                i10++;
            }
        }
        if (i10 > 0) {
            dataOutput.write(19);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i10 != this.files.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.files.size());
                for (int i11 = 0; i11 < this.files.size(); i11++) {
                    bitSet.set(i11, this.files.get(i11).getHasAccessDate());
                }
                writeBits(dataOutputStream, bitSet, this.files.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
                if (sevenZArchiveEntry.getHasAccessDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getAccessDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFileAntiItems(DataOutput dataOutput) throws IOException {
        boolean z6 = false;
        BitSet bitSet = new BitSet(0);
        int i10 = 0;
        for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
            if (!sevenZArchiveEntry.hasStream()) {
                boolean zIsAntiItem = sevenZArchiveEntry.isAntiItem();
                bitSet.set(i10, zIsAntiItem);
                z6 |= zIsAntiItem;
                i10++;
            }
        }
        if (z6) {
            dataOutput.write(16);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            writeBits(dataOutputStream, bitSet, i10);
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFileCTimes(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getHasCreationDate()) {
                i10++;
            }
        }
        if (i10 > 0) {
            dataOutput.write(18);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i10 != this.files.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.files.size());
                for (int i11 = 0; i11 < this.files.size(); i11++) {
                    bitSet.set(i11, this.files.get(i11).getHasCreationDate());
                }
                writeBits(dataOutputStream, bitSet, this.files.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
                if (sevenZArchiveEntry.getHasCreationDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getCreationDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFileEmptyFiles(DataOutput dataOutput) throws IOException {
        boolean z6 = false;
        BitSet bitSet = new BitSet(0);
        int i10 = 0;
        for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
            if (!sevenZArchiveEntry.hasStream()) {
                boolean zIsDirectory = sevenZArchiveEntry.isDirectory();
                bitSet.set(i10, !zIsDirectory);
                z6 |= !zIsDirectory;
                i10++;
            }
        }
        if (z6) {
            dataOutput.write(15);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            writeBits(dataOutputStream, bitSet, i10);
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFileEmptyStreams(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        while (it.hasNext()) {
            if (!it.next().hasStream()) {
                dataOutput.write(14);
                BitSet bitSet = new BitSet(this.files.size());
                for (int i10 = 0; i10 < this.files.size(); i10++) {
                    bitSet.set(i10, !this.files.get(i10).hasStream());
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                writeBits(dataOutputStream, bitSet, this.files.size());
                dataOutputStream.flush();
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                writeUint64(dataOutput, byteArray.length);
                dataOutput.write(byteArray);
                return;
            }
        }
    }

    private void writeFileMTimes(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getHasLastModifiedDate()) {
                i10++;
            }
        }
        if (i10 > 0) {
            dataOutput.write(20);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i10 != this.files.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.files.size());
                for (int i11 = 0; i11 < this.files.size(); i11++) {
                    bitSet.set(i11, this.files.get(i11).getHasLastModifiedDate());
                }
                writeBits(dataOutputStream, bitSet, this.files.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
                if (sevenZArchiveEntry.getHasLastModifiedDate()) {
                    dataOutputStream.writeLong(Long.reverseBytes(SevenZArchiveEntry.javaTimeToNtfsTime(sevenZArchiveEntry.getLastModifiedDate())));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFileNames(DataOutput dataOutput) throws IOException {
        dataOutput.write(17);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        dataOutputStream.write(0);
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        while (it.hasNext()) {
            dataOutputStream.write(it.next().getName().getBytes("UTF-16LE"));
            dataOutputStream.writeShort(0);
        }
        dataOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        writeUint64(dataOutput, byteArray.length);
        dataOutput.write(byteArray);
    }

    private void writeFileWindowsAttributes(DataOutput dataOutput) throws IOException {
        Iterator<SevenZArchiveEntry> it = this.files.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (it.next().getHasWindowsAttributes()) {
                i10++;
            }
        }
        if (i10 > 0) {
            dataOutput.write(21);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            if (i10 != this.files.size()) {
                dataOutputStream.write(0);
                BitSet bitSet = new BitSet(this.files.size());
                for (int i11 = 0; i11 < this.files.size(); i11++) {
                    bitSet.set(i11, this.files.get(i11).getHasWindowsAttributes());
                }
                writeBits(dataOutputStream, bitSet, this.files.size());
            } else {
                dataOutputStream.write(1);
            }
            dataOutputStream.write(0);
            for (SevenZArchiveEntry sevenZArchiveEntry : this.files) {
                if (sevenZArchiveEntry.getHasWindowsAttributes()) {
                    dataOutputStream.writeInt(Integer.reverseBytes(sevenZArchiveEntry.getWindowsAttributes()));
                }
            }
            dataOutputStream.flush();
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            writeUint64(dataOutput, byteArray.length);
            dataOutput.write(byteArray);
        }
    }

    private void writeFolder(DataOutput dataOutput, SevenZArchiveEntry sevenZArchiveEntry) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Iterator<? extends SevenZMethodConfiguration> it = getContentMethods(sevenZArchiveEntry).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            i10++;
            writeSingleCodec(it.next(), byteArrayOutputStream);
        }
        writeUint64(dataOutput, i10);
        dataOutput.write(byteArrayOutputStream.toByteArray());
        long j6 = 0;
        while (j6 < i10 - 1) {
            long j10 = 1 + j6;
            writeUint64(dataOutput, j10);
            writeUint64(dataOutput, j6);
            j6 = j10;
        }
    }

    private void writeStreamsInfo(DataOutput dataOutput) throws IOException {
        if (this.numNonEmptyStreams > 0) {
            writePackInfo(dataOutput);
            writeUnpackInfo(dataOutput);
        }
        writeSubStreamsInfo(dataOutput);
        dataOutput.write(0);
    }

    private void writeSubStreamsInfo(DataOutput dataOutput) throws IOException {
        dataOutput.write(8);
        dataOutput.write(0);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.finished) {
            finish();
        }
        this.channel.close();
    }

    public void closeArchiveEntry() throws IOException {
        CountingOutputStream countingOutputStream = this.currentOutputStream;
        if (countingOutputStream != null) {
            countingOutputStream.flush();
            this.currentOutputStream.close();
        }
        List<SevenZArchiveEntry> list = this.files;
        SevenZArchiveEntry sevenZArchiveEntry = list.get(list.size() - 1);
        int i10 = 0;
        if (this.fileBytesWritten > 0) {
            sevenZArchiveEntry.setHasStream(true);
            this.numNonEmptyStreams++;
            sevenZArchiveEntry.setSize(this.currentOutputStream.getBytesWritten());
            sevenZArchiveEntry.setCompressedSize(this.fileBytesWritten);
            sevenZArchiveEntry.setCrcValue(this.crc32.getValue());
            sevenZArchiveEntry.setCompressedCrcValue(this.compressedCrc32.getValue());
            sevenZArchiveEntry.setHasCrc(true);
            CountingOutputStream[] countingOutputStreamArr = this.additionalCountingStreams;
            if (countingOutputStreamArr != null) {
                long[] jArr = new long[countingOutputStreamArr.length];
                while (true) {
                    CountingOutputStream[] countingOutputStreamArr2 = this.additionalCountingStreams;
                    if (i10 >= countingOutputStreamArr2.length) {
                        break;
                    }
                    jArr[i10] = countingOutputStreamArr2[i10].getBytesWritten();
                    i10++;
                }
                this.additionalSizes.put(sevenZArchiveEntry, jArr);
            }
        } else {
            sevenZArchiveEntry.setHasStream(false);
            sevenZArchiveEntry.setSize(0L);
            sevenZArchiveEntry.setCompressedSize(0L);
            sevenZArchiveEntry.setHasCrc(false);
        }
        this.currentOutputStream = null;
        this.additionalCountingStreams = null;
        this.crc32.reset();
        this.compressedCrc32.reset();
        this.fileBytesWritten = 0L;
    }

    public SevenZArchiveEntry createArchiveEntry(File file, String str) throws IOException {
        SevenZArchiveEntry sevenZArchiveEntry = new SevenZArchiveEntry();
        sevenZArchiveEntry.setDirectory(file.isDirectory());
        sevenZArchiveEntry.setName(str);
        sevenZArchiveEntry.setLastModifiedDate(new Date(file.lastModified()));
        return sevenZArchiveEntry;
    }

    public void finish() throws IOException {
        if (this.finished) {
            throw new IOException("This archive has already been finished");
        }
        this.finished = true;
        long jPosition = this.channel.position();
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
        writeHeader(dataOutputStream);
        dataOutputStream.flush();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        this.channel.write(ByteBuffer.wrap(byteArray));
        CRC32 crc32 = new CRC32();
        crc32.update(byteArray);
        byte[] bArr = SevenZFile.sevenZSignature;
        ByteBuffer byteBufferOrder = ByteBuffer.allocate(bArr.length + 26).order(ByteOrder.LITTLE_ENDIAN);
        this.channel.position(0L);
        byteBufferOrder.put(bArr);
        byteBufferOrder.put((byte) 0).put((byte) 2);
        byteBufferOrder.putInt(0);
        byteBufferOrder.putLong(jPosition - 32).putLong(((long) byteArray.length) & 4294967295L).putInt((int) crc32.getValue());
        crc32.reset();
        crc32.update(byteBufferOrder.array(), bArr.length + 6, 20);
        byteBufferOrder.putInt(bArr.length + 2, (int) crc32.getValue());
        byteBufferOrder.flip();
        this.channel.write(byteBufferOrder);
    }

    public void putArchiveEntry(ArchiveEntry archiveEntry) throws IOException {
        this.files.add((SevenZArchiveEntry) archiveEntry);
    }

    public void setContentCompression(SevenZMethod sevenZMethod) {
        setContentMethods(Collections.singletonList(new SevenZMethodConfiguration(sevenZMethod)));
    }

    public void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    private Iterable<? extends SevenZMethodConfiguration> getContentMethods(SevenZArchiveEntry sevenZArchiveEntry) {
        Iterable<? extends SevenZMethodConfiguration> contentMethods = sevenZArchiveEntry.getContentMethods();
        if (contentMethods == null) {
            return this.contentMethods;
        }
        return contentMethods;
    }

    private void writeSingleCodec(SevenZMethodConfiguration sevenZMethodConfiguration, OutputStream outputStream) throws IOException {
        byte[] id = sevenZMethodConfiguration.getMethod().getId();
        byte[] optionsAsProperties = Coders.findByMethod(sevenZMethodConfiguration.getMethod()).getOptionsAsProperties(sevenZMethodConfiguration.getOptions());
        int length = id.length;
        if (optionsAsProperties.length > 0) {
            length |= 32;
        }
        outputStream.write(length);
        outputStream.write(id);
        if (optionsAsProperties.length > 0) {
            outputStream.write(optionsAsProperties.length);
            outputStream.write(optionsAsProperties);
        }
    }

    public void setContentMethods(Iterable<? extends SevenZMethodConfiguration> iterable) {
        this.contentMethods = reverse(iterable);
    }

    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 > 0) {
            getCurrentOutputStream().write(bArr, i10, i11);
        }
    }

    public SevenZOutputFile(SeekableByteChannel seekableByteChannel) throws IOException {
        this.files = new ArrayList();
        this.numNonEmptyStreams = 0;
        this.crc32 = new CRC32();
        this.compressedCrc32 = new CRC32();
        this.fileBytesWritten = 0L;
        this.finished = false;
        this.contentMethods = Collections.singletonList(new SevenZMethodConfiguration(SevenZMethod.LZMA2));
        this.additionalSizes = new HashMap();
        this.channel = seekableByteChannel;
        seekableByteChannel.position(32L);
    }

    private class OutputStreamWrapper extends OutputStream {
        private static final int BUF_SIZE = 8192;
        private final ByteBuffer buffer;

        private OutputStreamWrapper() {
            this.buffer = ByteBuffer.allocate(8192);
        }

        @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // java.io.OutputStream, java.io.Flushable
        public void flush() throws IOException {
        }

        @Override // java.io.OutputStream
        public void write(int i10) throws IOException {
            this.buffer.clear();
            this.buffer.put((byte) i10).flip();
            SevenZOutputFile.this.channel.write(this.buffer);
            SevenZOutputFile.this.compressedCrc32.update(i10);
            SevenZOutputFile.access$408(SevenZOutputFile.this);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) throws IOException {
            write(bArr, 0, bArr.length);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i10, int i11) throws IOException {
            if (i11 > 8192) {
                SevenZOutputFile.this.channel.write(ByteBuffer.wrap(bArr, i10, i11));
            } else {
                this.buffer.clear();
                this.buffer.put(bArr, i10, i11).flip();
                SevenZOutputFile.this.channel.write(this.buffer);
            }
            SevenZOutputFile.this.compressedCrc32.update(bArr, i10, i11);
            SevenZOutputFile.this.fileBytesWritten += (long) i11;
        }
    }
}
