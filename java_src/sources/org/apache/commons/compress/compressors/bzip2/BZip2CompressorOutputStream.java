package org.apache.commons.compress.compressors.bzip2;

import androidx.core.view.InputDeviceCompat;
import com.google.common.base.c;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Array;
import org.apache.commons.compress.compressors.CompressorOutputStream;

/* JADX INFO: loaded from: classes8.dex */
public class BZip2CompressorOutputStream extends CompressorOutputStream implements BZip2Constants {
    private static final int GREATER_ICOST = 15;
    private static final int LESSER_ICOST = 0;
    public static final int MAX_BLOCKSIZE = 9;
    public static final int MIN_BLOCKSIZE = 1;
    private final int allowableBlockSize;
    private int blockCRC;
    private final int blockSize100k;
    private BlockSort blockSorter;
    private int bsBuff;
    private int bsLive;
    private volatile boolean closed;
    private int combinedCRC;
    private final CRC crc;
    private int currentChar;
    private Data data;
    private int last;
    private int nInUse;
    private int nMTF;
    private OutputStream out;
    private int runLength;

    public BZip2CompressorOutputStream(OutputStream outputStream) throws IOException {
        this(outputStream, 9);
    }

    private static void hbAssignCodes(int[] iArr, byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        while (i10 <= i11) {
            for (int i14 = 0; i14 < i12; i14++) {
                if ((bArr[i14] & 255) == i10) {
                    iArr[i14] = i13;
                    i13++;
                }
            }
            i13 <<= 1;
            i10++;
        }
    }

    private void sendMTFValues5(int i10, int i11) throws IOException {
        bsW(3, i10);
        bsW(15, i11);
        OutputStream outputStream = this.out;
        byte[] bArr = this.data.selectorMtf;
        int i12 = this.bsLive;
        int i13 = this.bsBuff;
        for (int i14 = 0; i14 < i11; i14++) {
            int i15 = bArr[i14] & 255;
            for (int i16 = 0; i16 < i15; i16++) {
                while (i12 >= 8) {
                    outputStream.write(i13 >> 24);
                    i13 <<= 8;
                    i12 -= 8;
                }
                i13 |= 1 << (31 - i12);
                i12++;
            }
            while (i12 >= 8) {
                outputStream.write(i13 >> 24);
                i13 <<= 8;
                i12 -= 8;
            }
            i12++;
        }
        this.bsBuff = i13;
        this.bsLive = i12;
    }

    public final int getBlockSize() {
        return this.blockSize100k;
    }

    @Override // java.io.OutputStream
    public void write(int i10) throws IOException {
        if (this.closed) {
            throw new IOException("closed");
        }
        write0(i10);
    }

    static final class Data {
        final byte[] block;
        final int[] fmap;
        final int[] heap;
        int origPtr;
        final int[] parent;
        final byte[] sendMTFValues2_pos;
        final int[][] sendMTFValues_code;
        final short[] sendMTFValues_cost;
        final int[] sendMTFValues_fave;
        final int[][] sendMTFValues_rfreq;
        final boolean[] sentMTFValues4_inUse16;
        final char[] sfmap;
        final int[] weight;
        final boolean[] inUse = new boolean[256];
        final byte[] unseqToSeq = new byte[256];
        final int[] mtfFreq = new int[BZip2Constants.MAX_ALPHA_SIZE];
        final byte[] selector = new byte[BZip2Constants.MAX_SELECTORS];
        final byte[] selectorMtf = new byte[BZip2Constants.MAX_SELECTORS];
        final byte[] generateMTFValues_yy = new byte[256];
        final byte[][] sendMTFValues_len = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, 6, BZip2Constants.MAX_ALPHA_SIZE);

