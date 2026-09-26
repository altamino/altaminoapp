package kotlinx.serialization.json.internal;

/* JADX INFO: loaded from: classes11.dex */
public final /* synthetic */ class p {
    public static /* synthetic */ String a(long j6, int i10) {
        if (j6 == 0) {
            return "0";
        }
        if (j6 > 0) {
            return Long.toString(j6, i10);
        }
        if (i10 < 2 || i10 > 36) {
            i10 = 10;
        }
        int i11 = 64;
        char[] cArr = new char[64];
        int i12 = i10 - 1;
        if ((i10 & i12) == 0) {
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(i10);
            do {
                i11--;
                cArr[i11] = Character.forDigit(((int) j6) & i12, i10);
                j6 >>>= iNumberOfTrailingZeros;
            } while (j6 != 0);
        } else {
            long jA = (i10 & 1) == 0 ? (j6 >>> 1) / ((long) (i10 >>> 1)) : kotlin.text.y.a(j6, i10);
            long j10 = i10;
            cArr[63] = Character.forDigit((int) (j6 - (jA * j10)), i10);
            i11 = 63;
            while (jA > 0) {
                i11--;
                cArr[i11] = Character.forDigit((int) (jA % j10), i10);
                jA /= j10;
            }
        }
        return new String(cArr, i11, 64 - i11);
    }
}
