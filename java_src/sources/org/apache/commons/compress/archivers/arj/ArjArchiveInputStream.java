package org.apache.commons.compress.archivers.arj;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.zip.CRC32;
import org.apache.commons.compress.archivers.ArchiveEntry;
import org.apache.commons.compress.archivers.ArchiveException;
import org.apache.commons.compress.archivers.ArchiveInputStream;
import org.apache.commons.compress.utils.BoundedInputStream;
import org.apache.commons.compress.utils.CRC32VerifyingInputStream;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes10.dex */
public class ArjArchiveInputStream extends ArchiveInputStream {
    private static final int ARJ_MAGIC_1 = 96;
    private static final int ARJ_MAGIC_2 = 234;
    private final String charsetName;
    private InputStream currentInputStream;
    private LocalFileHeader currentLocalFileHeader;
    private final DataInputStream in;
    private final MainHeader mainHeader;

    public ArjArchiveInputStream(InputStream inputStream, String str) throws ArchiveException {
        this.currentLocalFileHeader = null;
        this.currentInputStream = null;
        this.in = new DataInputStream(inputStream);
        this.charsetName = str;
        try {
            MainHeader mainHeader = readMainHeader();
            this.mainHeader = mainHeader;
            int i10 = mainHeader.arjFlags;
            if ((i10 & 1) != 0) {
                throw new ArchiveException("Encrypted ARJ files are unsupported");
            }
            if ((i10 & 4) != 0) {
                throw new ArchiveException("Multi-volume ARJ files are unsupported");
            }
        } catch (IOException e) {
            throw new ArchiveException(e.getMessage(), e);
        }
    }

    public static boolean matches(byte[] bArr, int i10) {
        return i10 >= 2 && (bArr[0] & 255) == 96 && (bArr[1] & 255) == ARJ_MAGIC_2;
    }

    private byte[] readHeader() throws IOException {
        boolean z6 = false;
        byte[] bArr = null;
        do {
            int i10 = read8(this.in);
            while (true) {
                int i11 = read8(this.in);
                if (i10 == 96 || i11 == ARJ_MAGIC_2) {
                    break;
                }
                i10 = i11;
            }
            int i12 = read16(this.in);
            if (i12 == 0) {
                return null;
            }
            if (i12 <= 2600) {
                bArr = new byte[i12];
                readFully(this.in, bArr);
                long j6 = ((long) read32(this.in)) & 4294967295L;
                CRC32 crc32 = new CRC32();
                crc32.update(bArr);
                if (j6 == crc32.getValue()) {
                    z6 = true;
                }
            }
        } while (!z6);
        return bArr;
    }

    private void readExtraData(int i10, DataInputStream dataInputStream, LocalFileHeader localFileHeader) throws IOException {
        if (i10 >= 33) {
            localFileHeader.extendedFilePosition = read32(dataInputStream);
            if (i10 >= 45) {
                localFileHeader.dateTimeAccessed = read32(dataInputStream);
                localFileHeader.dateTimeCreated = read32(dataInputStream);
                localFileHeader.originalSizeEvenForVolumes = read32(dataInputStream);
                pushedBackBytes(12L);
            }
            pushedBackBytes(4L);
        }
    }

