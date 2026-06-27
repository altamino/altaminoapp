package org.apache.commons.compress.compressors.bzip2;

import com.narvii.master.MasterTemplatePickerFragment;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;

/* loaded from: classes4.dex */
public class BZip2CompressorInputStream extends CompressorInputStream implements BZip2Constants {
    private static final int EOF = 0;
    private static final int NO_RAND_PART_A_STATE = 5;
    private static final int NO_RAND_PART_B_STATE = 6;
    private static final int NO_RAND_PART_C_STATE = 7;
    private static final int RAND_PART_A_STATE = 2;
    private static final int RAND_PART_B_STATE = 3;
    private static final int RAND_PART_C_STATE = 4;
    private static final int START_BLOCK_STATE = 1;
    private BitInputStream bin;
    private boolean blockRandomised;
    private int blockSize100k;
    private int computedBlockCRC;
    private int computedCombinedCRC;
    private final CRC crc;
    private int currentState;
    private Data data;
    private final boolean decompressConcatenated;
    private int last;
    private int nInUse;
    private int origPtr;
    private int storedBlockCRC;
    private int storedCombinedCRC;
    private int su_ch2;
    private int su_chPrev;
    private int su_count;
    private int su_i2;
    private int su_j2;
    private int su_rNToGo;
    private int su_rTPos;
    private int su_tPos;
    private char su_z;

