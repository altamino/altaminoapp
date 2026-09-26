package org.apache.commons.compress.archivers.zip;

import com.google.common.base.c;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Arrays;

/* JADX INFO: loaded from: classes9.dex */
class BinaryTree {
    private static final int NODE = -2;
    private static final int UNDEFINED = -1;
    private final int[] tree;

    public int read(BitStream bitStream) throws IOException {
        int i10 = 0;
        while (true) {
            int iNextBit = bitStream.nextBit();
            if (iNextBit == -1) {
                return -1;
            }
            int i11 = (i10 * 2) + 1 + iNextBit;
            int i12 = this.tree[i11];
            if (i12 != -2) {
                if (i12 != -1) {
                    return i12;
                }
                throw new IOException("The child " + iNextBit + " of node at index " + i10 + " is not defined");
            }
            i10 = i11;
        }
    }

    public void addLeaf(int i10, int i11, int i12, int i13) {
        if (i12 != 0) {
            this.tree[i10] = -2;
            addLeaf((i10 * 2) + 1 + (i11 & 1), i11 >>> 1, i12 - 1, i13);
            return;
        }
        int[] iArr = this.tree;
        if (iArr[i10] == -1) {
            iArr[i10] = i13;
            return;
        }
        throw new IllegalArgumentException("Tree value at index " + i10 + " has already been assigned (" + this.tree[i10] + ")");
    }

    public BinaryTree(int i10) {
        int[] iArr = new int[(1 << (i10 + 1)) - 1];
        this.tree = iArr;
        Arrays.fill(iArr, -1);
    }

    static BinaryTree decode(InputStream inputStream, int i10) throws IOException {
        int i11 = inputStream.read() + 1;
        if (i11 != 0) {
            byte[] bArr = new byte[i11];
            new DataInputStream(inputStream).readFully(bArr);
            int[] iArr = new int[i10];
            int iMax = 0;
            int i12 = 0;
            for (int i13 = 0; i13 < i11; i13++) {
                byte b7 = bArr[i13];
                int i14 = ((b7 & 240) >> 4) + 1;
                int i15 = (b7 & c.SI) + 1;
                int i16 = 0;
                while (i16 < i14) {
                    iArr[i12] = i15;
                    i16++;
                    i12++;
                }
                iMax = Math.max(iMax, i15);
            }
            int[] iArr2 = new int[i10];
            for (int i17 = 0; i17 < i10; i17++) {
                iArr2[i17] = i17;
            }
            int[] iArr3 = new int[i10];
            int i18 = 0;
            for (int i19 = 0; i19 < i10; i19++) {
                for (int i20 = 0; i20 < i10; i20++) {
                    if (iArr[i20] == i19) {
                        iArr3[i18] = i19;
                        iArr2[i18] = i20;
                        i18++;
                    }
                }
            }
            int[] iArr4 = new int[i10];
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            for (int i24 = i10 - 1; i24 >= 0; i24--) {
                i21 += i22;
                int i25 = iArr3[i24];
                if (i25 != i23) {
                    i22 = 1 << (16 - i25);
                    i23 = i25;
                }
                iArr4[iArr2[i24]] = i21;
            }
            BinaryTree binaryTree = new BinaryTree(iMax);
            for (int i26 = 0; i26 < i10; i26++) {
                int i27 = iArr[i26];
                if (i27 > 0) {
                    binaryTree.addLeaf(0, Integer.reverse(iArr4[i26] << 16), i27, i26);
                }
            }
            return binaryTree;
        }
        throw new IOException("Cannot read the size of the encoded tree, unexpected end of stream");
    }
}