    private String readString(DataInputStream dataInputStream) throws IOException {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int unsignedByte = dataInputStream.readUnsignedByte();
            if (unsignedByte == 0) {
                break;
            }
            byteArrayOutputStream.write(unsignedByte);
        }
        return this.charsetName != null ? new String(byteArrayOutputStream.toByteArray(), this.charsetName) : new String(byteArrayOutputStream.toByteArray());
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public boolean canReadEntryData(ArchiveEntry archiveEntry) {
        return (archiveEntry instanceof ArjArchiveEntry) && ((ArjArchiveEntry) archiveEntry).getMethod() == 0;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    public String getArchiveComment() {
        return this.mainHeader.comment;
    }

    public String getArchiveName() {
        return this.mainHeader.name;
    }

    @Override // org.apache.commons.compress.archivers.ArchiveInputStream
    public ArjArchiveEntry getNextEntry() throws IOException {
        InputStream inputStream = this.currentInputStream;
        if (inputStream != null) {
            IOUtils.skip(inputStream, Long.MAX_VALUE);
            this.currentInputStream.close();
            this.currentLocalFileHeader = null;
            this.currentInputStream = null;
        }
        LocalFileHeader localFileHeader = readLocalFileHeader();
        this.currentLocalFileHeader = localFileHeader;
        if (localFileHeader == null) {
            this.currentInputStream = null;
            return null;
        }
        BoundedInputStream boundedInputStream = new BoundedInputStream(this.in, localFileHeader.compressedSize);
        this.currentInputStream = boundedInputStream;
        LocalFileHeader localFileHeader2 = this.currentLocalFileHeader;
        if (localFileHeader2.method == 0) {
            this.currentInputStream = new CRC32VerifyingInputStream(boundedInputStream, localFileHeader2.originalSize, localFileHeader2.originalCrc32);
        }
        return new ArjArchiveEntry(this.currentLocalFileHeader);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        LocalFileHeader localFileHeader = this.currentLocalFileHeader;
        if (localFileHeader == null) {
            throw new IllegalStateException("No current arj entry");
        }
        if (localFileHeader.method == 0) {
            return this.currentInputStream.read(bArr, i10, i11);
        }
        throw new IOException("Unsupported compression method " + this.currentLocalFileHeader.method);
    }

    private int read16(DataInputStream dataInputStream) throws IOException {
        int unsignedShort = dataInputStream.readUnsignedShort();
        count(2);
        return Integer.reverseBytes(unsignedShort) >>> 16;
    }

    private int read32(DataInputStream dataInputStream) throws IOException {
        int i10 = dataInputStream.readInt();
        count(4);
        return Integer.reverseBytes(i10);
    }

    private int read8(DataInputStream dataInputStream) throws IOException {
        int unsignedByte = dataInputStream.readUnsignedByte();
        count(1);
        return unsignedByte;
    }

    private void readFully(DataInputStream dataInputStream, byte[] bArr) throws IOException {
        dataInputStream.readFully(bArr);
        count(bArr.length);
    }

    private LocalFileHeader readLocalFileHeader() throws IOException {
        byte[] header = readHeader();
        if (header == null) {
            return null;
        }
        DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(header));
        try {
            int unsignedByte = dataInputStream.readUnsignedByte();
            byte[] bArr = new byte[unsignedByte - 1];
            dataInputStream.readFully(bArr);
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(bArr));
            try {
                LocalFileHeader localFileHeader = new LocalFileHeader();
                localFileHeader.archiverVersionNumber = dataInputStream2.readUnsignedByte();
                localFileHeader.minVersionToExtract = dataInputStream2.readUnsignedByte();
                localFileHeader.hostOS = dataInputStream2.readUnsignedByte();
                localFileHeader.arjFlags = dataInputStream2.readUnsignedByte();
                localFileHeader.method = dataInputStream2.readUnsignedByte();
                localFileHeader.fileType = dataInputStream2.readUnsignedByte();
                localFileHeader.reserved = dataInputStream2.readUnsignedByte();
                localFileHeader.dateTimeModified = read32(dataInputStream2);
                localFileHeader.compressedSize = ((long) read32(dataInputStream2)) & 4294967295L;
                localFileHeader.originalSize = ((long) read32(dataInputStream2)) & 4294967295L;
                localFileHeader.originalCrc32 = ((long) read32(dataInputStream2)) & 4294967295L;
                localFileHeader.fileSpecPosition = read16(dataInputStream2);
                localFileHeader.fileAccessMode = read16(dataInputStream2);
                pushedBackBytes(20L);
                localFileHeader.firstChapter = dataInputStream2.readUnsignedByte();
                localFileHeader.lastChapter = dataInputStream2.readUnsignedByte();
                readExtraData(unsignedByte, dataInputStream2, localFileHeader);
                localFileHeader.name = readString(dataInputStream);
                localFileHeader.comment = readString(dataInputStream);
                ArrayList arrayList = new ArrayList();
                while (true) {
                    int i10 = read16(this.in);
                    if (i10 > 0) {
                        byte[] bArr2 = new byte[i10];
                        readFully(this.in, bArr2);
                        long j6 = ((long) read32(this.in)) & 4294967295L;
                        CRC32 crc32 = new CRC32();
                        crc32.update(bArr2);
                        if (j6 == crc32.getValue()) {
                            arrayList.add(bArr2);
                        } else {
                            throw new IOException("Extended header CRC32 verification failure");
                        }
                    } else {
                        localFileHeader.extendedHeaders = (byte[][]) arrayList.toArray(new byte[arrayList.size()][]);
                        dataInputStream2.close();
                        dataInputStream.close();
                        return localFileHeader;
                    }
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        dataInputStream2.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            try {
                throw th4;
            } catch (Throwable th5) {
                try {
                    dataInputStream.close();
                } catch (Throwable th6) {
                    th4.addSuppressed(th6);
                }
                throw th5;
            }
        }
    }

    private MainHeader readMainHeader() throws IOException {
        byte[] header = readHeader();
        if (header != null) {
            DataInputStream dataInputStream = new DataInputStream(new ByteArrayInputStream(header));
            int unsignedByte = dataInputStream.readUnsignedByte();
            byte[] bArr = new byte[unsignedByte - 1];
            dataInputStream.readFully(bArr);
            DataInputStream dataInputStream2 = new DataInputStream(new ByteArrayInputStream(bArr));
            MainHeader mainHeader = new MainHeader();
            mainHeader.archiverVersionNumber = dataInputStream2.readUnsignedByte();
            mainHeader.minVersionToExtract = dataInputStream2.readUnsignedByte();
            mainHeader.hostOS = dataInputStream2.readUnsignedByte();
            mainHeader.arjFlags = dataInputStream2.readUnsignedByte();
            mainHeader.securityVersion = dataInputStream2.readUnsignedByte();
            mainHeader.fileType = dataInputStream2.readUnsignedByte();
            mainHeader.reserved = dataInputStream2.readUnsignedByte();
            mainHeader.dateTimeCreated = read32(dataInputStream2);
            mainHeader.dateTimeModified = read32(dataInputStream2);
            mainHeader.archiveSize = ((long) read32(dataInputStream2)) & 4294967295L;
            mainHeader.securityEnvelopeFilePosition = read32(dataInputStream2);
            mainHeader.fileSpecPosition = read16(dataInputStream2);
            mainHeader.securityEnvelopeLength = read16(dataInputStream2);
            pushedBackBytes(20L);
            mainHeader.encryptionVersion = dataInputStream2.readUnsignedByte();
            mainHeader.lastChapter = dataInputStream2.readUnsignedByte();
            if (unsignedByte >= 33) {
                mainHeader.arjProtectionFactor = dataInputStream2.readUnsignedByte();
                mainHeader.arjFlags2 = dataInputStream2.readUnsignedByte();
                dataInputStream2.readUnsignedByte();
                dataInputStream2.readUnsignedByte();
            }
            mainHeader.name = readString(dataInputStream);
            mainHeader.comment = readString(dataInputStream);
            int i10 = read16(this.in);
            if (i10 > 0) {
                byte[] bArr2 = new byte[i10];
                mainHeader.extendedHeaderBytes = bArr2;
                readFully(this.in, bArr2);
                long j6 = ((long) read32(this.in)) & 4294967295L;
                CRC32 crc32 = new CRC32();
                crc32.update(mainHeader.extendedHeaderBytes);
                if (j6 != crc32.getValue()) {
                    throw new IOException("Extended header CRC32 verification failure");
                }
            }
            return mainHeader;
        }
        throw new IOException("Archive ends without any headers");
    }

    public ArjArchiveInputStream(InputStream inputStream) throws ArchiveException {
        this(inputStream, "CP437");
    }
}
