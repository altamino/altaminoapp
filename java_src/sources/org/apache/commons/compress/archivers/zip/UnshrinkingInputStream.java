package org.apache.commons.compress.archivers.zip;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import org.apache.commons.compress.compressors.lzw.LZWInputStream;

/* JADX INFO: loaded from: classes8.dex */
class UnshrinkingInputStream extends LZWInputStream {
    private static final int MAX_CODE_SIZE = 13;
    private static final int MAX_TABLE_SIZE = 8192;
    private final boolean[] isUsed;

    public UnshrinkingInputStream(InputStream inputStream) throws IOException {
        super(inputStream, ByteOrder.LITTLE_ENDIAN);
        setClearCode(9);
        initializeTables(13);
        this.isUsed = new boolean[getPrefixesLength()];
        for (int i10 = 0; i10 < 256; i10++) {
            this.isUsed[i10] = true;
        }
        setTableSize(getClearCode() + 1);
    }

    private void partialClear() {
        boolean[] zArr = new boolean[8192];
        int i10 = 0;
        while (true) {
            boolean[] zArr2 = this.isUsed;
            if (i10 >= zArr2.length) {
                break;
            }
            if (zArr2[i10] && getPrefix(i10) != -1) {
                zArr[getPrefix(i10)] = true;
            }
            i10++;
        }
        for (int clearCode = getClearCode() + 1; clearCode < 8192; clearCode++) {
            if (!zArr[clearCode]) {
                this.isUsed[clearCode] = false;
                setPrefix(clearCode, -1);
            }
        }
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    protected int addEntry(int i10, byte b7) throws IOException {
        int tableSize = getTableSize();
        while (tableSize < 8192 && this.isUsed[tableSize]) {
            tableSize++;
        }
        setTableSize(tableSize);
        int iAddEntry = addEntry(i10, b7, 8192);
        if (iAddEntry >= 0) {
            this.isUsed[iAddEntry] = true;
        }
        return iAddEntry;
    }

    @Override // org.apache.commons.compress.compressors.lzw.LZWInputStream
    protected int decompressNextSymbol() throws IOException {
        int nextCode = readNextCode();
        if (nextCode < 0) {
            return -1;
        }
        boolean z6 = false;
        if (nextCode == getClearCode()) {
            int nextCode2 = readNextCode();
            if (nextCode2 >= 0) {
                if (nextCode2 == 1) {
                    if (getCodeSize() < 13) {
                        incrementCodeSize();
                    } else {
                        throw new IOException("Attempt to increase code size beyond maximum");
                    }
                } else if (nextCode2 == 2) {
                    partialClear();
                    setTableSize(getClearCode() + 1);
                } else {
                    throw new IOException("Invalid clear code subcode " + nextCode2);
                }
                return 0;
            }
            throw new IOException("Unexpected EOF;");
        }
        if (!this.isUsed[nextCode]) {
            nextCode = addRepeatOfPreviousCode();
            z6 = true;
        }
        return expandCodeToOutputStack(nextCode, z6);
    }
}
