package org.apache.commons.compress.compressors.lzw;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.MemoryLimitException;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;

/* JADX INFO: loaded from: classes11.dex */
public abstract class LZWInputStream extends CompressorInputStream {
    protected static final int DEFAULT_CODE_SIZE = 9;
    protected static final int UNUSED_PREFIX = -1;
    private byte[] characters;
    protected final BitInputStream in;
    private byte[] outputStack;
    private int outputStackLocation;
    private int[] prefixes;
    private byte previousCodeFirstChar;
    private int tableSize;
    private final byte[] oneByte = new byte[1];
    private int clearCode = -1;
    private int codeSize = 9;
    private int previousCode = -1;

    protected abstract int addEntry(int i10, byte b7) throws IOException;

    protected int addEntry(int i10, byte b7, int i11) {
        int i12 = this.tableSize;
        if (i12 >= i11) {
            return -1;
        }
        this.prefixes[i12] = i10;
        this.characters[i12] = b7;
        this.tableSize = i12 + 1;
        return i12;
    }

    protected abstract int decompressNextSymbol() throws IOException;

    protected int expandCodeToOutputStack(int i10, boolean z6) throws IOException {
        int i11 = i10;
        while (i11 >= 0) {
            byte[] bArr = this.outputStack;
            int i12 = this.outputStackLocation - 1;
            this.outputStackLocation = i12;
            bArr[i12] = this.characters[i11];
            i11 = this.prefixes[i11];
        }
        int i13 = this.previousCode;
        if (i13 != -1 && !z6) {
            addEntry(i13, this.outputStack[this.outputStackLocation]);
        }
        this.previousCode = i10;
        byte[] bArr2 = this.outputStack;
        int i14 = this.outputStackLocation;
        this.previousCodeFirstChar = bArr2[i14];
        return i14;
    }

    protected int getClearCode() {
        return this.clearCode;
    }

    protected int getCodeSize() {
        return this.codeSize;
    }

    protected int getTableSize() {
        return this.tableSize;
    }

    protected void incrementCodeSize() {
        this.codeSize++;
    }

    protected void initializeTables(int i10, int i11) throws MemoryLimitException {
        if (i11 > -1) {
            long j6 = (((long) (1 << i10)) * 6) >> 10;
            if (j6 > i11) {
                throw new MemoryLimitException(j6, i11);
            }
        }
        initializeTables(i10);
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = read(this.oneByte);
        return i10 < 0 ? i10 : this.oneByte[0] & 255;
    }

    protected void resetPreviousCode() {
        this.previousCode = -1;
    }

    protected void setClearCode(int i10) {
        this.clearCode = 1 << (i10 - 1);
    }

    protected void setCodeSize(int i10) {
        this.codeSize = i10;
    }

    protected void setTableSize(int i10) {
        this.tableSize = i10;
    }

    private int readFromStack(byte[] bArr, int i10, int i11) {
        int length = this.outputStack.length - this.outputStackLocation;
        if (length <= 0) {
            return 0;
        }
        int iMin = Math.min(length, i11);
        System.arraycopy(this.outputStack, this.outputStackLocation, bArr, i10, iMin);
        this.outputStackLocation += iMin;
        return iMin;
    }

    protected int addRepeatOfPreviousCode() throws IOException {
        int i10 = this.previousCode;
        if (i10 != -1) {
            return addEntry(i10, this.previousCodeFirstChar);
        }
        throw new IOException("The first code can't be a reference to its preceding code");
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.in.close();
    }

    protected int getPrefix(int i10) {
        return this.prefixes[i10];
    }

    protected int getPrefixesLength() {
        return this.prefixes.length;
    }

    protected int readNextCode() throws IOException {
        int i10 = this.codeSize;
        if (i10 <= 31) {
            return (int) this.in.readBits(i10);
        }
        throw new IllegalArgumentException("code size must not be bigger than 31");
    }

    protected void resetCodeSize() {
        setCodeSize(9);
    }

    protected void setPrefix(int i10, int i11) {
        this.prefixes[i10] = i11;
    }

    protected LZWInputStream(InputStream inputStream, ByteOrder byteOrder) {
        this.in = new BitInputStream(inputStream, byteOrder);
    }

    protected void initializeTables(int i10) {
        int i11 = 1 << i10;
        this.prefixes = new int[i11];
        this.characters = new byte[i11];
        this.outputStack = new byte[i11];
        this.outputStackLocation = i11;
        for (int i12 = 0; i12 < 256; i12++) {
            this.prefixes[i12] = -1;
            this.characters[i12] = (byte) i12;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int fromStack = readFromStack(bArr, i10, i11);
        while (true) {
            int i12 = i11 - fromStack;
            if (i12 > 0) {
                int iDecompressNextSymbol = decompressNextSymbol();
                if (iDecompressNextSymbol < 0) {
                    if (fromStack <= 0) {
                        return iDecompressNextSymbol;
                    }
                    count(fromStack);
                    return fromStack;
                }
                fromStack += readFromStack(bArr, i10 + fromStack, i12);
            } else {
                count(fromStack);
                return fromStack;
            }
        }
    }
}
