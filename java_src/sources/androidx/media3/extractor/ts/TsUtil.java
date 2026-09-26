package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.UnstableApi;

/* JADX INFO: loaded from: classes4.dex */
@UnstableApi
public final class TsUtil {
    public static boolean b(byte[] bArr, int i10, int i11, int i12) {
        int i13 = 0;
        for (int i14 = -4; i14 <= 4; i14++) {
            int i15 = (i14 * 188) + i12;
            if (i15 < i10 || i15 >= i11 || bArr[i15] != 71) {
                i13 = 0;
            } else {
                i13++;
                if (i13 == 5) {
                    return true;
                }
            }
        }
        return false;
    }

    private static long d(byte[] bArr) {
        return ((((long) bArr[0]) & 255) << 25) | ((((long) bArr[1]) & 255) << 17) | ((((long) bArr[2]) & 255) << 9) | ((((long) bArr[3]) & 255) << 1) | ((255 & ((long) bArr[4])) >> 7);
    }

    public static int a(byte[] bArr, int i10, int i11) {
        while (i10 < i11 && bArr[i10] != 71) {
            i10++;
        }
        return i10;
    }

    private TsUtil() {
    }

    public static long c(ParsableByteArray parsableByteArray, int i10, int i11) {
        parsableByteArray.U(i10);
        if (parsableByteArray.a() < 5) {
            return -9223372036854775807L;
        }
        int iQ = parsableByteArray.q();
        if ((8388608 & iQ) != 0 || ((2096896 & iQ) >> 8) != i11 || (iQ & 32) == 0 || parsableByteArray.H() < 7 || parsableByteArray.a() < 7 || (parsableByteArray.H() & 16) != 16) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[6];
        parsableByteArray.l(bArr, 0, 6);
        return d(bArr);
    }
}
