package org.apache.commons.compress.compressors.z;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;

/* JADX INFO: loaded from: classes11.dex */
public class ZCompressorInputStream extends LZWInputStream {
    private static final int BLOCK_MODE_MASK = 128;
    private static final int MAGIC_1 = 31;
    private static final int MAGIC_2 = 157;
    private static final int MAX_CODE_SIZE_MASK = 31;
    private final boolean blockMode;
    private final int maxCodeSize;
    private long totalCodesRead;

    public ZCompressorInputStream(InputStream inputStream, int i10) throws IOException {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
        this.totalCodesRead = 0L;
        int bits = (int) this.in.readBits(8);
        int bits2 = (int) this.in.readBits(8);
        int bits3 = (int) this.in.readBits(8);
        if (bits != 31 || bits2 != 157 || bits3 < 0) {
            throw new IOException("Input is not in .Z format");
        }
        boolean z6 = (bits3 & 128) != 0;
        this.blockMode = z6;
        int i11 = bits3 & 31;
        this.maxCodeSize = i11;
        if (z6) {
            setClearCode(9);
        }
        initializeTables(i11, i10);
        clearEntries();
    }

    public static boolean matches(byte[] bArr, int i10) {
        return i10 > 3 && bArr[0] == 31 && bArr[1] == -99;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    protected int addEntry(int i10, byte b7) throws IOException {
        int codeSize = 1 << getCodeSize();
        int iAddEntry = addEntry(i10, b7, codeSize);
        if (getTableSize() == codeSize && getCodeSize() < this.maxCodeSize) {
            reAlignReading();
            incrementCodeSize();
        }
        return iAddEntry;
    }

    private void clearEntries() {
        setTableSize((this.blockMode ? 1 : 0) + 256);
    }

    private void reAlignReading() throws IOException {
        long j6 = 8 - (this.totalCodesRead % 8);
        if (j6 == 8) {
            j6 = 0;
        }
        for (long j10 = 0; j10 < j6; j10++) {
            readNextCode();
        }
        this.in.clearBitCache();
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    protected int decompressNextSymbol() throws IOException {
        int nextCode = readNextCode();
        if (nextCode < 0) {
            return -1;
        }
        boolean z6 = false;
        if (this.blockMode && nextCode == getClearCode()) {
            clearEntries();
            reAlignReading();
            resetCodeSize();
            resetPreviousCode();
            return 0;
        }
        if (nextCode == getTableSize()) {
            addRepeatOfPreviousCode();
            z6 = true;
        } else if (nextCode > getTableSize()) {
            throw new IOException(String.format("Invalid %d bit code 0x%x", Integer.valueOf(getCodeSize()), Integer.valueOf(nextCode)));
        }
        return expandCodeToOutputStack(nextCode, z6);
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    protected int readNextCode() throws IOException {
        int nextCode = super.readNextCode();
        if (nextCode >= 0) {
            this.totalCodesRead++;
        }
        return nextCode;
    }

    public ZCompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, -1);
    }
}