        Data(int i10) {
            int[] iArr = {6, BZip2Constants.MAX_ALPHA_SIZE};
            Class cls = Integer.TYPE;
            this.sendMTFValues_rfreq = (int[][]) Array.newInstance((Class<?>) cls, iArr);
            this.sendMTFValues_fave = new int[6];
            this.sendMTFValues_cost = new short[6];
            this.sendMTFValues_code = (int[][]) Array.newInstance((Class<?>) cls, 6, BZip2Constants.MAX_ALPHA_SIZE);
            this.sendMTFValues2_pos = new byte[6];
            this.sentMTFValues4_inUse16 = new boolean[16];
            this.heap = new int[260];
            this.weight = new int[516];
            this.parent = new int[516];
            int i11 = 100000 * i10;
            this.block = new byte[i11 + 21];
            this.fmap = new int[i11];
            this.sfmap = new char[i10 * 200000];
        }
    }

    public BZip2CompressorOutputStream(OutputStream outputStream, int i10) throws IOException {
        this.crc = new CRC();
        this.currentChar = -1;
        this.runLength = 0;
        if (i10 < 1) {
            throw new IllegalArgumentException("blockSize(" + i10 + ") < 1");
        }
        if (i10 <= 9) {
            this.blockSize100k = i10;
            this.out = outputStream;
            this.allowableBlockSize = (i10 * 100000) - 20;
            init();
            return;
        }
        throw new IllegalArgumentException("blockSize(" + i10 + ") > 9");
    }

    private void blockSort() {
        this.blockSorter.blockSort(this.data, this.last);
    }

    private void bsFinishedWithStream() throws IOException {
        while (this.bsLive > 0) {
            this.out.write(this.bsBuff >> 24);
            this.bsBuff <<= 8;
            this.bsLive -= 8;
        }
    }

    private void bsPutInt(int i10) throws IOException {
        bsW(8, (i10 >> 24) & 255);
        bsW(8, (i10 >> 16) & 255);
        bsW(8, (i10 >> 8) & 255);
        bsW(8, i10 & 255);
    }

    private void bsPutUByte(int i10) throws IOException {
        bsW(8, i10);
    }

    private void bsW(int i10, int i11) throws IOException {
        OutputStream outputStream = this.out;
        int i12 = this.bsLive;
        int i13 = this.bsBuff;
        while (i12 >= 8) {
            outputStream.write(i13 >> 24);
            i13 <<= 8;
            i12 -= 8;
        }
        this.bsBuff = (i11 << ((32 - i12) - i10)) | i13;
        this.bsLive = i12 + i10;
    }

    public static int chooseBlockSize(long j6) {
        if (j6 > 0) {
            return (int) Math.min((j6 / 132000) + 1, 9L);
        }
        return 9;
    }

    private void endBlock() throws IOException {
        int finalCRC = this.crc.getFinalCRC();
        this.blockCRC = finalCRC;
        int i10 = this.combinedCRC;
        this.combinedCRC = finalCRC ^ ((i10 >>> 31) | (i10 << 1));
        if (this.last == -1) {
            return;
        }
        blockSort();
        bsPutUByte(49);
        bsPutUByte(65);
        bsPutUByte(89);
        bsPutUByte(38);
        bsPutUByte(83);
        bsPutUByte(89);
        bsPutInt(this.blockCRC);
        bsW(1, 0);
        moveToFrontCodeAndSend();
    }

    private void endCompression() throws IOException {
        bsPutUByte(23);
        bsPutUByte(114);
        bsPutUByte(69);
        bsPutUByte(56);
        bsPutUByte(80);
        bsPutUByte(144);
        bsPutInt(this.combinedCRC);
        bsFinishedWithStream();
    }

    private void generateMTFValues() {
        int i10 = this.last;
        Data data = this.data;
        boolean[] zArr = data.inUse;
        byte[] bArr = data.block;
        int[] iArr = data.fmap;
        char[] cArr = data.sfmap;
        int[] iArr2 = data.mtfFreq;
        byte[] bArr2 = data.unseqToSeq;
        byte[] bArr3 = data.generateMTFValues_yy;
        int i11 = 0;
        for (int i12 = 0; i12 < 256; i12++) {
            if (zArr[i12]) {
                bArr2[i12] = (byte) i11;
                i11++;
            }
        }
        this.nInUse = i11;
        int i13 = i11 + 1;
        for (int i14 = i13; i14 >= 0; i14--) {
            iArr2[i14] = 0;
        }
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            } else {
                bArr3[i11] = (byte) i11;
            }
        }
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 <= i10; i17++) {
            byte b7 = bArr2[bArr[iArr[i17]] & 255];
            byte b10 = bArr3[0];
            int i18 = 0;
            while (b7 != b10) {
                i18++;
                byte b11 = bArr3[i18];
                bArr3[i18] = b10;
                b10 = b11;
            }
            bArr3[0] = b10;
            if (i18 == 0) {
                i15++;
            } else {
                if (i15 > 0) {
                    int i19 = i15 - 1;
                    while (true) {
                        if ((i19 & 1) == 0) {
                            cArr[i16] = 0;
                            i16++;
                            iArr2[0] = iArr2[0] + 1;
                        } else {
                            cArr[i16] = 1;
                            i16++;
                            iArr2[1] = iArr2[1] + 1;
                        }
                        if (i19 < 2) {
                            break;
                        } else {
                            i19 = (i19 - 2) >> 1;
                        }
                    }
                    i15 = 0;
                }
                int i20 = i18 + 1;
                cArr[i16] = (char) i20;
                i16++;
                iArr2[i20] = iArr2[i20] + 1;
            }
        }
        if (i15 > 0) {
            int i21 = i15 - 1;
            while (true) {
                if ((i21 & 1) == 0) {
                    cArr[i16] = 0;
                    i16++;
                    iArr2[0] = iArr2[0] + 1;
                } else {
                    cArr[i16] = 1;
                    i16++;
                    iArr2[1] = iArr2[1] + 1;
                }
                if (i21 < 2) {
                    break;
                } else {
                    i21 = (i21 - 2) >> 1;
                }
            }
        }
        cArr[i16] = (char) i13;
        iArr2[i13] = iArr2[i13] + 1;
        this.nMTF = i16 + 1;
    }

    private static void hbMakeCodeLengths(byte[] bArr, int[] iArr, Data data, int i10, int i11) {
        boolean z6;
        int[] iArr2 = data.heap;
        int[] iArr3 = data.weight;
        int[] iArr4 = data.parent;
        int i12 = i10;
        while (true) {
            int i13 = i12 - 1;
            int i14 = 1;
            if (i13 < 0) {
                break;
            }
            int i15 = iArr[i13];
            if (i15 != 0) {
                i14 = i15;
            }
            iArr3[i12] = i14 << 8;
            i12 = i13;
        }
        do {
            iArr2[0] = 0;
            iArr3[0] = 0;
            iArr4[0] = -2;
            int i16 = 0;
            for (int i17 = 1; i17 <= i10; i17++) {
                iArr4[i17] = -1;
                i16++;
                iArr2[i16] = i17;
                int i18 = i16;
                while (true) {
                    int i19 = iArr3[i17];
                    int i20 = i18 >> 1;
                    int i21 = iArr2[i20];
                    if (i19 < iArr3[i21]) {
                        iArr2[i18] = i21;
                        i18 = i20;
                    }
                }
                iArr2[i18] = i17;
            }
            int i22 = i10;
            while (i16 > 1) {
                int i23 = iArr2[1];
                int i24 = iArr2[i16];
                iArr2[1] = i24;
                int i25 = i16 - 1;
                int i26 = 1;
                while (true) {
                    int i27 = i26 << 1;
                    if (i27 > i25) {
                        break;
                    }
                    if (i27 < i25) {
                        int i28 = i27 + 1;
                        if (iArr3[iArr2[i28]] < iArr3[iArr2[i27]]) {
                            i27 = i28;
                        }
                    }
                    int i29 = iArr3[i24];
                    int i30 = iArr2[i27];
                    if (i29 < iArr3[i30]) {
                        break;
                    }
                    iArr2[i26] = i30;
                    i26 = i27;
                }
                iArr2[i26] = i24;
                int i31 = iArr2[1];
                int i32 = iArr2[i25];
                iArr2[1] = i32;
                int i33 = i16 - 2;
                int i34 = 1;
                while (true) {
                    int i35 = i34 << 1;
                    if (i35 > i33) {
                        break;
                    }
                    if (i35 < i33) {
                        int i36 = i35 + 1;
                        if (iArr3[iArr2[i36]] < iArr3[iArr2[i35]]) {
                            i35 = i36;
                        }
                    }
                    int i37 = iArr3[i32];
                    int i38 = iArr2[i35];
                    if (i37 < iArr3[i38]) {
                        break;
                    }
                    iArr2[i34] = i38;
                    i34 = i35;
                }
                iArr2[i34] = i32;
                i22++;
                iArr4[i31] = i22;
                iArr4[i23] = i22;
                int i39 = iArr3[i23];
                int i40 = iArr3[i31];
                int i41 = (i39 & InputDeviceCompat.SOURCE_ANY) + (i40 & InputDeviceCompat.SOURCE_ANY);
                int i42 = i39 & 255;
                int i43 = i40 & 255;
                if (i42 <= i43) {
                    i42 = i43;
                }
                iArr3[i22] = i41 | (i42 + 1);
                iArr4[i22] = -1;
                i16--;
                iArr2[i16] = i22;
                int i44 = iArr3[i22];
                int i45 = i16;
                while (true) {
                    int i46 = i45 >> 1;
                    int i47 = iArr2[i46];
                    if (i44 < iArr3[i47]) {
                        iArr2[i45] = i47;
                        i45 = i46;
                    }
                }
                iArr2[i45] = i22;
            }
            z6 = false;
            for (int i48 = 1; i48 <= i10; i48++) {
                int i49 = i48;
                int i50 = 0;
                while (true) {
                    i49 = iArr4[i49];
                    if (i49 < 0) {
                        break;
                    } else {
                        i50++;
                    }
                }
                bArr[i48 - 1] = (byte) i50;
                if (i50 > i11) {
                    z6 = true;
                }
            }
            if (z6) {
                for (int i51 = 1; i51 < i10; i51++) {
                    iArr3[i51] = ((iArr3[i51] >> 9) + 1) << 8;
                }
            }
        } while (z6);
    }

    private void init() throws IOException {
        bsPutUByte(66);
        bsPutUByte(90);
        this.data = new Data(this.blockSize100k);
        this.blockSorter = new BlockSort(this.data);
        bsPutUByte(104);
        bsPutUByte(this.blockSize100k + 48);
        this.combinedCRC = 0;
        initBlock();
    }

    private void initBlock() {
        this.crc.initialiseCRC();
        this.last = -1;
        boolean[] zArr = this.data.inUse;
        int i10 = 256;
        while (true) {
            i10--;
            if (i10 < 0) {
                return;
            } else {
                zArr[i10] = false;
            }
        }
    }

    private void moveToFrontCodeAndSend() throws IOException {
        bsW(24, this.data.origPtr);
        generateMTFValues();
        sendMTFValues();
    }

    private void sendMTFValues() throws IOException {
        byte[][] bArr = this.data.sendMTFValues_len;
        int i10 = 2;
        int i11 = this.nInUse + 2;
        int i12 = 6;
        while (true) {
            i12--;
            if (i12 < 0) {
                break;
            }
            byte[] bArr2 = bArr[i12];
            int i13 = i11;
            while (true) {
                i13--;
                if (i13 >= 0) {
                    bArr2[i13] = c.SI;
                }
            }
        }
        int i14 = this.nMTF;
        if (i14 >= 200) {
            if (i14 < 600) {
                i10 = 3;
            } else if (i14 < 1200) {
                i10 = 4;
            } else {
                i10 = i14 < 2400 ? 5 : 6;
            }
        }
        sendMTFValues0(i10, i11);
        int iSendMTFValues1 = sendMTFValues1(i10, i11);
        sendMTFValues2(i10, iSendMTFValues1);
        sendMTFValues3(i10, i11);
        sendMTFValues4();
        sendMTFValues5(i10, iSendMTFValues1);
        sendMTFValues6(i10, i11);
        sendMTFValues7();
    }

    private void sendMTFValues0(int i10, int i11) {
        Data data = this.data;
        byte[][] bArr = data.sendMTFValues_len;
        int[] iArr = data.mtfFreq;
        int i12 = this.nMTF;
        int i13 = 0;
        for (int i14 = i10; i14 > 0; i14--) {
            int i15 = i12 / i14;
            int i16 = i13 - 1;
            int i17 = i11 - 1;
            int i18 = 0;
            while (i18 < i15 && i16 < i17) {
                i16++;
                i18 += iArr[i16];
            }
            if (i16 > i13 && i14 != i10 && i14 != 1 && (1 & (i10 - i14)) != 0) {
                i18 -= iArr[i16];
                i16--;
            }
            byte[] bArr2 = bArr[i14 - 1];
            int i19 = i11;
            while (true) {
                i19--;
                if (i19 >= 0) {
                    if (i19 < i13 || i19 > i16) {
                        bArr2[i19] = c.SI;
                    } else {
                        bArr2[i19] = 0;
                    }
                }
            }
            i13 = i16 + 1;
            i12 -= i18;
        }
    }

    private int sendMTFValues1(int i10, int i11) {
        byte[] bArr;
        int i12;
        BZip2CompressorOutputStream bZip2CompressorOutputStream = this;
        Data data = bZip2CompressorOutputStream.data;
        int[][] iArr = data.sendMTFValues_rfreq;
        int[] iArr2 = data.sendMTFValues_fave;
        short[] sArr = data.sendMTFValues_cost;
        char[] cArr = data.sfmap;
        byte[] bArr2 = data.selector;
        byte[][] bArr3 = data.sendMTFValues_len;
        int i13 = 0;
        byte[] bArr4 = bArr3[0];
        byte[] bArr5 = bArr3[1];
        byte[] bArr6 = bArr3[2];
        byte[] bArr7 = bArr3[3];
        int i14 = 4;
        byte[] bArr8 = bArr3[4];
        byte[] bArr9 = bArr3[5];
        int i15 = bZip2CompressorOutputStream.nMTF;
        int i16 = 0;
        int i17 = 0;
        while (i16 < i14) {
            int i18 = i10;
            while (true) {
                i18--;
                if (i18 < 0) {
                    break;
                }
                iArr2[i18] = i13;
                int[] iArr3 = iArr[i18];
                int i19 = i11;
                while (true) {
                    i19--;
                    if (i19 >= 0) {
                        iArr3[i19] = i13;
                    }
                }
            }
            int i20 = i13;
            i17 = i20;
            while (i20 < bZip2CompressorOutputStream.nMTF) {
                int i21 = i20;
                int iMin = Math.min(i20 + 49, i15 - 1);
                if (i10 == 6) {
                    int i22 = i21;
                    short s = 0;
                    short s5 = 0;
                    short s10 = 0;
                    short s11 = 0;
                    short s12 = 0;
                    short s13 = 0;
                    while (i22 <= iMin) {
                        char c7 = cArr[i22];
                        int i23 = i15;
                        short s14 = (short) (s + (bArr4[c7] & 255));
                        byte[] bArr10 = bArr4;
                        short s15 = (short) (s5 + (bArr5[c7] & 255));
                        short s16 = (short) (s10 + (bArr6[c7] & 255));
                        short s17 = (short) (s11 + (bArr7[c7] & 255));
                        short s18 = (short) (s12 + (bArr8[c7] & 255));
                        i22++;
                        s13 = (short) (s13 + (bArr9[c7] & 255));
                        s12 = s18;
                        bArr4 = bArr10;
                        s11 = s17;
                        s10 = s16;
                        s5 = s15;
                        s = s14;
                        i15 = i23;
                    }
                    bArr = bArr4;
                    i12 = i15;
                    sArr[0] = s;
                    sArr[1] = s5;
                    sArr[2] = s10;
                    sArr[3] = s11;
                    sArr[4] = s12;
                    sArr[5] = s13;
                } else {
                    bArr = bArr4;
                    i12 = i15;
                    int i24 = i10;
                    while (true) {
                        i24--;
                        if (i24 < 0) {
                            break;
                        }
                        sArr[i24] = 0;
                    }
                    for (int i25 = i21; i25 <= iMin; i25++) {
                        char c10 = cArr[i25];
                        int i26 = i10;
                        while (true) {
                            i26--;
                            if (i26 >= 0) {
                                sArr[i26] = (short) (sArr[i26] + (bArr3[i26][c10] & 255));
                            }
                        }
                    }
                }
                short s19 = 999999999;
                int i27 = i10;
                int i28 = -1;
                while (true) {
                    i27--;
                    if (i27 < 0) {
                        break;
                    }
                    byte[] bArr11 = bArr5;
                    short s20 = sArr[i27];
                    if (s20 < s19) {
                        s19 = s20;
                        i28 = i27;
                    }
                    bArr5 = bArr11;
                }
                byte[] bArr12 = bArr5;
                iArr2[i28] = iArr2[i28] + 1;
                bArr2[i17] = (byte) i28;
                i17++;
                int[] iArr4 = iArr[i28];
                for (int i29 = i21; i29 <= iMin; i29++) {
                    char c11 = cArr[i29];
                    iArr4[c11] = iArr4[c11] + 1;
                }
                i20 = iMin + 1;
                bArr5 = bArr12;
                i15 = i12;
                bArr4 = bArr;
            }
            byte[] bArr13 = bArr4;
            byte[] bArr14 = bArr5;
            int i30 = i15;
            int i31 = 0;
            while (i31 < i10) {
                hbMakeCodeLengths(bArr3[i31], iArr[i31], bZip2CompressorOutputStream.data, i11, 20);
                i31++;
                bZip2CompressorOutputStream = this;
            }
            i16++;
            i13 = 0;
            bZip2CompressorOutputStream = this;
            i14 = 4;
            bArr5 = bArr14;
            i15 = i30;
            bArr4 = bArr13;
        }
        return i17;
    }

    private void sendMTFValues2(int i10, int i11) {
        Data data = this.data;
        byte[] bArr = data.sendMTFValues2_pos;
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            } else {
                bArr[i10] = (byte) i10;
            }
        }
        for (int i12 = 0; i12 < i11; i12++) {
            byte b7 = data.selector[i12];
            byte b10 = bArr[0];
            int i13 = 0;
            while (b7 != b10) {
                i13++;
                byte b11 = bArr[i13];
                bArr[i13] = b10;
                b10 = b11;
            }
            bArr[0] = b10;
            data.selectorMtf[i12] = (byte) i13;
        }
    }

    private void sendMTFValues3(int i10, int i11) {
        Data data = this.data;
        int[][] iArr = data.sendMTFValues_code;
        byte[][] bArr = data.sendMTFValues_len;
        for (int i12 = 0; i12 < i10; i12++) {
            byte[] bArr2 = bArr[i12];
            int i13 = 32;
            int i14 = i11;
            int i15 = 0;
            while (true) {
                i14--;
                if (i14 >= 0) {
                    int i16 = bArr2[i14] & 255;
                    if (i16 > i15) {
                        i15 = i16;
                    }
                    if (i16 < i13) {
                        i13 = i16;
                    }
                }
            }
            hbAssignCodes(iArr[i12], bArr[i12], i13, i15, i11);
        }
    }

    private void sendMTFValues4() throws IOException {
        Data data = this.data;
        boolean[] zArr = data.inUse;
        boolean[] zArr2 = data.sentMTFValues4_inUse16;
        int i10 = 16;
        while (true) {
            i10--;
            if (i10 < 0) {
                break;
            }
            zArr2[i10] = false;
            int i11 = i10 * 16;
            int i12 = 16;
            while (true) {
                i12--;
                if (i12 >= 0) {
                    if (zArr[i11 + i12]) {
                        zArr2[i10] = true;
                    }
                }
            }
        }
        for (int i13 = 0; i13 < 16; i13++) {
            bsW(1, zArr2[i13] ? 1 : 0);
        }
        OutputStream outputStream = this.out;
        int i14 = this.bsLive;
        int i15 = this.bsBuff;
        for (int i16 = 0; i16 < 16; i16++) {
            if (zArr2[i16]) {
                int i17 = i16 * 16;
                for (int i18 = 0; i18 < 16; i18++) {
                    while (i14 >= 8) {
                        outputStream.write(i15 >> 24);
                        i15 <<= 8;
                        i14 -= 8;
                    }
                    if (zArr[i17 + i18]) {
                        i15 |= 1 << (31 - i14);
                    }
                    i14++;
                }
            }
        }
        this.bsBuff = i15;
        this.bsLive = i14;
    }

    private void sendMTFValues6(int i10, int i11) throws IOException {
        byte[][] bArr = this.data.sendMTFValues_len;
        OutputStream outputStream = this.out;
        int i12 = this.bsLive;
        int i13 = this.bsBuff;
        for (int i14 = 0; i14 < i10; i14++) {
            byte[] bArr2 = bArr[i14];
            int i15 = bArr2[0] & 255;
            while (i12 >= 8) {
                outputStream.write(i13 >> 24);
                i13 <<= 8;
                i12 -= 8;
            }
            i13 |= i15 << (27 - i12);
            i12 += 5;
            for (int i16 = 0; i16 < i11; i16++) {
                int i17 = bArr2[i16] & 255;
                while (i15 < i17) {
                    while (i12 >= 8) {
                        outputStream.write(i13 >> 24);
                        i13 <<= 8;
                        i12 -= 8;
                    }
                    i13 |= 2 << (30 - i12);
                    i12 += 2;
                    i15++;
                }
                while (i15 > i17) {
                    while (i12 >= 8) {
                        outputStream.write(i13 >> 24);
                        i13 <<= 8;
                        i12 -= 8;
                    }
                    i13 |= 3 << (30 - i12);
                    i12 += 2;
                    i15--;
                }
                while (i12 >= 8) {
                    outputStream.write(i13 >> 24);
                    i13 <<= 8;
                    i12 -= 8;
                }
                i12++;
            }
        }
        this.bsBuff = i13;
        this.bsLive = i12;
    }

    private void sendMTFValues7() throws IOException {
        Data data = this.data;
        byte[][] bArr = data.sendMTFValues_len;
        int[][] iArr = data.sendMTFValues_code;
        OutputStream outputStream = this.out;
        byte[] bArr2 = data.selector;
        char[] cArr = data.sfmap;
        int i10 = this.nMTF;
        int i11 = this.bsLive;
        int i12 = this.bsBuff;
        int i13 = 0;
        int i14 = 0;
        while (i13 < i10) {
            int iMin = Math.min(i13 + 49, i10 - 1);
            int i15 = bArr2[i14] & 255;
            int[] iArr2 = iArr[i15];
            byte[] bArr3 = bArr[i15];
            while (i13 <= iMin) {
                char c7 = cArr[i13];
                while (i11 >= 8) {
                    outputStream.write(i12 >> 24);
                    i12 <<= 8;
                    i11 -= 8;
                }
                int i16 = bArr3[c7] & 255;
                i12 |= iArr2[c7] << ((32 - i11) - i16);
                i11 += i16;
                i13++;
            }
            i13 = iMin + 1;
            i14++;
        }
        this.bsBuff = i12;
        this.bsLive = i11;
    }

    private void write0(int i10) throws IOException {
        int i11 = this.currentChar;
        if (i11 == -1) {
            this.currentChar = i10 & 255;
            this.runLength++;
            return;
        }
        int i12 = i10 & 255;
        if (i11 != i12) {
            writeRun();
            this.runLength = 1;
            this.currentChar = i12;
            return;
        }
        int i13 = this.runLength + 1;
        this.runLength = i13;
        if (i13 > 254) {
            writeRun();
            this.currentChar = -1;
            this.runLength = 0;
        }
    }

    private void writeRun() throws IOException {
        int i10 = this.last;
        if (i10 >= this.allowableBlockSize) {
            endBlock();
            initBlock();
            writeRun();
            return;
        }
        int i11 = this.currentChar;
        Data data = this.data;
        data.inUse[i11] = true;
        byte b7 = (byte) i11;
        int i12 = this.runLength;
        this.crc.updateCRC(i11, i12);
        if (i12 == 1) {
            data.block[i10 + 2] = b7;
            this.last = i10 + 1;
            return;
        }
        if (i12 == 2) {
            byte[] bArr = data.block;
            int i13 = i10 + 2;
            bArr[i13] = b7;
            bArr[i10 + 3] = b7;
            this.last = i13;
            return;
        }
        if (i12 == 3) {
            byte[] bArr2 = data.block;
            bArr2[i10 + 2] = b7;
            int i14 = i10 + 3;
            bArr2[i14] = b7;
            bArr2[i10 + 4] = b7;
            this.last = i14;
            return;
        }
        int i15 = i12 - 4;
        data.inUse[i15] = true;
        byte[] bArr3 = data.block;
        bArr3[i10 + 2] = b7;
        bArr3[i10 + 3] = b7;
        bArr3[i10 + 4] = b7;
        int i16 = i10 + 5;
        bArr3[i16] = b7;
        bArr3[i10 + 6] = (byte) i15;
        this.last = i16;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.closed) {
            return;
        }
        OutputStream outputStream = this.out;
        finish();
        outputStream.close();
    }

    protected void finalize() throws Throwable {
        if (!this.closed) {
            System.err.println("Unclosed BZip2CompressorOutputStream detected, will *not* close it");
        }
        super.finalize();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void finish() throws IOException {
        if (this.closed) {
            return;
        }
        this.closed = true;
        try {
            if (this.runLength > 0) {
                writeRun();
            }
            this.currentChar = -1;
            endBlock();
            endCompression();
        } finally {
            this.out = null;
            this.blockSorter = null;
            this.data = null;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        OutputStream outputStream = this.out;
        if (outputStream != null) {
            outputStream.flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i10, int i11) throws IOException {
        if (i10 < 0) {
            throw new IndexOutOfBoundsException("offs(" + i10 + ") < 0.");
        }
        if (i11 >= 0) {
            int i12 = i10 + i11;
            if (i12 <= bArr.length) {
                if (this.closed) {
                    throw new IOException("stream closed");
                }
                while (i10 < i12) {
                    write0(bArr[i10]);
                    i10++;
                }
                return;
            }
            throw new IndexOutOfBoundsException("offs(" + i10 + ") + len(" + i11 + ") > buf.length(" + bArr.length + ").");
        }
        throw new IndexOutOfBoundsException("len(" + i11 + ") < 0.");
    }
}
