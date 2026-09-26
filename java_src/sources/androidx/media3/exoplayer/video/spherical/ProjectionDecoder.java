package androidx.media3.exoplayer.video.spherical;

import androidx.annotation.Nullable;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.zip.Inflater;

/* JADX INFO: loaded from: classes11.dex */
final class ProjectionDecoder {
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

    private static boolean c(ParsableByteArray parsableByteArray) {
        parsableByteArray.V(4);
        int iQ = parsableByteArray.q();
        parsableByteArray.U(0);
        return iQ == 1886547818;
    }

    @Nullable
    public static Projection a(byte[] bArr, int i10) {
        ArrayList<Projection.Mesh> arrayListF;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        try {
            arrayListF = c(parsableByteArray) ? f(parsableByteArray) : e(parsableByteArray);
        } catch (ArrayIndexOutOfBoundsException unused) {
            arrayListF = null;
        }
        if (arrayListF == null) {
            return null;
        }
        int size = arrayListF.size();
        if (size == 1) {
            return new Projection(arrayListF.get(0), i10);
        }
        if (size != 2) {
            return null;
        }
        return new Projection(arrayListF.get(0), arrayListF.get(1), i10);
    }

    @Nullable
    private static ArrayList<Projection.Mesh> f(ParsableByteArray parsableByteArray) {
        int iQ;
        parsableByteArray.V(8);
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        while (iF < iG && (iQ = parsableByteArray.q() + iF) > iF && iQ <= iG) {
            int iQ2 = parsableByteArray.q();
            if (iQ2 == TYPE_YTMP || iQ2 == TYPE_MSHP) {
                parsableByteArray.T(iQ);
                return e(parsableByteArray);
            }
            parsableByteArray.U(iQ);
            iF = iQ;
        }
        return null;
    }

    @Nullable
    private static ArrayList<Projection.Mesh> g(ParsableByteArray parsableByteArray) {
        ArrayList<Projection.Mesh> arrayList = new ArrayList<>();
        int iF = parsableByteArray.f();
        int iG = parsableByteArray.g();
        while (iF < iG) {
            int iQ = parsableByteArray.q() + iF;
            if (iQ <= iF || iQ > iG) {
                return null;
            }
            if (parsableByteArray.q() == TYPE_MESH) {
                Projection.Mesh meshD = d(parsableByteArray);
                if (meshD == null) {
                    return null;
                }
                arrayList.add(meshD);
            }
            parsableByteArray.U(iQ);
            iF = iQ;
        }
        return arrayList;
    }

    private ProjectionDecoder() {
    }

    @Nullable
    private static Projection.Mesh d(ParsableByteArray parsableByteArray) {
        int iQ = parsableByteArray.q();
        if (iQ > 10000) {
            return null;
        }
        float[] fArr = new float[iQ];
        for (int i10 = 0; i10 < iQ; i10++) {
            fArr[i10] = parsableByteArray.p();
        }
        int iQ2 = parsableByteArray.q();
        if (iQ2 > MAX_VERTEX_COUNT) {
            return null;
        }
        double d = 2.0d;
        double dLog = Math.log(2.0d);
        int iCeil = (int) Math.ceil(Math.log(((double) iQ) * 2.0d) / dLog);
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.e());
        int i11 = 8;
        parsableBitArray.p(parsableByteArray.f() * 8);
        float[] fArr2 = new float[iQ2 * 5];
        int i12 = 5;
        int[] iArr = new int[5];
        int i13 = 0;
        int i14 = 0;
        while (i13 < iQ2) {
            int i15 = 0;
            while (i15 < i12) {
                int iB = iArr[i15] + b(parsableBitArray.h(iCeil));
                if (iB >= iQ || iB < 0) {
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
        parsableBitArray.p((parsableBitArray.e() + 7) & (-8));
        int i16 = 32;
        int iH = parsableBitArray.h(32);
        Projection.SubMesh[] subMeshArr = new Projection.SubMesh[iH];
        int i17 = 0;
        while (i17 < iH) {
            int iH2 = parsableBitArray.h(i11);
            int iH3 = parsableBitArray.h(i11);
            int iH4 = parsableBitArray.h(i16);
            if (iH4 > MAX_TRIANGLE_INDICES) {
                return null;
            }
            int iCeil2 = (int) Math.ceil(Math.log(((double) iQ2) * d) / dLog);
            float[] fArr3 = new float[iH4 * 3];
            float[] fArr4 = new float[iH4 * 2];
            int iB2 = 0;
            for (int i18 = 0; i18 < iH4; i18++) {
                iB2 += b(parsableBitArray.h(iCeil2));
                if (iB2 < 0 || iB2 >= iQ2) {
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
            subMeshArr[i17] = new Projection.SubMesh(iH2, fArr3, fArr4, iH3);
            i17++;
            i16 = 32;
            d = 2.0d;
            i11 = 8;
        }
        return new Projection.Mesh(subMeshArr);
    }

    @Nullable
    private static ArrayList<Projection.Mesh> e(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.H() != 0) {
            return null;
        }
        parsableByteArray.V(7);
        int iQ = parsableByteArray.q();
        if (iQ == TYPE_DFL8) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray();
            Inflater inflater = new Inflater(true);
            try {
                if (!Util.y0(parsableByteArray, parsableByteArray2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                parsableByteArray = parsableByteArray2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (iQ != TYPE_RAW) {
            return null;
        }
        return g(parsableByteArray);
    }
}
