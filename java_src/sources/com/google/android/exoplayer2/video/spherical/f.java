package com.google.android.exoplayer2.video.spherical;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.c0;
import com.google.android.exoplayer2.util.o0;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes10.dex */
final class f {
    private static final int MAX_COORDINATE_COUNT = 10000;
    private static final int MAX_TRIANGLE_INDICES = 128000;
    private static final int MAX_VERTEX_COUNT = 32000;
    private static final int TYPE_DFL8 = 1684433976;
    private static final int TYPE_MESH = 1835365224;
    private static final int TYPE_MSHP = 1836279920;
    private static final int TYPE_PROJ = 1886547818;
    private static final int TYPE_RAW = 1918990112;
    private static final int TYPE_YTMP = 2037673328;

    private static int b(int i10) {
        return (-(i10 & 1)) ^ (i10 >> 1);
    }

    private static boolean c(c0 c0Var) {
        c0Var.Q(4);
        int iN = c0Var.n();
        c0Var.P(0);
        return iN == 1886547818;
    }

    @Nullable
    public static e a(byte[] bArr, int i10) {
        ArrayList<e.a> arrayListF;
        c0 c0Var = new c0(bArr);
        try {
            arrayListF = c(c0Var) ? f(c0Var) : e(c0Var);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListF = null;
        }
        if (arrayListF == null) {
            return null;
        }
        int size = arrayListF.size();
        if (size == 1) {
            return new e(arrayListF.get(0), i10);
        }
        if (size != 2) {
            return null;
        }
        return new e(arrayListF.get(0), arrayListF.get(1), i10);
    }

    @Nullable
    private static ArrayList<e.a> f(c0 c0Var) {
        int iN;
        c0Var.Q(8);
        int iE = c0Var.e();
        int iF = c0Var.f();
        while (iE < iF && (iN = c0Var.n() + iE) > iE && iN <= iF) {
            int iN2 = c0Var.n();
            if (iN2 == TYPE_YTMP || iN2 == TYPE_MSHP) {
                c0Var.O(iN);
                return e(c0Var);
            }
            c0Var.P(iN);
            iE = iN;
        }
        return null;
    }

    @Nullable
    private static ArrayList<e.a> g(c0 c0Var) {
        ArrayList<e.a> arrayList = new ArrayList<>();
        int iE = c0Var.e();
        int iF = c0Var.f();
        while (iE < iF) {
            int iN = c0Var.n() + iE;
            if (iN <= iE || iN > iF) {
                return null;
            }
            if (c0Var.n() == TYPE_MESH) {
                e.a aVarD = d(c0Var);
                if (aVarD == null) {
                    return null;
                }
                arrayList.add(aVarD);
            }
            c0Var.P(iN);
            iE = iN;
        }
        return arrayList;
    }

    @Nullable
    private static e.a d(c0 c0Var) {
        int iN = c0Var.n();
        if (iN > 10000) {
            return null;
        }
        float[] fArr = new float[iN];
        for (int i10 = 0; i10 < iN; i10++) {
            fArr[i10] = c0Var.m();
        }
        int iN2 = c0Var.n();
        if (iN2 > MAX_VERTEX_COUNT) {
            return null;
        }
        double d = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iN) * 2.0d) / dLog);
        b0 b0Var = new b0(c0Var.d());
        int i11 = 8;
        b0Var.p(c0Var.e() * 8);
        float[] fArr2 = new float[iN2 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < iN2) {
            int i15 = 0;
            while (i15 < i12) {
                int iB = iArr[i15] + b(b0Var.h(iCeil));
                if (iB >= iN || iB < 0) {
                    return null;
                }
                fArr2[i14] = fArr[iB];
                iArr[i15] = iB;
                i15++;
                i14++;
                i12 = 5;
            }
            i13++;
            i12 = 5;
        }
        b0Var.p((b0Var.e() + 7) & (-8));
        int i16 = 32;
        int iH = b0Var.h(32);
        e.b[] bVarArr = new e.b[iH];
        int i17 = 0;
        while (i17 < iH) {
            int iH2 = b0Var.h(i11);
            int iH3 = b0Var.h(i11);
            int iH4 = b0Var.h(i16);
            if (iH4 > MAX_TRIANGLE_INDICES) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iN2) * d) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i18 = 0; i18 < iH4; i18++) {
                iB2 += b(b0Var.h(iCeil2));
                if (iB2 < 0 || iB2 >= iN2) {
                    return null;
                }
                int i19 = i18 * 3;
                int i20 = iB2 * 5;
                fArr3[i19] = fArr2[i20];
                fArr3[i19 + 1] = fArr2[i20 + 1];
                fArr3[i19 + 2] = fArr2[i20 + 2];
                int i21 = i18 * 2;
                fArr4[i21] = fArr2[i20 + 3];
                fArr4[i21 + 1] = fArr2[i20 + 4];
            }
            bVarArr[i17] = new e.b(iH2, fArr3, fArr4, iH3);
            i17++;
            i16 = 32;
            d = 2.0d;
            i11 = 8;
        }
        return new e.a(bVarArr);
    }

    @Nullable
    private static ArrayList<e.a> e(c0 c0Var) {
        if (c0Var.D() != 0) {
            return null;
        }
        c0Var.Q(7);
        int iN = c0Var.n();
        if (iN == TYPE_DFL8) {
            c0 c0Var2 = new c0();
            Inflater inflater = new Inflater(true);
            try {
                if (!o0.l0(c0Var, c0Var2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                c0Var = c0Var2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iN != TYPE_RAW) {
            return null;
        }
        return g(c0Var);
    }
}
