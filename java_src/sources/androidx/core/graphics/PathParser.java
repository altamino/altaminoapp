package androidx.core.graphics;

import android.graphics.Path;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.firebase.remoteconfig.a;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    public static class PathDataNode {
        public float[] mParams;
        public char mType;

        PathDataNode(char c7, float[] fArr) {
            this.mType = c7;
            this.mParams = fArr;
        }

        public static void e(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c7 = 'm';
            for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
                PathDataNode pathDataNode = pathDataNodeArr[i10];
                a(path, fArr, c7, pathDataNode.mType, pathDataNode.mParams);
                c7 = pathDataNodeArr[i10].mType;
            }
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            float[] fArr = pathDataNode.mParams;
            this.mParams = PathParser.c(fArr, 0, fArr.length);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private static void a(Path path, float[] fArr, char c7, char c10, float[] fArr2) {
            int i10;
            int i11;
            int i12;
            float f;
            float f6;
            float f7;
            float f10;
            float f11;
            float f12;
            float f13;
            float f14;
            char c11 = c10;
            boolean z6 = false;
            float f15 = fArr[0];
            float f16 = fArr[1];
            float f17 = fArr[2];
            float f18 = fArr[3];
            float f19 = fArr[4];
            float f20 = fArr[5];
            switch (c11) {
                case 'A':
                case 'a':
                    i10 = 7;
                    i11 = i10;
                    break;
                case 'C':
                case 'c':
                    i10 = 6;
                    i11 = i10;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i11 = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i11 = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i11 = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f19, f20);
                    f15 = f19;
                    f17 = f15;
                    f16 = f20;
                    f18 = f16;
                    i11 = 2;
                    break;
            }
            float f21 = f15;
            float f22 = f16;
            float f23 = f19;
            float f24 = f20;
            int i13 = 0;
            char c12 = c7;
            while (i13 < fArr2.length) {
                if (c11 != 'A') {
                    if (c11 == 'C') {
                        i12 = i13;
                        int i14 = i12 + 2;
                        int i15 = i12 + 3;
                        int i16 = i12 + 4;
                        int i17 = i12 + 5;
                        path.cubicTo(fArr2[i12], fArr2[i12 + 1], fArr2[i14], fArr2[i15], fArr2[i16], fArr2[i17]);
                        f21 = fArr2[i16];
                        float f25 = fArr2[i17];
                        float f26 = fArr2[i14];
                        float f27 = fArr2[i15];
                        f22 = f25;
                        f18 = f27;
                        f17 = f26;
                    } else if (c11 == 'H') {
                        i12 = i13;
                        path.lineTo(fArr2[i12], f22);
                        f21 = fArr2[i12];
                    } else if (c11 == 'Q') {
                        i12 = i13;
                        int i18 = i12 + 1;
                        int i19 = i12 + 2;
                        int i20 = i12 + 3;
                        path.quadTo(fArr2[i12], fArr2[i18], fArr2[i19], fArr2[i20]);
                        float f28 = fArr2[i12];
                        float f29 = fArr2[i18];
                        f21 = fArr2[i19];
                        f22 = fArr2[i20];
                        f17 = f28;
                        f18 = f29;
                    } else if (c11 == 'V') {
                        i12 = i13;
                        path.lineTo(f21, fArr2[i12]);
                        f22 = fArr2[i12];
                    } else if (c11 != 'a') {
                        if (c11 != 'c') {
                            if (c11 == 'h') {
                                path.rLineTo(fArr2[i13], 0.0f);
                                f21 += fArr2[i13];
                            } else if (c11 != 'q') {
                                if (c11 == 'v') {
                                    path.rLineTo(0.0f, fArr2[i13]);
                                    f10 = fArr2[i13];
                                } else if (c11 == 'L') {
                                    int i21 = i13 + 1;
                                    path.lineTo(fArr2[i13], fArr2[i21]);
                                    f21 = fArr2[i13];
                                    f22 = fArr2[i21];
                                } else if (c11 == 'M') {
                                    f21 = fArr2[i13];
                                    f22 = fArr2[i13 + 1];
                                    if (i13 > 0) {
                                        path.lineTo(f21, f22);
                                    } else {
                                        path.moveTo(f21, f22);
                                        i12 = i13;
                                        f24 = f22;
                                        f23 = f21;
                                    }
                                } else if (c11 == 'S') {
                                    if (c12 == 'c' || c12 == 's' || c12 == 'C' || c12 == 'S') {
                                        f21 = (f21 * 2.0f) - f17;
                                        f22 = (f22 * 2.0f) - f18;
                                    }
                                    float f30 = f22;
                                    float f31 = f21;
                                    int i22 = i13 + 1;
                                    int i23 = i13 + 2;
                                    int i24 = i13 + 3;
                                    path.cubicTo(f31, f30, fArr2[i13], fArr2[i22], fArr2[i23], fArr2[i24]);
                                    f = fArr2[i13];
                                    f6 = fArr2[i22];
                                    f21 = fArr2[i23];
                                    f22 = fArr2[i24];
                                    f17 = f;
                                    f18 = f6;
                                } else if (c11 == 'T') {
                                    if (c12 == 'q' || c12 == 't' || c12 == 'Q' || c12 == 'T') {
                                        f21 = (f21 * 2.0f) - f17;
                                        f22 = (f22 * 2.0f) - f18;
                                    }
                                    int i25 = i13 + 1;
                                    path.quadTo(f21, f22, fArr2[i13], fArr2[i25]);
                                    i12 = i13;
                                    f18 = f22;
                                    f17 = f21;
                                    f21 = fArr2[i13];
                                    f22 = fArr2[i25];
                                } else if (c11 == 'l') {
                                    int i26 = i13 + 1;
                                    path.rLineTo(fArr2[i13], fArr2[i26]);
                                    f21 += fArr2[i13];
                                    f10 = fArr2[i26];
                                } else if (c11 == 'm') {
                                    float f32 = fArr2[i13];
                                    f21 += f32;
                                    float f33 = fArr2[i13 + 1];
                                    f22 += f33;
                                    if (i13 > 0) {
                                        path.rLineTo(f32, f33);
                                    } else {
                                        path.rMoveTo(f32, f33);
                                        i12 = i13;
                                        f24 = f22;
                                        f23 = f21;
                                    }
                                } else if (c11 == 's') {
                                    if (c12 == 'c' || c12 == 's' || c12 == 'C' || c12 == 'S') {
                                        float f34 = f21 - f17;
                                        f11 = f22 - f18;
                                        f12 = f34;
                                    } else {
                                        f12 = 0.0f;
                                        f11 = 0.0f;
                                    }
                                    int i27 = i13 + 1;
                                    int i28 = i13 + 2;
                                    int i29 = i13 + 3;
                                    path.rCubicTo(f12, f11, fArr2[i13], fArr2[i27], fArr2[i28], fArr2[i29]);
                                    f = fArr2[i13] + f21;
                                    f6 = fArr2[i27] + f22;
                                    f21 += fArr2[i28];
                                    f7 = fArr2[i29];
                                } else if (c11 == 't') {
                                    if (c12 == 'q' || c12 == 't' || c12 == 'Q' || c12 == 'T') {
                                        f13 = f21 - f17;
                                        f14 = f22 - f18;
                                    } else {
                                        f14 = 0.0f;
                                        f13 = 0.0f;
                                    }
                                    int i30 = i13 + 1;
                                    path.rQuadTo(f13, f14, fArr2[i13], fArr2[i30]);
                                    float f35 = f13 + f21;
                                    float f36 = f14 + f22;
                                    f21 += fArr2[i13];
                                    f22 += fArr2[i30];
                                    f18 = f36;
                                    f17 = f35;
                                }
                                f22 += f10;
                            } else {
                                int i31 = i13 + 1;
                                int i32 = i13 + 2;
                                int i33 = i13 + 3;
                                path.rQuadTo(fArr2[i13], fArr2[i31], fArr2[i32], fArr2[i33]);
                                f = fArr2[i13] + f21;
                                f6 = fArr2[i31] + f22;
                                f21 += fArr2[i32];
                                f7 = fArr2[i33];
                            }
                            i12 = i13;
                        } else {
                            int i34 = i13 + 2;
                            int i35 = i13 + 3;
                            int i36 = i13 + 4;
                            int i37 = i13 + 5;
                            path.rCubicTo(fArr2[i13], fArr2[i13 + 1], fArr2[i34], fArr2[i35], fArr2[i36], fArr2[i37]);
                            f = fArr2[i34] + f21;
                            f6 = fArr2[i35] + f22;
                            f21 += fArr2[i36];
                            f7 = fArr2[i37];
                        }
                        f22 += f7;
                        f17 = f;
                        f18 = f6;
                        i12 = i13;
                    } else {
                        int i38 = i13 + 5;
                        int i39 = i13 + 6;
                        i12 = i13;
                        c(path, f21, f22, fArr2[i38] + f21, fArr2[i39] + f22, fArr2[i13], fArr2[i13 + 1], fArr2[i13 + 2], fArr2[i13 + 3] != 0.0f, fArr2[i13 + 4] != 0.0f);
                        f21 += fArr2[i38];
                        f22 += fArr2[i39];
                    }
                    i13 = i12 + i11;
                    c12 = c10;
                    c11 = c12;
                    z6 = false;
                } else {
                    i12 = i13;
                    int i40 = i12 + 5;
                    int i41 = i12 + 6;
                    c(path, f21, f22, fArr2[i40], fArr2[i41], fArr2[i12], fArr2[i12 + 1], fArr2[i12 + 2], fArr2[i12 + 3] != 0.0f, fArr2[i12 + 4] != 0.0f);
                    f21 = fArr2[i40];
                    f22 = fArr2[i41];
                }
                f18 = f22;
                f17 = f21;
                i13 = i12 + i11;
                c12 = c10;
                c11 = c12;
                z6 = false;
            }
            fArr[z6 ? 1 : 0] = f21;
            fArr[1] = f22;
            fArr[2] = f17;
            fArr[3] = f18;
            fArr[4] = f23;
            fArr[5] = f24;
        }

        private static void b(Path path, double d, double d2, double d6, double d7, double d10, double d11, double d12, double d13, double d14) {
            double d15 = d6;
            int iCeil = (int) Math.ceil(Math.abs((d14 * 4.0d) / 3.141592653589793d));
            double dCos = Math.cos(d12);
            double dSin = Math.sin(d12);
            double dCos2 = Math.cos(d13);
            double dSin2 = Math.sin(d13);
            double d16 = -d15;
            double d17 = d16 * dCos;
            double d18 = d7 * dSin;
            double d19 = (d17 * dSin2) - (d18 * dCos2);
            double d20 = d16 * dSin;
            double d21 = d7 * dCos;
            double d22 = (dSin2 * d20) + (dCos2 * d21);
            double d23 = d14 / ((double) iCeil);
            double d24 = d22;
            double d25 = d19;
            int i10 = 0;
            double d26 = d10;
            double d27 = d11;
            double d28 = d13;
            while (i10 < iCeil) {
                double d29 = d28 + d23;
                double dSin3 = Math.sin(d29);
                double dCos3 = Math.cos(d29);
                double d30 = (d + ((d15 * dCos) * dCos3)) - (d18 * dSin3);
                double d31 = d2 + (d15 * dSin * dCos3) + (d21 * dSin3);
                double d32 = (d17 * dSin3) - (d18 * dCos3);
                double d33 = (dSin3 * d20) + (dCos3 * d21);
                double d34 = d29 - d28;
                double dTan = Math.tan(d34 / 2.0d);
                double dSin4 = (Math.sin(d34) * (Math.sqrt(((dTan * 3.0d) * dTan) + 4.0d) - 1.0d)) / 3.0d;
                double d35 = d26 + (d25 * dSin4);
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) d35, (float) (d27 + (d24 * dSin4)), (float) (d30 - (dSin4 * d32)), (float) (d31 - (dSin4 * d33)), (float) d30, (float) d31);
                i10++;
                d23 = d23;
                dSin = dSin;
                d26 = d30;
                d20 = d20;
                dCos = dCos;
                d28 = d29;
                d24 = d33;
                d25 = d32;
                iCeil = iCeil;
                d27 = d31;
                d15 = d6;
            }
        }

        private static void c(Path path, float f, float f6, float f7, float f10, float f11, float f12, float f13, boolean z6, boolean z10) {
            double d;
            double d2;
            double radians = Math.toRadians(f13);
            double dCos = Math.cos(radians);
            double dSin = Math.sin(radians);
            double d6 = f;
            double d7 = d6 * dCos;
            double d10 = f6;
            double d11 = f11;
            double d12 = (d7 + (d10 * dSin)) / d11;
            double d13 = (((double) (-f)) * dSin) + (d10 * dCos);
            double d14 = f12;
            double d15 = d13 / d14;
            double d16 = f10;
            double d17 = ((((double) f7) * dCos) + (d16 * dSin)) / d11;
            double d18 = ((((double) (-f7)) * dSin) + (d16 * dCos)) / d14;
            double d19 = d12 - d17;
            double d20 = d15 - d18;
            double d21 = (d12 + d17) / 2.0d;
            double d22 = (d15 + d18) / 2.0d;
            double d23 = (d19 * d19) + (d20 * d20);
            if (d23 == a.DEFAULT_VALUE_FOR_DOUBLE) {
                Log.w(PathParser.LOGTAG, " Points are coincident");
                return;
            }
            double d24 = (1.0d / d23) - 0.25d;
            if (d24 < a.DEFAULT_VALUE_FOR_DOUBLE) {
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d23);
                float fSqrt = (float) (Math.sqrt(d23) / 1.99999d);
                c(path, f, f6, f7, f10, f11 * fSqrt, f12 * fSqrt, f13, z6, z10);
                return;
            }
            double dSqrt = Math.sqrt(d24);
            double d25 = d19 * dSqrt;
            double d26 = dSqrt * d20;
            if (z6 == z10) {
                d = d21 - d26;
                d2 = d22 + d25;
            } else {
                d = d21 + d26;
                d2 = d22 - d25;
            }
            double dAtan2 = Math.atan2(d15 - d2, d12 - d);
            double dAtan3 = Math.atan2(d18 - d2, d17 - d) - dAtan2;
            if (z10 != (dAtan3 >= a.DEFAULT_VALUE_FOR_DOUBLE)) {
                dAtan3 = dAtan3 > a.DEFAULT_VALUE_FOR_DOUBLE ? dAtan3 - 6.283185307179586d : dAtan3 + 6.283185307179586d;
            }
            double d27 = d * d11;
            double d28 = d2 * d14;
            b(path, (d27 * dCos) - (d28 * dSin), (d27 * dSin) + (d28 * dCos), d11, d14, d6, d10, radians, dAtan2, dAtan3);
        }

        public void d(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            this.mType = pathDataNode.mType;
            int i10 = 0;
            while (true) {
                float[] fArr = pathDataNode.mParams;
                if (i10 >= fArr.length) {
                    return;
                }
                this.mParams[i10] = (fArr[i10] * (1.0f - f)) + (pathDataNode2.mParams[i10] * f);
                i10++;
            }
        }
    }

    public static boolean b(@Nullable PathDataNode[] pathDataNodeArr, @Nullable PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
            PathDataNode pathDataNode = pathDataNodeArr[i10];
            char c7 = pathDataNode.mType;
            PathDataNode pathDataNode2 = pathDataNodeArr2[i10];
            if (c7 != pathDataNode2.mType || pathDataNode.mParams.length != pathDataNode2.mParams.length) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:16:0x0029  */
    private static void g(String str, int i10, ExtractFloatResult extractFloatResult) {
        extractFloatResult.mEndWithNegOrDot = false;
        boolean z6 = false;
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = i10; i11 < str.length(); i11++) {
            char cCharAt = str.charAt(i11);
            if (cCharAt == ' ') {
                z6 = false;
                z11 = true;
            } else if (cCharAt != 'E' && cCharAt != 'e') {
                switch (cCharAt) {
                    case ',':
                        z6 = false;
                        z11 = true;
                        break;
                    case '-':
                        if (i11 == i10 || z6) {
                            z6 = false;
                        } else {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z6 = false;
                            z11 = true;
                        }
                        break;
                    case '.':
                        if (z10) {
                            extractFloatResult.mEndWithNegOrDot = true;
                            z6 = false;
                            z11 = true;
                        } else {
                            z6 = false;
                            z10 = true;
                        }
                        break;
                    default:
                        z6 = false;
                        break;
                }
            } else {
                z6 = true;
            }
            if (z11) {
                extractFloatResult.mEndPosition = i11;
            }
        }
        extractFloatResult.mEndPosition = i11;
    }

    private static float[] h(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i10 = 1;
            int i11 = 0;
            while (i10 < length) {
                g(str, i10, extractFloatResult);
                int i12 = extractFloatResult.mEndPosition;
                if (i10 < i12) {
                    fArr[i11] = Float.parseFloat(str.substring(i10, i12));
                    i11++;
                }
                i10 = extractFloatResult.mEndWithNegOrDot ? i12 : i12 + 1;
            }
            return c(fArr, 0, i11);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    public static void j(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i10 = 0; i10 < pathDataNodeArr2.length; i10++) {
            pathDataNodeArr[i10].mType = pathDataNodeArr2[i10].mType;
            int i11 = 0;
            while (true) {
                float[] fArr = pathDataNodeArr2[i10].mParams;
                if (i11 < fArr.length) {
                    pathDataNodeArr[i10].mParams[i11] = fArr[i11];
                    i11++;
                }
            }
        }
    }

    private static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    private static void a(ArrayList<PathDataNode> arrayList, char c7, float[] fArr) {
        arrayList.add(new PathDataNode(c7, fArr));
    }

    static float[] c(float[] fArr, int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i10 < 0 || i10 > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i12 = i11 - i10;
        int iMin = Math.min(i12, length - i10);
        float[] fArr2 = new float[i12];
        System.arraycopy(fArr, i10, fArr2, 0, iMin);
        return fArr2;
    }

    public static PathDataNode[] d(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i10 = 1;
        int i11 = 0;
        while (i10 < str.length()) {
            int i12 = i(str, i10);
            String strTrim = str.substring(i11, i12).trim();
            if (strTrim.length() > 0) {
                a(arrayList, strTrim.charAt(0), h(strTrim));
            }
            i11 = i12;
            i10 = i12 + 1;
        }
        if (i10 - i11 == 1 && i11 < str.length()) {
            a(arrayList, str.charAt(i11), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path e(String str) {
        Path path = new Path();
        PathDataNode[] pathDataNodeArrD = d(str);
        if (pathDataNodeArrD == null) {
            return null;
        }
        try {
            PathDataNode.e(pathDataNodeArrD, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    public static PathDataNode[] f(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i10 = 0; i10 < pathDataNodeArr.length; i10++) {
            pathDataNodeArr2[i10] = new PathDataNode(pathDataNodeArr[i10]);
        }
        return pathDataNodeArr2;
    }

    private PathParser() {
    }

    private static int i(String str, int i10) {
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt - 'A') * (cCharAt - 'Z') <= 0 || (cCharAt - 'a') * (cCharAt - 'z') <= 0) && cCharAt != 'e' && cCharAt != 'E') {
                return i10;
            }
            i10++;
        }
        return i10;
    }
}
