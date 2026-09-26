package org.apache.commons.compress.compressors.bzip2;

import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteOrder;
import java.util.Arrays;
import org.apache.commons.compress.compressors.CompressorInputStream;
import org.apache.commons.compress.utils.BitInputStream;
import org.apache.commons.compress.utils.CloseShieldFilterInputStream;

/* JADX INFO: loaded from: classes4.dex */
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

    private static final class Data {
        final int[][] base;
        final int[] cftab;
        final char[] getAndMoveToFrontDecode_yy;
        final int[][] limit;
        byte[] ll8;
        final int[] minLens;
        final int[][] perm;
        final byte[] recvDecodingTables_pos;
        final char[][] temp_charArray2d;
        int[] tt;
        final boolean[] inUse = new boolean[256];
        final byte[] seqToUnseq = new byte[256];
        final byte[] selector = new byte[BZip2Constants.MAX_SELECTORS];
        final byte[] selectorMtf = new byte[BZip2Constants.MAX_SELECTORS];
        final int[] unzftab = new int[256];

        int[] initTT(int i10) {
            int[] iArr = this.tt;
            if (iArr != null && iArr.length >= i10) {
                return iArr;
            }
            int[] iArr2 = new int[i10];
            this.tt = iArr2;
            return iArr2;
        }

        Data(int i10) {
            int[] iArr = {6, BZip2Constants.MAX_ALPHA_SIZE};
            Class cls = Integer.TYPE;
            this.limit = (int[][]) Array.newInstance((Class<?>) cls, iArr);
            this.base = (int[][]) Array.newInstance((Class<?>) cls, 6, BZip2Constants.MAX_ALPHA_SIZE);
            this.perm = (int[][]) Array.newInstance((Class<?>) cls, 6, BZip2Constants.MAX_ALPHA_SIZE);
            this.minLens = new int[6];
            this.cftab = new int[257];
            this.getAndMoveToFrontDecode_yy = new char[256];
            this.temp_charArray2d = (char[][]) Array.newInstance((Class<?>) Character.TYPE, 6, BZip2Constants.MAX_ALPHA_SIZE);
            this.recvDecodingTables_pos = new byte[6];
            this.ll8 = new byte[i10 * 100000];
        }
    }

    public BZip2CompressorInputStream(InputStream inputStream) throws IOException {
        this(inputStream, false);
    }

    private static boolean bsGetBit(BitInputStream bitInputStream) throws IOException {
        return bsR(bitInputStream, 1) != 0;
    }

    private static void hbCreateDecodeTables(int[] iArr, int[] iArr2, int[] iArr3, char[] cArr, int i10, int i11, int i12) throws IOException {
        int i13 = 0;
        int i14 = 0;
        for (int i15 = i10; i15 <= i11; i15++) {
            for (int i16 = 0; i16 < i12; i16++) {
                if (cArr[i16] == i15) {
                    iArr3[i14] = i16;
                    i14++;
                }
            }
        }
        int i17 = 23;
        while (true) {
            i17--;
            if (i17 <= 0) {
                break;
            }
            iArr2[i17] = 0;
            iArr[i17] = 0;
        }
        for (int i18 = 0; i18 < i12; i18++) {
            char c7 = cArr[i18];
            checkBounds(c7, BZip2Constants.MAX_ALPHA_SIZE, "length");
            int i19 = c7 + 1;
            iArr2[i19] = iArr2[i19] + 1;
        }
        int i20 = iArr2[0];
        for (int i21 = 1; i21 < 23; i21++) {
            i20 += iArr2[i21];
            iArr2[i21] = i20;
        }
        int i22 = iArr2[i10];
        int i23 = i10;
        while (i23 <= i11) {
            int i24 = i23 + 1;
            int i25 = iArr2[i24];
            int i26 = i13 + (i25 - i22);
            iArr[i23] = i26 - 1;
            i13 = i26 << 1;
            i23 = i24;
            i22 = i25;
        }
        for (int i27 = i10 + 1; i27 <= i11; i27++) {
            iArr2[i27] = ((iArr[i27 - 1] + 1) << 1) - iArr2[i27];
        }
    }

    public static boolean matches(byte[] bArr, int i10) {
        return i10 >= 3 && bArr[0] == 66 && bArr[1] == 90 && bArr[2] == 104;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        if (this.bin == null) {
            throw new IOException("stream closed");
        }
        int i10 = read0();
        count(i10 < 0 ? -1 : 1);
        return i10;
    }

    public BZip2CompressorInputStream(InputStream inputStream, boolean z6) throws IOException {
        this.crc = new CRC();
        this.currentState = 1;
        this.bin = new BitInputStream(inputStream == System.in ? new CloseShieldFilterInputStream(inputStream) : inputStream, ByteOrder.BIG_ENDIAN);
        this.decompressConcatenated = z6;
        init(true);
        initBlock();
    }

    private static int bsGetInt(BitInputStream bitInputStream) throws IOException {
        return bsR(bitInputStream, 32);
    }

    private static char bsGetUByte(BitInputStream bitInputStream) throws IOException {
        return (char) bsR(bitInputStream, 8);
    }

    private static void checkBounds(int i10, int i11, String str) throws IOException {
        if (i10 < 0) {
            throw new IOException("Corrupted input, " + str + " value negative");
        }
        if (i10 < i11) {
            return;
        }
        throw new IOException("Corrupted input, " + str + " value too big");
    }

    private boolean complete() throws IOException {
        int iBsGetInt = bsGetInt(this.bin);
        this.storedCombinedCRC = iBsGetInt;
        this.currentState = 0;
        this.data = null;
        if (iBsGetInt == this.computedCombinedCRC) {
            return (this.decompressConcatenated && init(false)) ? false : true;
        }
        throw new IOException("BZip2 CRC error");
    }

    private void createHuffmanDecodingTables(int i10, int i11) throws IOException {
        Data data = this.data;
        char[][] cArr = data.temp_charArray2d;
        int[] iArr = data.minLens;
        int[][] iArr2 = data.limit;
        int[][] iArr3 = data.base;
        int[][] iArr4 = data.perm;
        for (int i12 = 0; i12 < i11; i12++) {
            char[] cArr2 = cArr[i12];
            char c7 = ' ';
            int i13 = i10;
            char c10 = 0;
            while (true) {
                i13--;
                if (i13 >= 0) {
                    char c11 = cArr2[i13];
                    if (c11 > c10) {
                        c10 = c11;
                    }
                    if (c11 < c7) {
                        c7 = c11;
                    }
                }
            }
            hbCreateDecodeTables(iArr2[i12], iArr3[i12], iArr4[i12], cArr[i12], c7, c10, i10);
            iArr[i12] = c7;
        }
    }

    private void endBlock() throws IOException {
        int finalCRC = this.crc.getFinalCRC();
        this.computedBlockCRC = finalCRC;
        int i10 = this.storedBlockCRC;
        if (i10 == finalCRC) {
            int i11 = this.computedCombinedCRC;
            this.computedCombinedCRC = finalCRC ^ ((i11 >>> 31) | (i11 << 1));
        } else {
            int i12 = this.storedCombinedCRC;
            this.computedCombinedCRC = ((i12 >>> 31) | (i12 << 1)) ^ i10;
            throw new IOException("BZip2 CRC error");
        }
    }

    private void getAndMoveToFrontDecode() throws IOException {
        String str;
        char c7;
        int i10;
        this = this;
        BitInputStream bitInputStream = this.bin;
        this.origPtr = bsR(bitInputStream, 24);
        recvDecodingTables();
        Data data = this.data;
        byte[] bArr = data.ll8;
        int[] iArr = data.unzftab;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.seqToUnseq;
        char[] cArr = data.getAndMoveToFrontDecode_yy;
        int[] iArr2 = data.minLens;
        int[][] iArr3 = data.limit;
        int[][] iArr4 = data.base;
        int[][] iArr5 = data.perm;
        int i11 = this.blockSize100k * 100000;
        int i12 = 256;
        while (true) {
            i12--;
            if (i12 < 0) {
                break;
            }
            cArr[i12] = (char) i12;
            iArr[i12] = 0;
        }
        int i13 = this.nInUse + 1;
        int andMoveToFrontDecode0 = getAndMoveToFrontDecode0();
        int i14 = bArr2[0] & 255;
        checkBounds(i14, 6, "zt");
        int[] iArr6 = iArr4[i14];
        int[] iArr7 = iArr3[i14];
        int[] iArr8 = iArr5[i14];
        int i15 = iArr2[i14];
        int i16 = andMoveToFrontDecode0;
        int i17 = 49;
        int i18 = -1;
        int i19 = 0;
        while (i16 != i13) {
            i13 = i13;
            String str2 = "groupNo";
            BitInputStream bitInputStream2 = bitInputStream;
            if (i16 == 0 || i16 == 1) {
                int[] iArr9 = iArr2;
                int i20 = i11;
                int i21 = i16;
                String str3 = "block overrun";
                int i22 = i17;
                int i23 = -1;
                int i24 = i15;
                int[] iArr10 = iArr7;
                int i25 = i18;
                int i26 = i21;
                int i27 = i19;
                int[] iArr11 = iArr8;
                int[] iArr12 = iArr6;
                int i28 = 1;
                while (true) {
                    if (i26 != 0) {
                        str = str3;
                        if (i26 != 1) {
                            break;
                        } else {
                            i23 += i28 << 1;
                        }
                    } else {
                        i23 += i28;
                        str = str3;
                    }
                    if (i22 == 0) {
                        int i29 = i27 + 1;
                        checkBounds(i29, BZip2Constants.MAX_SELECTORS, str2);
                        int i30 = bArr2[i29] & 255;
                        checkBounds(i30, 6, "zt");
                        iArr12 = iArr4[i30];
                        iArr10 = iArr3[i30];
                        iArr11 = iArr5[i30];
                        i24 = iArr9[i30];
                        i27 = i29;
                        i22 = 49;
                    } else {
                        i22--;
                    }
                    int i31 = i24;
                    checkBounds(i31, BZip2Constants.MAX_ALPHA_SIZE, "zn");
                    int iBsR = bsR(bitInputStream2, i31);
                    int i32 = i31;
                    while (iBsR > iArr10[i32]) {
                        int i33 = i32 + 1;
                        checkBounds(i33, BZip2Constants.MAX_ALPHA_SIZE, "zn");
                        iBsR = (iBsR << 1) | bsR(bitInputStream2, 1);
                        i32 = i33;
                        iArr5 = iArr5;
                    }
                    int i34 = iBsR - iArr12[i32];
                    checkBounds(i34, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
                    i28 <<= 1;
                    i24 = i31;
                    str3 = str;
                    iArr5 = iArr5;
                    i26 = iArr11[i34];
                    str2 = str2;
                }
                int[][] iArr13 = iArr5;
                char c10 = cArr[0];
                checkBounds(c10, 256, "yy");
                byte b7 = bArr3[c10];
                int i35 = b7 & 255;
                iArr[i35] = iArr[i35] + i23 + 1;
                int i36 = i25;
                while (true) {
                    int i37 = i23 - 1;
                    if (i23 < 0) {
                        break;
                    }
                    i36++;
                    bArr[i36] = b7;
                    i23 = i37;
                }
                if (i36 >= i20) {
                    throw new IOException(str);
                }
                bitInputStream = bitInputStream2;
                i11 = i20;
                iArr6 = iArr12;
                iArr7 = iArr10;
                iArr8 = iArr11;
                i15 = i24;
                i19 = i27;
                i17 = i22;
                iArr2 = iArr9;
                iArr5 = iArr13;
                i16 = i26;
                i18 = i36;
            } else {
                i18++;
                if (i18 >= i11) {
                    throw new IOException("block overrun");
                }
                int i38 = i11;
                checkBounds(i16, 257, "nextSym");
                int i39 = i16 - 1;
                char c11 = cArr[i39];
                int[] iArr14 = iArr2;
                checkBounds(c11, 256, "yy");
                byte b10 = bArr3[c11];
                int i40 = b10 & 255;
                iArr[i40] = iArr[i40] + 1;
                bArr[i18] = b10;
                if (i16 <= 16) {
                    while (i39 > 0) {
                        int i41 = i39 - 1;
                        cArr[i39] = cArr[i41];
                        i39 = i41;
                    }
                    c7 = 0;
                } else {
                    c7 = 0;
                    System.arraycopy(cArr, 0, cArr, 1, i39);
                }
                cArr[c7] = c11;
                if (i17 == 0) {
                    int i42 = i19 + 1;
                    checkBounds(i42, BZip2Constants.MAX_SELECTORS, "groupNo");
                    int i43 = bArr2[i42] & 255;
                    checkBounds(i43, 6, "zt");
                    int[] iArr15 = iArr4[i43];
                    int[] iArr16 = iArr3[i43];
                    int[] iArr17 = iArr5[i43];
                    i10 = iArr14[i43];
                    i19 = i42;
                    iArr6 = iArr15;
                    iArr7 = iArr16;
                    iArr8 = iArr17;
                    i17 = 49;
                } else {
                    i17--;
                    i10 = i15;
                }
                checkBounds(i10, BZip2Constants.MAX_ALPHA_SIZE, "zn");
                int iBsR2 = bsR(bitInputStream2, i10);
                int i44 = i10;
                while (iBsR2 > iArr7[i44]) {
                    i44++;
                    checkBounds(i44, BZip2Constants.MAX_ALPHA_SIZE, "zn");
                    iBsR2 = (iBsR2 << 1) | bsR(bitInputStream2, 1);
                }
                int i45 = iBsR2 - iArr6[i44];
                checkBounds(i45, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
                i16 = iArr8[i45];
                i15 = i10;
                bitInputStream = bitInputStream2;
                i11 = i38;
                iArr2 = iArr14;
            }
        }
        this.last = i18;
    }

    private int getAndMoveToFrontDecode0() throws IOException {
        Data data = this.data;
        int i10 = data.selector[0] & 255;
        checkBounds(i10, 6, "zt");
        int[] iArr = data.limit[i10];
        int i11 = data.minLens[i10];
        checkBounds(i11, BZip2Constants.MAX_ALPHA_SIZE, "zn");
        int iBsR = bsR(this.bin, i11);
        while (iBsR > iArr[i11]) {
            i11++;
            checkBounds(i11, BZip2Constants.MAX_ALPHA_SIZE, "zn");
            iBsR = (iBsR << 1) | bsR(this.bin, 1);
        }
        int i12 = iBsR - data.base[i10][i11];
        checkBounds(i12, BZip2Constants.MAX_ALPHA_SIZE, "zvec");
        return data.perm[i10][i12];
    }

    private boolean init(boolean z6) throws IOException {
        BitInputStream bitInputStream = this.bin;
        if (bitInputStream == null) {
            throw new IOException("No InputStream");
        }
        if (!z6) {
            bitInputStream.clearBitCache();
        }
        int nextByte = readNextByte(this.bin);
        if (nextByte == -1 && !z6) {
            return false;
        }
        int nextByte2 = readNextByte(this.bin);
        int nextByte3 = readNextByte(this.bin);
        if (nextByte != 66 || nextByte2 != 90 || nextByte3 != 104) {
            throw new IOException(z6 ? "Stream is not in the BZip2 format" : "Garbage after a valid BZip2 stream");
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

    private void makeMaps() {
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.seqToUnseq;
        int i10 = 0;
        for (int i11 = 0; i11 < 256; i11++) {
            if (zArr[i11]) {
                bArr[i10] = (byte) i11;
                i10++;
            }
        }
        this.nInUse = i10;
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

    private void recvDecodingTables() throws IOException {
        BitInputStream bitInputStream = this.bin;
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.recvDecodingTables_pos;
        byte[] bArr2 = data.selector;
        byte[] bArr3 = data.selectorMtf;
        int i10 = 0;
        for (int i11 = 0; i11 < 16; i11++) {
            if (bsGetBit(bitInputStream)) {
                i10 |= 1 << i11;
            }
        }
        Arrays.fill(zArr, false);
        for (int i12 = 0; i12 < 16; i12++) {
            if (((1 << i12) & i10) != 0) {
                int i13 = i12 << 4;
                for (int i14 = 0; i14 < 16; i14++) {
                    if (bsGetBit(bitInputStream)) {
                        zArr[i13 + i14] = true;
                    }
                }
            }
        }
        makeMaps();
        int i15 = this.nInUse + 2;
        int iBsR = bsR(bitInputStream, 3);
        int iBsR2 = bsR(bitInputStream, 15);
        checkBounds(i15, 259, "alphaSize");
        checkBounds(iBsR, 7, "nGroups");
        checkBounds(iBsR2, 18003, "nSelectors");
        for (int i16 = 0; i16 < iBsR2; i16++) {
            int i17 = 0;
            while (bsGetBit(bitInputStream)) {
                i17++;
            }
            bArr3[i16] = (byte) i17;
        }
        int i18 = iBsR;
        while (true) {
            i18--;
            if (i18 < 0) {
                break;
            } else {
                bArr[i18] = (byte) i18;
            }
        }
        for (int i19 = 0; i19 < iBsR2; i19++) {
            int i20 = bArr3[i19] & 255;
            checkBounds(i20, 6, "selectorMtf");
            byte b7 = bArr[i20];
            while (i20 > 0) {
                bArr[i20] = bArr[i20 - 1];
                i20--;
            }
            bArr[0] = b7;
            bArr2[i19] = b7;
        }
        char[][] cArr = data.temp_charArray2d;
        for (int i21 = 0; i21 < iBsR; i21++) {
            int iBsR3 = bsR(bitInputStream, 5);
            char[] cArr2 = cArr[i21];
            for (int i22 = 0; i22 < i15; i22++) {
                while (bsGetBit(bitInputStream)) {
                    iBsR3 += bsGetBit(bitInputStream) ? -1 : 1;
                }
                cArr2[i22] = (char) iBsR3;
            }
        }
        createHuffmanDecodingTables(i15, iBsR);
    }

    private int setupBlock() throws IOException {
        Data data;
        if (this.currentState == 0 || (data = this.data) == null) {
            return -1;
        }
        int[] iArr = data.cftab;
        int i10 = this.last + 1;
        int[] iArrInitTT = data.initTT(i10);
        Data data2 = this.data;
        byte[] bArr = data2.ll8;
        iArr[0] = 0;
        System.arraycopy(data2.unzftab, 0, iArr, 1, 256);
        int i11 = iArr[0];
        for (int i12 = 1; i12 <= 256; i12++) {
            i11 += iArr[i12];
            iArr[i12] = i11;
        }
        int i13 = this.last;
        for (int i14 = 0; i14 <= i13; i14++) {
            int i15 = bArr[i14] & 255;
            int i16 = iArr[i15];
            iArr[i15] = i16 + 1;
            checkBounds(i16, i10, "tt index");
            iArrInitTT[i16] = i14;
        }
        int i17 = this.origPtr;
        if (i17 < 0 || i17 >= iArrInitTT.length) {
            throw new IOException("stream corrupted");
        }
        this.su_tPos = iArrInitTT[i17];
        this.su_count = 0;
        this.su_i2 = 0;
        this.su_ch2 = 256;
        if (!this.blockRandomised) {
            return setupNoRandPartA();
        }
        this.su_rNToGo = 0;
        this.su_rTPos = 0;
        return setupRandPartA();
    }

    private int setupNoRandPartA() throws IOException {
        if (this.su_i2 > this.last) {
            this.currentState = 5;
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i10 = this.su_tPos;
        int i11 = bArr[i10] & 255;
        this.su_ch2 = i11;
        checkBounds(i10, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        this.su_i2++;
        this.currentState = 6;
        this.crc.updateCRC(i11);
        return i11;
    }

    private int setupNoRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.su_count = 1;
            return setupNoRandPartA();
        }
        int i10 = this.su_count + 1;
        this.su_count = i10;
        if (i10 < 4) {
            return setupNoRandPartA();
        }
        checkBounds(this.su_tPos, this.data.ll8.length, "su_tPos");
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i11 = this.su_tPos;
        this.su_z = (char) (bArr[i11] & 255);
        this.su_tPos = data.tt[i11];
        this.su_j2 = 0;
        return setupNoRandPartC();
    }

    private int setupNoRandPartC() throws IOException {
        if (this.su_j2 >= this.su_z) {
            this.su_i2++;
            this.su_count = 0;
            return setupNoRandPartA();
        }
        int i10 = this.su_ch2;
        this.crc.updateCRC(i10);
        this.su_j2++;
        this.currentState = 7;
        return i10;
    }

    private int setupRandPartA() throws IOException {
        if (this.su_i2 > this.last) {
            endBlock();
            initBlock();
            return setupBlock();
        }
        this.su_chPrev = this.su_ch2;
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i10 = this.su_tPos;
        int i11 = bArr[i10] & 255;
        checkBounds(i10, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        int i12 = this.su_rNToGo;
        if (i12 == 0) {
            this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
            int i13 = this.su_rTPos + 1;
            this.su_rTPos = i13;
            if (i13 == 512) {
                this.su_rTPos = 0;
            }
        } else {
            this.su_rNToGo = i12 - 1;
        }
        int i14 = i11 ^ (this.su_rNToGo == 1 ? 1 : 0);
        this.su_ch2 = i14;
        this.su_i2++;
        this.currentState = 3;
        this.crc.updateCRC(i14);
        return i14;
    }

    private int setupRandPartB() throws IOException {
        if (this.su_ch2 != this.su_chPrev) {
            this.currentState = 2;
            this.su_count = 1;
            return setupRandPartA();
        }
        int i10 = this.su_count + 1;
        this.su_count = i10;
        if (i10 < 4) {
            this.currentState = 2;
            return setupRandPartA();
        }
        Data data = this.data;
        byte[] bArr = data.ll8;
        int i11 = this.su_tPos;
        this.su_z = (char) (bArr[i11] & 255);
        checkBounds(i11, data.tt.length, "su_tPos");
        this.su_tPos = this.data.tt[this.su_tPos];
        int i12 = this.su_rNToGo;
        if (i12 == 0) {
            this.su_rNToGo = Rand.rNums(this.su_rTPos) - 1;
            int i13 = this.su_rTPos + 1;
            this.su_rTPos = i13;
            if (i13 == 512) {
                this.su_rTPos = 0;
            }
        } else {
            this.su_rNToGo = i12 - 1;
        }
        this.su_j2 = 0;
        this.currentState = 4;
        if (this.su_rNToGo == 1) {
            this.su_z = (char) (this.su_z ^ 1);
        }
        return setupRandPartC();
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

    private static int bsR(BitInputStream bitInputStream, int i10) throws IOException {
        long bits = bitInputStream.readBits(i10);
        if (bits >= 0) {
            return (int) bits;
        }
        throw new IOException("unexpected end of stream");
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("offs(" + i10 + ") < 0.");
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 > bArr.length) {
                throw new IndexOutOfBoundsException("offs(" + i10 + ") + len(" + i11 + ") > dest.length(" + bArr.length + ").");
            }
            if (this.bin == null) {
                throw new IOException("stream closed");
            }
            if (i11 == 0) {
                return 0;
            }
            int i13 = i10;
            while (i13 < i12) {
                int i14 = read0();
                if (i14 < 0) {
                    break;
                }
                bArr[i13] = (byte) i14;
                count(1);
                i13++;
            }
            if (i13 == i10) {
                return -1;
            }
            return i13 - i10;
        }
        throw new IndexOutOfBoundsException("len(" + i11 + ") < 0.");
    }
}
