package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.util.o0;
import com.google.android.exoplayer2.v2;
import java.io.IOException;

/* JADX INFO: loaded from: classes9.dex */
public final class s {

    public static final class a {
        public long sampleNumber;
    }

    private static boolean f(int i10, v vVar) {
        return i10 == 0 || i10 == vVar.bitsPerSampleLookupKey;
    }

    private static boolean g(int i10, v vVar) {
        if (i10 <= 7) {
            return i10 == vVar.channels - 1;
        }
        return i10 <= 10 && vVar.channels == 2;
    }

    public static boolean d(com.google.android.exoplayer2.util.c0 c0Var, v vVar, int i10, a aVar) {
        int iE = c0Var.e();
        long jF = c0Var.F();
        long j6 = jF >>> 16;
        if (j6 != i10) {
            return false;
        }
        return g((int) ((jF >> 4) & 15), vVar) && f((int) ((jF >> 1) & 7), vVar) && !(((jF & 1) > 1L ? 1 : ((jF & 1) == 1L ? 0 : -1)) == 0) && c(c0Var, vVar, ((j6 & 1) > 1L ? 1 : ((j6 & 1) == 1L ? 0 : -1)) == 0, aVar) && a(c0Var, vVar, (int) ((jF >> 12) & 15)) && e(c0Var, vVar, (int) ((jF >> 8) & 15)) && b(c0Var, iE);
    }

    private static boolean e(com.google.android.exoplayer2.util.c0 c0Var, v vVar, int i10) {
        int i11 = vVar.sampleRate;
        if (i10 == 0) {
            return true;
        }
        if (i10 <= 11) {
            return i10 == vVar.sampleRateLookupKey;
        }
        if (i10 == 12) {
            return c0Var.D() * 1000 == i11;
        }
        if (i10 > 14) {
            return false;
        }
        int iJ = c0Var.J();
        if (i10 == 14) {
            iJ *= 10;
        }
        return iJ == i11;
    }

    private static boolean a(com.google.android.exoplayer2.util.c0 c0Var, v vVar, int i10) {
        int iJ = j(c0Var, i10);
        if (iJ != -1 && iJ <= vVar.maxBlockSizeSamples) {
            return true;
        }
        return false;
    }

    private static boolean b(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        if (c0Var.D() == o0.s(c0Var.d(), i10, c0Var.e() - 1, 0)) {
            return true;
        }
        return false;
    }

    private static boolean c(com.google.android.exoplayer2.util.c0 c0Var, v vVar, boolean z6, a aVar) {
        try {
            long jK = c0Var.K();
            if (!z6) {
                jK *= (long) vVar.maxBlockSizeSamples;
            }
            aVar.sampleNumber = jK;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    public static boolean h(m mVar, v vVar, int i10, a aVar) throws IOException {
        long peekPosition = mVar.getPeekPosition();
        byte[] bArr = new byte[2];
        mVar.peekFully(bArr, 0, 2);
        if ((((bArr[0] & 255) << 8) | (bArr[1] & 255)) != i10) {
            mVar.resetPeekPosition();
            mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
            return false;
        }
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(16);
        System.arraycopy(bArr, 0, c0Var.d(), 0, 2);
        c0Var.O(o.c(mVar, c0Var.d(), 2, 14));
        mVar.resetPeekPosition();
        mVar.advancePeekPosition((int) (peekPosition - mVar.getPosition()));
        return d(c0Var, vVar, i10, aVar);
    }

    public static long i(m mVar, v vVar) throws IOException {
        int i10;
        mVar.resetPeekPosition();
        boolean z6 = true;
        mVar.advancePeekPosition(1);
        byte[] bArr = new byte[1];
        mVar.peekFully(bArr, 0, 1);
        if ((bArr[0] & 1) != 1) {
            z6 = false;
        }
        mVar.advancePeekPosition(2);
        if (z6) {
            i10 = 7;
        } else {
            i10 = 6;
        }
        com.google.android.exoplayer2.util.c0 c0Var = new com.google.android.exoplayer2.util.c0(i10);
        c0Var.O(o.c(mVar, c0Var.d(), 0, i10));
        mVar.resetPeekPosition();
        a aVar = new a();
        if (c(c0Var, vVar, z6, aVar)) {
            return aVar.sampleNumber;
        }
        throw v2.a(null, null);
    }

    public static int j(com.google.android.exoplayer2.util.c0 c0Var, int i10) {
        switch (i10) {
            case 1:
                return 192;
            case 2:
            case 3:
            case 4:
            case 5:
                return 576 << (i10 - 2);
            case 6:
                return c0Var.D() + 1;
            case 7:
                return c0Var.J() + 1;
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
                return 256 << (i10 - 8);
            default:
                return -1;
        }
    }
}