    public BZip2CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    public BZip2CompressorInputStream(InputStream inputStream, boolean z) throws IOException {
        this.crc = new CRC();
        this.currentState = 1;
        this.bin = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        this.decompressConcatenated = z;
        init(true);
        initBlock();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.bin != null) {
            int i = read0();
            count(i < 0 ? -1 : 1);
            return i;
        }
        throw new IOException("stream closed");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        if (i < 0) {
            throw new IndexOutOfBoundsException("offs(" + i + ") < 0.");
        }
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("len(" + i2 + ") < 0.");
        }
        int i3 = i + i2;
        if (i3 > bArr.length) {
            throw new IndexOutOfBoundsException("offs(" + i + ") + len(" + i2 + ") > dest.length(" + bArr.length + ").");
        }
        if (this.bin == null) {
            throw new IOException("stream closed");
        }
        if (i2 == 0) {
            return 0;
        }
        int i4 = i;
        while (i4 < i3) {
            int i5 = read0();
            if (i5 < 0) {
                break;
            }
            bArr[i4] = (byte) i5;
            count(1);
            i4++;
        }
        if (i4 == i) {
            return -1;
        }
        return i4 - i;
    }

    private void makeMaps() {
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.seqToUnseq;
        int i = 0;
        for (int i2 = 0; i2 < 256; i2++) {
            if (zArr[i2]) {
                bArr[i] = (byte) i2;
                i++;
            }
        }
        this.nInUse = i;
    }

    private int read0() throws IOException {
        switch (this.currentState) {
            case 0:
                return -1;
            case 1:
                return setupBlock();
            case 2:
                throw new IllegalStateException();
            case 3:
                return setupRandPartB();
            case 4:
                return setupRandPartC();
            case 5:
                throw new IllegalStateException();
            case 6:
                return setupNoRandPartB();
            case 7:
                return setupNoRandPartC();
            default:
                throw new IllegalStateException();
        }
    }

    private int readNextByte(BitInputStream bitInputStream) throws IOException {
        return (int) bitInputStream.readBits(8);
    }

    private boolean init(boolean z) throws IOException {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        if (!z) {
            bitInputStream.clearBitCache();
        }
        int nextByte = readNextByte(this.bin);
        if (nextByte == -1 && !z) {
            return false;
        }
        int nextByte2 = readNextByte(this.bin);
        int nextByte3 = readNextByte(this.bin);
        if (nextByte != 66 || nextByte2 != 90 || nextByte3 != 104) {
            throw new IOException(z ? "Stream is not in the BZip2 format" : "Garbage after a valid BZip2 stream");
        }
        int nextByte4 = readNextByte(this.bin);
        if (nextByte4 < 49 || nextByte4 > 57) {
            throw new IOException("BZip2 block size is invalid");
        }
        this.blockSize100k = nextByte4 - 48;
        this.computedCombinedCRC = 0;
        return true;
    }

    private void initBlock() throws IOException {
        BitInputStream bitInputStream = this.bin;
        do {
            char cBsGetUByte = bsGetUByte(bitInputStream);
            char cBsGetUByte2 = bsGetUByte(bitInputStream);
            char cBsGetUByte3 = bsGetUByte(bitInputStream);
            char cBsGetUByte4 = bsGetUByte(bitInputStream);
            char cBsGetUByte5 = bsGetUByte(bitInputStream);
            char cBsGetUByte6 = bsGetUByte(bitInputStream);
            if (cBsGetUByte != 23 || cBsGetUByte2 != 'r' || cBsGetUByte3 != 'E' || cBsGetUByte4 != '8' || cBsGetUByte5 != 'P' || cBsGetUByte6 != 144) {
                if (cBsGetUByte != '1' || cBsGetUByte2 != 'A' || cBsGetUByte3 != 'Y' || cBsGetUByte4 != '&' || cBsGetUByte5 != 'S' || cBsGetUByte6 != 'Y') {
                    this.currentState = 0;
                    throw new IOException("bad block header");
                }
                this.storedBlockCRC = bsGetInt(bitInputStream);
                this.blockRandomised = bsR(bitInputStream, 1) == 1;
                if (this.data == null) {
                    this.data = new Data(this.blockSize100k);
                }
                getAndMoveToFrontDecode();
                this.crc.initialiseCRC();
                this.currentState = 1;
                return;
            }
        } while (!complete());
    }

    private void endBlock() throws IOException {
        this.computedBlockCRC = this.crc.getFinalCRC();
        int i = this.storedBlockCRC;
        int i2 = this.computedBlockCRC;
        if (i != i2) {
            int i3 = this.storedCombinedCRC;
            this.computedCombinedCRC = (i3 >>> 31) | (i3 << 1);
            this.computedCombinedCRC = i ^ this.computedCombinedCRC;
            throw new IOException("BZip2 CRC error");
        }
        int i4 = this.computedCombinedCRC;
        this.computedCombinedCRC = (i4 >>> 31) | (i4 << 1);
        this.computedCombinedCRC ^= i2;
    }

    private boolean complete() throws IOException {
        this.storedCombinedCRC = bsGetInt(this.bin);
        this.currentState = 0;
        this.data = null;
        if (this.storedCombinedCRC == this.computedCombinedCRC) {
            return (this.decompressConcatenated && init(false)) ? false : true;
        }
        throw new IOException("BZip2 CRC error");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream != null) {
            try {
                bitInputStream.close();
            } finally {
                this.data = null;
                this.bin = null;
            }
        }
    }

    private static int bsR(BitInputStream bitInputStream, int i) throws IOException {
        long bits = bitInputStream.readBits(i);
        if (bits >= 0) {
            return (int) bits;
        }
        throw new IOException("unexpected end of stream");
    }

    private static boolean bsGetBit(BitInputStream bitInputStream) throws IOException {
        return bsR(bitInputStream, 1) != 0;
    }

    private static char bsGetUByte(BitInputStream bitInputStream) throws IOException {
        return (char) bsR(bitInputStream, 8);
    }

    private static int bsGetInt(BitInputStream bitInputStream) throws IOException {
        return bsR(bitInputStream, 32);
    }

    private static void checkBounds(int i, int i2, String str) throws IOException {
        if (i < 0) {
            throw new IOException("Corrupted input, " + str + " value negative");
        }
        if (i < i2) {
            return;
        }
        throw new IOException("Corrupted input, " + str + " value too big");
    }

    private static void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i, int i2, int i3) throws IOException {
        int i4 = 0;
        int i5 = i;
        int i6 = 0;
        while (i5 <= i2) {
            int i7 = i6;
            for (int i8 = 0; i8 < i3; i8++) {
                if (cArr[i8] == i5) {
                    iArr3[i7] = i8;
                    i7++;
                }
            }
            i5++;
            i6 = i7;
        }
        int i9 = 23;
        while (true) {
            i9--;
            if (i9 <= 0) {
                break;
            }
            iArr2[i9] = 0;
            iArr[i9] = 0;
        }
        for (int i10 = 0; i10 < i3; i10++) {
            char c = cArr[i10];
            checkBounds(c, BZip2Constants.MAX_ALPHA_SIZE, "length");
            int i11 = c + 1;
            iArr2[i11] = iArr2[i11] + 1;
        }
        int i12 = iArr2[0];
        for (int i13 = 1; i13 < 23; i13++) {
            i12 += iArr2[i13];
            iArr2[i13] = i12;
        }
        int i14 = iArr2[i];
        int i15 = i;
        while (i15 <= i2) {
            int i16 = i15 + 1;
            int i17 = iArr2[i16];
            int i18 = i4 + (i17 - i14);
            iArr[i15] = i18 - 1;
            i4 = i18 << 1;
            i15 = i16;
            i14 = i17;
        }
        for (int i19 = i + 1; i19 <= i2; i19++) {
            iArr2[i19] = ((iArr[i19 - 1] + 1) << 1) - iArr2[i19];
        }
    }

    private void recvDecodingTables() throws IOException {
        BitInputStream bitInputStream = this.bin;
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.recvDecodingTables_pos;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.selectorMtf;
        int i = 0;
        for (int i2 = 0; i2 < 16; i2++) {
            if (bsGetBit(bitInputStream)) {
                i |= 1 << i2;
            }
        }
        Arrays.fill(zArr, false);
        for (int i3 = 0; i3 < 16; i3++) {
            if (((1 << i3) & i) != 0) {
                int i4 = i3 << 4;
                for (int i5 = 0; i5 < 16; i5++) {
                    if (bsGetBit(bitInputStream)) {
                        zArr[i4 + i5] = true;
                    }
                }
            }
        }
        makeMaps();
        int i6 = this.nInUse + 2;
        int iBsR = bsR(bitInputStream, 3);
        int iBsR2 = bsR(bitInputStream, 15);
        checkBounds(i6, 259, "alphaSize");
        checkBounds(iBsR, 7, "nGroups");
        checkBounds(iBsR2, 18003, "nSelectors");
        for (int i7 = 0; i7 < iBsR2; i7++) {
            int i8 = 0;
            while (bsGetBit(bitInputStream)) {
                i8++;
            }
            bArr3[i7] = (byte) i8;
        }
        int i9 = iBsR;
        while (true) {
            i9--;
            if (i9 < 0) {
                break;
            } else {
                bArr[i9] = (byte) i9;
            }
        }
        for (int i10 = 0; i10 < iBsR2; i10++) {
            int i11 = bArr3[i10] & 255;
            checkBounds(i11, 6, "selectorMtf");
            byte b = bArr[i11];
            while (i11 > 0) {
                bArr[i11] = bArr[i11 - 1];
                i11--;
            }
            bArr[0] = b;
            bArr2[i10] = b;
        }
        char[][] cArr = data.temp_charArray2d;
        for (int i12 = 0; i12 < iBsR; i12++) {
            int iBsR3 = bsR(bitInputStream, 5);
            char[] cArr2 = cArr[i12];
            int i13 = iBsR3;
            for (int i14 = 0; i14 < i6; i14++) {
                while (bsGetBit(bitInputStream)) {
                    i13 += bsGetBit(bitInputStream) ? -1 : 1;
                }
                cArr2[i14] = (char) i13;
            }
        }
        createHuffmanDecodingTables(i6, iBsR);
    }

    private void createHuffmanDecodingTables(int i, int i2) throws IOException {
        Data data = this.data;
        char[][] cArr = data.temp_charArray2d;
        int[] iArr = data.minLens;
        int[][] iArr2 = data.limit;
        int[][] iArr3 = data.base;
        int[][] iArr4 = data.perm;
        for (int i3 = 0; i3 < i2; i3++) {
            char[] cArr2 = cArr[i3];
            int i4 = i;
            char c = 0;
            char c2 = ' ';
            while (true) {
                i4--;
                if (i4 >= 0) {
                    char c3 = cArr2[i4];
                    if (c3 > c) {
                        c = c3;
                    }
                    if (c3 < c2) {
                        c2 = c3;
                    }
                }
            }
            hbCreateDecodeTables(iArr2[i3], iArr3[i3], iArr4[i3], cArr[i3], c2, c, i);
            iArr[i3] = c2;
        }
    }

    private void getAndMoveToFrontDecode() throws IOException {
        String str;
        String str2;
        int i;
        int i2;
        char c;
        int i3;
        String str3;
        int i4;
        BZip2CompressorInputStream bZip2CompressorInputStream = this;
        BitInputStream bitInputStream = bZip2CompressorInputStream.bin;
        bZip2CompressorInputStream.origPtr = bsR(bitInputStream, 24);
        recvDecodingTables();
        Data data = bZip2CompressorInputStream.data;
        byte[] bArr = data.ll8;
        int[] iArr = data.unzftab;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.seqToUnseq;
        char[] cArr = data.getAndMoveToFrontDecode_yy;
        int[] iArr2 = data.minLens;
        int[][] iArr3 = data.limit;
        int[][] iArr4 = data.base;
        int[][] iArr5 = data.perm;
        int i5 = bZip2CompressorInputStream.blockSize100k * 100000;
        int i6 = 256;
        while (true) {
            i6--;
            if (i6 < 0) {
                break;
            }
            cArr[i6] = (char) i6;
            iArr[i6] = 0;
        }
        int i7 = bZip2CompressorInputStream.nInUse + 1;
        int andMoveToFrontDecode0 = getAndMoveToFrontDecode0();
        int i8 = bArr2[0] & 255;
        checkBounds(i8, 6, "zt");
        int[] iArr6 = iArr4[i8];
        int[] iArr7 = iArr6;
        int[] iArr8 = iArr3[i8];
        int[] iArr9 = iArr5[i8];
        int i9 = -1;
        int i10 = 0;
        int i11 = 49;
        int i12 = iArr2[i8];
        int i13 = andMoveToFrontDecode0;
        while (i13 != i7) {
            int i14 = i7;
            String str4 = "groupNo";
            BitInputStream bitInputStream2 = bitInputStream;
            if (i13 == 0 || i13 == 1) {
                int[] iArr10 = iArr2;
                int i15 = i5;
                int i16 = i13;
                String str5 = "block overrun";
                int i17 = i9;
                int[] iArr11 = iArr9;
                int i18 = i16;
                int[] iArr12 = iArr7;
                int[] iArr13 = iArr8;
                int i19 = i10;
                int i20 = i12;
                int i21 = -1;
                int i22 = i11;
                int i23 = 1;
                while (true) {
                    if (i18 != 0) {
                        str = str5;
                        if (i18 != 1) {
                            break;
                        } else {
                            i21 += i23 << 1;
                        }
                    } else {
                        i21 += i23;
                        str = str5;
                    }
                    if (i22 == 0) {
                        int i24 = i19 + 1;
                        checkBounds(i24, BZip2Constants.MAX_SELECTORS, str4);
                        int i25 = bArr2[i24] & 255;
                        str2 = str4;
                        checkBounds(i25, 6, "zt");
                        iArr12 = iArr4[i25];
                        iArr13 = iArr3[i25];
                        iArr11 = iArr5[i25];
                        i19 = i24;
                        i = iArr10[i25];
                        i2 = BZip2Constants.MAX_ALPHA_SIZE;
                        i22 = 49;
                    } else {
                        str2 = str4;
                        i22--;
                        i = i20;
                        i2 = BZip2Constants.MAX_ALPHA_SIZE;
                    }
                    checkBounds(i, i2, "zn");
                    int iBsR = bsR(bitInputStream2, i);
                    int i26 = i;
                    while (iBsR > iArr13[i26]) {
                        int i27 = i26 + 1;
                        checkBounds(i27, BZip2Constants.MAX_ALPHA_SIZE, "zn");
                        iBsR = (iBsR << 1) | bsR(bitInputStream2, 1);
                        i26 = i27;
                        iArr5 = iArr5;
                    }
                    int i28 = iBsR - iArr12[i26];
                    checkBounds(i28, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
                    i23 <<= 1;
                    i18 = iArr11[i28];
                    i20 = i;
                    str5 = str;
                    str4 = str2;
                    iArr5 = iArr5;
                }
                int[][] iArr14 = iArr5;
                char c2 = cArr[0];
                checkBounds(c2, 256, "yy");
                byte b = bArr3[c2];
                int i29 = b & 255;
                iArr[i29] = iArr[i29] + i21 + 1;
                int i30 = i17;
                while (true) {
                    int i31 = i21 - 1;
                    if (i21 < 0) {
                        break;
                    }
                    i30++;
                    bArr[i30] = b;
                    i21 = i31;
                }
                if (i30 >= i15) {
                    throw new IOException(str);
                }
                bZip2CompressorInputStream = this;
                bitInputStream = bitInputStream2;
                i5 = i15;
                i13 = i18;
                i11 = i22;
                i10 = i19;
                i12 = i20;
                iArr7 = iArr12;
                i7 = i14;
                iArr8 = iArr13;
                iArr9 = iArr11;
                iArr5 = iArr14;
                i9 = i30;
                iArr2 = iArr10;
            } else {
                i9++;
                if (i9 >= i5) {
                    throw new IOException("block overrun");
                }
                int i32 = i5;
                checkBounds(i13, MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY, "nextSym");
                int i33 = i13 - 1;
                char c3 = cArr[i33];
                int[] iArr15 = iArr2;
                checkBounds(c3, 256, "yy");
                int i34 = bArr3[c3] & 255;
                iArr[i34] = iArr[i34] + 1;
                bArr[i9] = bArr3[c3];
                if (i13 <= 16) {
                    while (i33 > 0) {
                        int i35 = i33 - 1;
                        cArr[i33] = cArr[i35];
                        i33 = i35;
                    }
                    c = 0;
                } else {
                    c = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i33);
                }
                cArr[c] = c3;
                if (i11 == 0) {
                    int i36 = i10 + 1;
                    checkBounds(i36, BZip2Constants.MAX_SELECTORS, "groupNo");
                    int i37 = bArr2[i36] & 255;
                    checkBounds(i37, 6, "zt");
                    int[] iArr16 = iArr4[i37];
                    int[] iArr17 = iArr3[i37];
                    int[] iArr18 = iArr5[i37];
                    i3 = iArr15[i37];
                    i10 = i36;
                    iArr7 = iArr16;
                    iArr8 = iArr17;
                    iArr9 = iArr18;
                    str3 = "zn";
                    i4 = BZip2Constants.MAX_ALPHA_SIZE;
                    i11 = 49;
                } else {
                    i11--;
                    i3 = i12;
                    str3 = "zn";
                    i4 = BZip2Constants.MAX_ALPHA_SIZE;
                }
                checkBounds(i3, i4, str3);
                int iBsR2 = bsR(bitInputStream2, i3);
                int i38 = i3;
                while (iBsR2 > iArr8[i38]) {
                    i38++;
                    checkBounds(i38, BZip2Constants.MAX_ALPHA_SIZE, str3);
                    iBsR2 = (iBsR2 << 1) | bsR(bitInputStream2, 1);
                }
                int i39 = iBsR2 - iArr7[i38];
                checkBounds(i39, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
                i13 = iArr9[i39];
                i12 = i3;
                bitInputStream = bitInputStream2;
                i7 = i14;
                i5 = i32;
                iArr2 = iArr15;
                bZip2CompressorInputStream = this;
            }
        }
        bZip2CompressorInputStream.last = i9;
    }

    private int getAndMoveToFrontDecode0() throws IOException {
        Data data = this.data;
        int i = data.selector[0] & 255;
        checkBounds(i, 6, "zt");
        int[] iArr = data.limit[i];
        int i2 = data.minLens[i];
        checkBounds(i2, BZip2Constants.MAX_ALPHA_SIZE, "zn");
        int iBsR = bsR(this.bin, i2);
        while (iBsR > iArr[i2]) {
            i2++;
            checkBounds(i2, BZip2Constants.MAX_ALPHA_SIZE, "zn");
            iBsR = (iBsR << 1) | bsR(this.bin, 1);
        }
        int i3 = iBsR - data.base[i][i2];
        checkBounds(i3, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
        return data.perm[i][i3];
    }

    private int setupBlock() throws IOException {
        Data data;
        if (this.currentState == 0 || (data = this.data) == null) {
            return -1;
        }
        int[] iArr = data.cftab;
        int i = this.last + 1;
        int[] iArrInitTT = data.initTT(i);
        Data data2 = this.data;
        byte[] bArr = data2.ll8;
        iArr[0] = 0;
        System.arraycopy(data2.unzftab, 0, iArr, 1, 256);
        int i2 = iArr[0];
        for (int i3 = 1; i3 <= 256; i3++) {
            i2 += iArr[i3];
            iArr[i3] = i2;
        }
        int i4 = this.last;
        for (int i5 = 0; i5 <= i4; i5++) {
            int i6 = bArr[i5] & 255;
            int i7 = iArr[i6];
            iArr[i6] = i7 + 1;
            checkBounds(i7, i, "tt index");
            iArrInitTT[i7] = i5;
        }
        int i8 = this.origPtr;
        if (i8 < 0 || i8 >= iArrInitTT.length) {
            throw new IOException("stream corrupted");
        }
        this.su_tPos = iArrInitTT[i8];
        this.su_count = 0;
        this.su_i2 = 0;
        this.su_ch2 = 256;
        if (this.blockRandomised) {
            this.su_rNToGo = 0;
            this.su_rTPos = 0;
            return setupRandPartA();
        }
        return setupNoRandPartA();
    }

    private int setupRandPartA() throws IOException {
        if (this.su_i2 <= this.last) {
            this.su_chPrev = this.su_ch2;
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i = this.su_tPos;
            int i2 = bArr[i] & 255;
            checkBounds(i, data.tt.length, "su_tPos");
            this.su_tPos = this.data.tt[this.su_tPos];
            int i3 = this.su_rNToGo;
            if (i3 == 0) {
                this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
                int i4 = this.su_rTPos + 1;
                this.su_rTPos = i4;
                if (i4 == 512) {
                    this.su_rTPos = 0;
                }
            } else {
                this.su_rNToGo = i3 - 1;
            }
            int i5 = i2 ^ (this.su_rNToGo == 1 ? 1 : 0);
            this.su_ch2 = i5;
            this.su_i2++;
            this.currentState = 3;
            this.crc.updateCRC(i5);
            return i5;
        }
        endBlock();
        initBlock();
        return setupBlock();
    }

    private int setupNoRandPartA() throws IOException {
        if (this.su_i2 <= this.last) {
            this.su_chPrev = this.su_ch2;
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i = this.su_tPos;
            int i2 = bArr[i] & 255;
            this.su_ch2 = i2;
            checkBounds(i, data.tt.length, "su_tPos");
            this.su_tPos = this.data.tt[this.su_tPos];
            this.su_i2++;
            this.currentState = 6;
            this.crc.updateCRC(i2);
            return i2;
        }
        this.currentState = 5;
        endBlock();
        initBlock();
        return setupBlock();
    }

    private int setupRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.currentState = 2;
            this.su_count = 1;
            return setupRandPartA();
        }
        int i = this.su_count + 1;
        this.su_count = i;
        if (i >= 4) {
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i2 = this.su_tPos;
            this.su_z = (char) (bArr[i2] & 255);
            checkBounds(i2, data.tt.length, "su_tPos");
            this.su_tPos = this.data.tt[this.su_tPos];
            int i3 = this.su_rNToGo;
            if (i3 == 0) {
                this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
                int i4 = this.su_rTPos + 1;
                this.su_rTPos = i4;
                if (i4 == 512) {
                    this.su_rTPos = 0;
                }
            } else {
                this.su_rNToGo = i3 - 1;
            }
            this.su_j2 = 0;
            this.currentState = 4;
            if (this.su_rNToGo == 1) {
                this.su_z = (char) (this.su_z ^ 1);
            }
            return setupRandPartC();
        }
        this.currentState = 2;
        return setupRandPartA();
    }

    private int setupRandPartC() throws IOException {
        if (this.su_j2 < this.su_z) {
            this.crc.updateCRC(this.su_ch2);
            this.su_j2++;
            return this.su_ch2;
        }
        this.currentState = 2;
        this.su_i2++;
        this.su_count = 0;
        return setupRandPartA();
    }

    private int setupNoRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.su_count = 1;
            return setupNoRandPartA();
        }
        int i = this.su_count + 1;
        this.su_count = i;
        if (i >= 4) {
            checkBounds(this.su_tPos, this.data.ll8.length, "su_tPos");
            Data data = this.data;
            byte[] bArr = data.ll8;
            int i2 = this.su_tPos;
            this.su_z = (char) (bArr[i2] & 255);
            this.su_tPos = data.tt[i2];
            this.su_j2 = 0;
            return setupNoRandPartC();
        }
        return setupNoRandPartA();
    }

    private int setupNoRandPartC() throws IOException {
        if (this.su_j2 < this.su_z) {
            int i = this.su_ch2;
            this.crc.updateCRC(i);
            this.su_j2++;
            this.currentState = 7;
            return i;
        }
        this.su_i2++;
        this.su_count = 0;
        return setupNoRandPartA();
    }

    private static final class Data {
        byte[] ll8;
        int[] tt;
        final boolean[] inUse = new boolean[256];
        final byte[] seqToUnseq = new byte[256];
        final byte[] selector = new byte[BZip2Constants.MAX_SELECTORS];
        final byte[] selectorMtf = new byte[BZip2Constants.MAX_SELECTORS];
        final int[] unzftab = new int[256];
        final int[][] limit = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
        final int[][] base = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
        final int[][] perm = (int[][]) Array.newInstance((Class<?>) int.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
        final int[] minLens = new int[6];
        final int[] cftab = new int[MasterTemplatePickerFragment.API_ERR_COMMUNITY_USER_CREATED_COMMUNITIES_VERIFY];
        final char[] getAndMoveToFrontDecode_yy = new char[256];
        final char[][] temp_charArray2d = (char[][]) Array.newInstance((Class<?>) char.class, 6, BZip2Constants.MAX_ALPHA_SIZE);
        final byte[] recvDecodingTables_pos = new byte[6];

        Data(int i) {
            this.ll8 = new byte[i * 100000];
        }

        int[] initTT(int i) {
            int[] iArr = this.tt;
            if (iArr != null && iArr.length >= i) {
                return iArr;
            }
            int[] iArr2 = new int[i];
            this.tt = iArr2;
            return iArr2;
        }
    }
}
