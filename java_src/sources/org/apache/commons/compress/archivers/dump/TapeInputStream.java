package org.apache.commons.compress.archivers.dump;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;
import org.apache.commons.compress.utils.IOUtils;

/* JADX INFO: loaded from: classes6.dex */
class TapeInputStream extends FilterInputStream {
    private static final int RECORD_SIZE = 1024;
    private byte[] blockBuffer;
    private int blockSize;
    private long bytesRead;
    private int currBlkIdx;
    private boolean isCompressed;
    private int readOffset;

    public long getBytesRead() {
        return this.bytesRead;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
    }

    /* JADX INFO: renamed from: org.apache.commons.compress.archivers.dump.TapeInputStream$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE;

        static {
            int[] iArr = new int[DumpArchiveConstants.COMPRESSION_TYPE.values().length];
            $SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE = iArr;
            try {
                iArr[DumpArchiveConstants.COMPRESSION_TYPE.ZLIB.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE[DumpArchiveConstants.COMPRESSION_TYPE.BZLIB.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE[DumpArchiveConstants.COMPRESSION_TYPE.LZO.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private void readBlock(boolean z6) throws IOException {
        if (((FilterInputStream) this).in == null) {
            throw new IOException("input buffer is closed");
        }
        if (!this.isCompressed || this.currBlkIdx == -1) {
            readFully(this.blockBuffer, 0, this.blockSize);
            this.bytesRead += (long) this.blockSize;
        } else {
            readFully(this.blockBuffer, 0, 4);
            this.bytesRead += 4;
            int iConvert32 = DumpArchiveUtil.convert32(this.blockBuffer, 0);
            if ((iConvert32 & 1) == 1) {
                int i10 = iConvert32 >> 1;
                int i11 = (iConvert32 >> 4) & 268435455;
                byte[] bArr = new byte[i11];
                readFully(bArr, 0, i11);
                this.bytesRead += (long) i11;
                if (z6) {
                    int i12 = AnonymousClass1.$SwitchMap$org$apache$commons$compress$archivers$dump$DumpArchiveConstants$COMPRESSION_TYPE[DumpArchiveConstants.COMPRESSION_TYPE.find(i10 & 3).ordinal()];
                    if (i12 != 1) {
                        if (i12 == 2) {
                            throw new UnsupportedCompressionAlgorithmException("BZLIB2");
                        }
                        if (i12 == 3) {
                            throw new UnsupportedCompressionAlgorithmException("LZO");
                        }
                        throw new UnsupportedCompressionAlgorithmException();
                    }
                    Inflater inflater = new Inflater();
                    try {
                        try {
                            inflater.setInput(bArr, 0, i11);
                            if (inflater.inflate(this.blockBuffer) != this.blockSize) {
                                throw new ShortFileException();
                            }
                            inflater.end();
                        } catch (DataFormatException e) {
                            throw new DumpArchiveException("bad data", e);
                        }
                    } catch (Throwable th) {
                        inflater.end();
                        throw th;
                    }
                    inflater.end();
                    throw th;
                }
                Arrays.fill(this.blockBuffer, (byte) 0);
            } else {
                readFully(this.blockBuffer, 0, this.blockSize);
                this.bytesRead += (long) this.blockSize;
            }
        }
        this.currBlkIdx++;
        this.readOffset = 0;
    }

    private void readFully(byte[] bArr, int i10, int i11) throws IOException {
        if (IOUtils.readFully(((FilterInputStream) this).in, bArr, i10, i11) < i11) {
            throw new ShortFileException();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i10 = this.readOffset;
        int i11 = this.blockSize;
        return i10 < i11 ? i11 - i10 : ((FilterInputStream) this).in.available();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (((FilterInputStream) this).in == null || ((FilterInputStream) this).in == System.in) {
            return;
        }
        ((FilterInputStream) this).in.close();
    }

    public byte[] peek() throws IOException {
        if (this.readOffset == this.blockSize) {
            try {
                readBlock(true);
            } catch (ShortFileException unused) {
                return null;
            }
        }
        byte[] bArr = new byte[1024];
        System.arraycopy(this.blockBuffer, this.readOffset, bArr, 0, 1024);
        return bArr;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i11 % 1024 != 0) {
            throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
        }
        int i12 = 0;
        while (i12 < i11) {
            if (this.readOffset == this.blockSize) {
                try {
                    readBlock(true);
                } catch (ShortFileException unused) {
                    return -1;
                }
            }
            int i13 = this.readOffset;
            int i14 = i11 - i12;
            int i15 = i13 + i14;
            int i16 = this.blockSize;
            if (i15 > i16) {
                i14 = i16 - i13;
            }
            System.arraycopy(this.blockBuffer, i13, bArr, i10, i14);
            this.readOffset += i14;
            i12 += i14;
            i10 += i14;
        }
        return i12;
    }

    public byte[] readRecord() throws IOException {
        byte[] bArr = new byte[1024];
        if (-1 != read(bArr, 0, 1024)) {
            return bArr;
        }
        throw new ShortFileException();
    }

    public void resetBlockSize(int i10, boolean z6) throws IOException {
        this.isCompressed = z6;
        int i11 = i10 * 1024;
        this.blockSize = i11;
        byte[] bArr = this.blockBuffer;
        byte[] bArr2 = new byte[i11];
        this.blockBuffer = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, 1024);
        readFully(this.blockBuffer, 1024, this.blockSize - 1024);
        this.currBlkIdx = 0;
        this.readOffset = 1024;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j6) throws IOException {
        long j10 = 0;
        if (j6 % 1024 != 0) {
            throw new IllegalArgumentException("all reads must be multiple of record size (1024 bytes.");
        }
        while (j10 < j6) {
            int i10 = this.readOffset;
            int i11 = this.blockSize;
            if (i10 == i11) {
                try {
                    readBlock(j6 - j10 < ((long) i11));
                } catch (ShortFileException unused) {
                    return -1L;
                }
            }
            int i12 = this.readOffset;
            long j11 = j6 - j10;
            long j12 = ((long) i12) + j11;
            int i13 = this.blockSize;
            if (j12 > i13) {
                j11 = ((long) i13) - ((long) i12);
            }
            this.readOffset = (int) (((long) i12) + j11);
            j10 += j11;
        }
        return j10;
    }

    public TapeInputStream(InputStream inputStream) {
        super(inputStream);
        this.blockBuffer = new byte[1024];
        this.currBlkIdx = -1;
        this.blockSize = 1024;
        this.readOffset = 1024;
        this.isCompressed = false;
        this.bytesRead = 0L;
    }
}
