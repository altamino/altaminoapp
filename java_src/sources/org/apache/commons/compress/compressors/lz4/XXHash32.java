package org.apache.commons.compress.compressors.lz4;

import java.util.zip.Checksum;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes9.dex */
public class XXHash32 implements Checksum {
    private static final int BUF_SIZE = 16;
    private static final int PRIME1 = -1640531535;
    private static final int PRIME2 = -2048144777;
    private static final int PRIME3 = -1028477379;
    private static final int PRIME4 = 668265263;
    private static final int PRIME5 = 374761393;
    private static final int ROTATE_BITS = 13;
    private final byte[] buffer;
    private final byte[] oneByte;
    private int pos;
    private final int seed;
    private final int[] state;
    private int totalLen;

    public XXHash32() {
        this(0);
    }

    private static int getInt(byte[] bArr, int i10) {
        return (int) (ByteUtils.fromLittleEndian(bArr, i10, 4) & 4294967295L);
    }

    @Override // java.util.zip.Checksum
    public void update(int i10) {
        byte[] bArr = this.oneByte;
        bArr[0] = (byte) (i10 & 255);
        update(bArr, 0, 1);
    }

    public XXHash32(int i10) {
        this.oneByte = new byte[1];
        this.state = new int[4];
        this.buffer = new byte[16];
        this.seed = i10;
        initializeState();
    }

    private void initializeState() {
        int[] iArr = this.state;
        int i10 = this.seed;
        iArr[0] = 606290984 + i10;
        iArr[1] = PRIME2 + i10;
        iArr[2] = i10;
        iArr[3] = i10 - PRIME1;
    }

    private void process(byte[] bArr, int i10) {
        int[] iArr = this.state;
        int i11 = iArr[0];
        int i12 = iArr[1];
        int i13 = iArr[2];
        int i14 = iArr[3];
        int iRotateLeft = Integer.rotateLeft(i11 + (getInt(bArr, i10) * PRIME2), 13) * PRIME1;
        int iRotateLeft2 = Integer.rotateLeft(i12 + (getInt(bArr, i10 + 4) * PRIME2), 13) * PRIME1;
        int iRotateLeft3 = Integer.rotateLeft(i13 + (getInt(bArr, i10 + 8) * PRIME2), 13) * PRIME1;
        int iRotateLeft4 = Integer.rotateLeft(i14 + (getInt(bArr, i10 + 12) * PRIME2), 13) * PRIME1;
        int[] iArr2 = this.state;
        iArr2[0] = iRotateLeft;
        iArr2[1] = iRotateLeft2;
        iArr2[2] = iRotateLeft3;
        iArr2[3] = iRotateLeft4;
        this.pos = 0;
    }

    @Override // java.util.zip.Checksum
    public long getValue() {
        int i10 = 0;
        int iRotateLeft = (this.totalLen > 16 ? Integer.rotateLeft(this.state[0], 1) + Integer.rotateLeft(this.state[1], 7) + Integer.rotateLeft(this.state[2], 12) + Integer.rotateLeft(this.state[3], 18) : this.state[2] + PRIME5) + this.totalLen;
        int i11 = this.pos - 4;
        while (i10 <= i11) {
            iRotateLeft = Integer.rotateLeft(iRotateLeft + (getInt(this.buffer, i10) * PRIME3), 17) * PRIME4;
            i10 += 4;
        }
        while (i10 < this.pos) {
            iRotateLeft = Integer.rotateLeft(iRotateLeft + ((this.buffer[i10] & 255) * PRIME5), 11) * PRIME1;
            i10++;
        }
        int i12 = (iRotateLeft ^ (iRotateLeft >>> 15)) * PRIME2;
        int i13 = (i12 ^ (i12 >>> 13)) * PRIME3;
        return ((long) (i13 ^ (i13 >>> 16))) & 4294967295L;
    }

    @Override // java.util.zip.Checksum
    public void reset() {
        initializeState();
        this.totalLen = 0;
        this.pos = 0;
    }

    @Override // java.util.zip.Checksum
    public void update(byte[] bArr, int i10, int i11) {
        if (i11 <= 0) {
            return;
        }
        this.totalLen += i11;
        int i12 = i10 + i11;
        int i13 = this.pos;
        if (i13 + i11 < 16) {
            System.arraycopy(bArr, i10, this.buffer, i13, i11);
            this.pos += i11;
            return;
        }
        if (i13 > 0) {
            int i14 = 16 - i13;
            System.arraycopy(bArr, i10, this.buffer, i13, i14);
            process(this.buffer, 0);
            i10 += i14;
        }
        int i15 = i12 - 16;
        while (i10 <= i15) {
            process(bArr, i10);
            i10 += 16;
        }
        if (i10 < i12) {
            int i16 = i12 - i10;
            this.pos = i16;
            System.arraycopy(bArr, i10, this.buffer, 0, i16);
        }
    }
}
