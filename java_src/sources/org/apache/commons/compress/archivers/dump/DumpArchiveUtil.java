package org.apache.commons.compress.archivers.dump;

import java.io.IOException;
import java.util.Arrays;
import org.apache.commons.compress.archivers.zip.ZipEncoding;
import org.apache.commons.compress.utils.ByteUtils;

/* JADX INFO: loaded from: classes6.dex */
class DumpArchiveUtil {
    public static int calculateChecksum(byte[] bArr) {
        int iConvert32 = 0;
        for (int i10 = 0; i10 < 256; i10++) {
            iConvert32 += convert32(bArr, i10 * 4);
        }
        return DumpArchiveConstants.CHECKSUM - (iConvert32 - convert32(bArr, 28));
    }

    public static final int convert16(byte[] bArr, int i10) {
        return (int) ByteUtils.fromLittleEndian(bArr, i10, 2);
    }

    public static final int convert32(byte[] bArr, int i10) {
        return (int) ByteUtils.fromLittleEndian(bArr, i10, 4);
    }

    static String decode(ZipEncoding zipEncoding, byte[] bArr, int i10, int i11) throws IOException {
        return zipEncoding.decode(Arrays.copyOfRange(bArr, i10, i11 + i10));
    }

    public static final long convert64(byte[] bArr, int i10) {
        return ByteUtils.fromLittleEndian(bArr, i10, 8);
    }

    public static final int getIno(byte[] bArr) {
        return convert32(bArr, 20);
    }

    public static final boolean verify(byte[] bArr) {
        return convert32(bArr, 24) == 60012 && convert32(bArr, 28) == calculateChecksum(bArr);
    }

    private DumpArchiveUtil() {
    }
}
