package org.bouncycastle.util.encoders;

import java.io.IOException;
import java.io.OutputStream;
import okio.Utf8;
import org.apache.commons.compress.archivers.tar.TarConstants;

/* JADX INFO: loaded from: classes10.dex */
public class b implements d {
    protected final byte[] encodingTable = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, TarConstants.LF_GNUTYPE_LONGLINK, TarConstants.LF_GNUTYPE_LONGNAME, 77, 78, 79, 80, 81, 82, TarConstants.LF_GNUTYPE_SPARSE, 84, 85, 86, 87, TarConstants.LF_PAX_EXTENDED_HEADER_UC, 89, 90, 97, 98, 99, 100, 101, 102, TarConstants.LF_PAX_GLOBAL_EXTENDED_HEADER, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, TarConstants.LF_PAX_EXTENDED_HEADER_LC, 121, 122, TarConstants.LF_NORMAL, TarConstants.LF_LINK, TarConstants.LF_SYMLINK, TarConstants.LF_CHR, TarConstants.LF_BLK, TarConstants.LF_DIR, TarConstants.LF_FIFO, TarConstants.LF_CONTIG, 56, 57, 43, 47};
    protected byte padding = 61;
    protected final byte[] decodingTable = new byte[128];

    public b() {
        d();
    }

    @Override // org.bouncycastle.util.encoders.d
    public int a(int i10) {
        return ((i10 + 2) / 3) * 4;
    }

    @Override // org.bouncycastle.util.encoders.d
    public int b(byte[] bArr, int i10, int i11, OutputStream outputStream) throws IOException {
        if (i11 < 0) {
            return 0;
        }
        byte[] bArr2 = new byte[72];
        int i12 = i11;
        while (i12 > 0) {
            int iMin = Math.min(54, i12);
            outputStream.write(bArr2, 0, c(bArr, i10, iMin, bArr2, 0));
            i10 += iMin;
            i12 -= iMin;
        }
        return ((i11 + 2) / 3) * 4;
    }

    public int c(byte[] bArr, int i10, int i11, byte[] bArr2, int i12) throws IOException {
        int i13 = (i10 + i11) - 2;
        int i14 = i10;
        int i15 = i12;
        while (i14 < i13) {
            byte b7 = bArr[i14];
            int i16 = i14 + 2;
            int i17 = bArr[i14 + 1] & 255;
            i14 += 3;
            byte b10 = bArr[i16];
            byte[] bArr3 = this.encodingTable;
            bArr2[i15] = bArr3[(b7 >>> 2) & 63];
            bArr2[i15 + 1] = bArr3[((b7 << 4) | (i17 >>> 4)) & 63];
            int i18 = i15 + 3;
            bArr2[i15 + 2] = bArr3[((i17 << 2) | ((b10 & 255) >>> 6)) & 63];
            i15 += 4;
            bArr2[i18] = bArr3[b10 & Utf8.REPLACEMENT_BYTE];
        }
        int i19 = i11 - (i14 - i10);
        if (i19 == 1) {
            int i20 = bArr[i14] & 255;
            byte[] bArr4 = this.encodingTable;
            bArr2[i15] = bArr4[(i20 >>> 2) & 63];
            bArr2[i15 + 1] = bArr4[(i20 << 4) & 63];
            int i21 = i15 + 3;
            byte b11 = this.padding;
            bArr2[i15 + 2] = b11;
            i15 += 4;
            bArr2[i21] = b11;
        } else if (i19 == 2) {
            int i22 = i14 + 1;
            int i23 = bArr[i14] & 255;
            int i24 = bArr[i22] & 255;
            byte[] bArr5 = this.encodingTable;
            bArr2[i15] = bArr5[(i23 >>> 2) & 63];
            bArr2[i15 + 1] = bArr5[((i23 << 4) | (i24 >>> 4)) & 63];
            int i25 = i15 + 3;
            bArr2[i15 + 2] = bArr5[(i24 << 2) & 63];
            i15 += 4;
            bArr2[i25] = this.padding;
        }
        return i15 - i12;
    }

    protected void d() {
        int i10 = 0;
        int i11 = 0;
        while (true) {
            byte[] bArr = this.decodingTable;
            if (i11 >= bArr.length) {
                break;
            }
            bArr[i11] = -1;
            i11++;
        }
        while (true) {
            byte[] bArr2 = this.encodingTable;
            if (i10 >= bArr2.length) {
                return;
            }
            this.decodingTable[bArr2[i10]] = (byte) i10;
            i10++;
        }
    }
}
