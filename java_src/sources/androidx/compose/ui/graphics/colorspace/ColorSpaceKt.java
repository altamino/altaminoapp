package androidx.compose.ui.graphics.colorspace;

import com.google.firebase.remoteconfig.a;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ColorSpaceKt {
    public static final double n(double d, double d2, double d6, double d7, double d10, double d11) {
        return d >= d10 * d7 ? (Math.pow(d, 1.0d / d11) - d6) / d2 : d / d7;
    }

    public static final double o(double d, double d2, double d6, double d7, double d10, double d11, double d12, double d13) {
        return d >= d10 * d7 ? (Math.pow(d - d11, 1.0d / d13) - d6) / d2 : (d - d12) / d7;
    }

    public static final double a(double d, double d2, double d6, double d7, double d10, double d11) {
        return Math.copySign(n(d < a.DEFAULT_VALUE_FOR_DOUBLE ? -d : d, d2, d6, d7, d10, d11), d);
    }

    public static final double b(double d, double d2, double d6, double d7, double d10, double d11) {
        return Math.copySign(p(d < a.DEFAULT_VALUE_FOR_DOUBLE ? -d : d, d2, d6, d7, d10, d11), d);
    }

    @NotNull
    public static final ColorSpace c(@NotNull ColorSpace colorSpace, @NotNull WhitePoint whitePoint, @NotNull Adaptation adaptation) {
        t.j(colorSpace, "<this>");
        t.j(whitePoint, "whitePoint");
        t.j(adaptation, "adaptation");
        if (!ColorModel.f(colorSpace.f(), ColorModel.Companion.b())) {
            return colorSpace;
        }
        Rgb rgb = (Rgb) colorSpace;
        if (f(rgb.r(), whitePoint)) {
            return colorSpace;
        }
        return new Rgb(rgb, k(e(adaptation.b(), rgb.r().c(), whitePoint.c()), rgb.q()), whitePoint);
    }

    public static /* synthetic */ ColorSpace d(ColorSpace colorSpace, WhitePoint whitePoint, Adaptation adaptation, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            adaptation = Adaptation.Companion.a();
        }
        return c(colorSpace, whitePoint, adaptation);
    }

    @NotNull
    public static final float[] e(@NotNull float[] matrix, @NotNull float[] srcWhitePoint, @NotNull float[] dstWhitePoint) {
        t.j(matrix, "matrix");
        t.j(srcWhitePoint, "srcWhitePoint");
        t.j(dstWhitePoint, "dstWhitePoint");
        float[] fArrM = m(matrix, srcWhitePoint);
        float[] fArrM2 = m(matrix, dstWhitePoint);
        return k(j(matrix), l(new float[]{fArrM2[0] / fArrM[0], fArrM2[1] / fArrM[1], fArrM2[2] / fArrM[2]}, matrix));
    }

    public static final boolean f(@NotNull WhitePoint a7, @NotNull WhitePoint b7) {
        t.j(a7, "a");
        t.j(b7, "b");
        if (a7 == b7) {
            return true;
        }
        return Math.abs(a7.a() - b7.a()) < 0.001f && Math.abs(a7.b() - b7.b()) < 0.001f;
    }

    public static final boolean g(@NotNull float[] a7, @NotNull float[] b7) {
        t.j(a7, "a");
        t.j(b7, "b");
        if (a7 == b7) {
            return true;
        }
        int length = a7.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (Float.compare(a7[i10], b7[i10]) != 0 && Math.abs(a7[i10] - b7[i10]) > 0.001f) {
                return false;
            }
        }
        return true;
    }

    @NotNull
    public static final Connector h(@NotNull ColorSpace connect, @NotNull ColorSpace destination, int i10) {
        t.j(connect, "$this$connect");
        t.j(destination, "destination");
        if (connect == destination) {
            return Connector.Companion.c(connect);
        }
        long jF = connect.f();
        ColorModel.Companion companion = ColorModel.Companion;
        k kVar = null;
        return (ColorModel.f(jF, companion.b()) && ColorModel.f(destination.f(), companion.b())) ? new Connector.RgbConnector((Rgb) connect, (Rgb) destination, i10, kVar) : new Connector(connect, destination, i10, kVar);
    }

    public static /* synthetic */ Connector i(ColorSpace colorSpace, ColorSpace colorSpace2, int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            colorSpace2 = ColorSpaces.INSTANCE.s();
        }
        if ((i11 & 2) != 0) {
            i10 = RenderIntent.Companion.b();
        }
        return h(colorSpace, colorSpace2, i10);
    }

    @NotNull
    public static final float[] j(@NotNull float[] m) {
        t.j(m, "m");
        float f = m[0];
        float f6 = m[3];
        float f7 = m[6];
        float f10 = m[1];
        float f11 = m[4];
        float f12 = m[7];
        float f13 = m[2];
        float f14 = m[5];
        float f15 = m[8];
        float f16 = (f11 * f15) - (f12 * f14);
        float f17 = (f12 * f13) - (f10 * f15);
        float f18 = (f10 * f14) - (f11 * f13);
        float f19 = (f * f16) + (f6 * f17) + (f7 * f18);
        float[] fArr = new float[m.length];
        fArr[0] = f16 / f19;
        fArr[1] = f17 / f19;
        fArr[2] = f18 / f19;
        fArr[3] = ((f7 * f14) - (f6 * f15)) / f19;
        fArr[4] = ((f15 * f) - (f7 * f13)) / f19;
        fArr[5] = ((f13 * f6) - (f14 * f)) / f19;
        fArr[6] = ((f6 * f12) - (f7 * f11)) / f19;
        fArr[7] = ((f7 * f10) - (f12 * f)) / f19;
        fArr[8] = ((f * f11) - (f6 * f10)) / f19;
        return fArr;
    }

    @NotNull
    public static final float[] k(@NotNull float[] lhs, @NotNull float[] rhs) {
        t.j(lhs, "lhs");
        t.j(rhs, "rhs");
        float f = lhs[0] * rhs[0];
        float f6 = lhs[3];
        float f7 = rhs[1];
        float f10 = lhs[6];
        float f11 = rhs[2];
        float f12 = lhs[1];
        float f13 = rhs[0];
        float f14 = lhs[4];
        float f15 = lhs[7];
        float f16 = lhs[2] * f13;
        float f17 = lhs[5];
        float f18 = f16 + (rhs[1] * f17);
        float f19 = lhs[8];
        float f20 = lhs[0];
        float f21 = rhs[3] * f20;
        float f22 = rhs[4];
        float f23 = f21 + (f6 * f22);
        float f24 = rhs[5];
        float f25 = lhs[1];
        float f26 = rhs[3];
        float f27 = lhs[2];
        float f28 = f20 * rhs[6];
        float f29 = lhs[3];
        float f30 = rhs[7];
        float f31 = f28 + (f29 * f30);
        float f32 = rhs[8];
        float f33 = rhs[6];
        return new float[]{f + (f6 * f7) + (f10 * f11), (f12 * f13) + (f7 * f14) + (f15 * f11), f18 + (f11 * f19), f23 + (f10 * f24), (f25 * f26) + (f14 * f22) + (f15 * f24), (f26 * f27) + (f17 * rhs[4]) + (f24 * f19), f31 + (f10 * f32), (f25 * f33) + (lhs[4] * f30) + (f15 * f32), (f27 * f33) + (lhs[5] * rhs[7]) + (f19 * f32)};
    }

    @NotNull
    public static final float[] l(@NotNull float[] lhs, @NotNull float[] rhs) {
        t.j(lhs, "lhs");
        t.j(rhs, "rhs");
        float f = lhs[0];
        float f6 = lhs[1];
        float f7 = lhs[2];
        return new float[]{lhs[0] * rhs[0], lhs[1] * rhs[1], lhs[2] * rhs[2], rhs[3] * f, rhs[4] * f6, rhs[5] * f7, f * rhs[6], f6 * rhs[7], f7 * rhs[8]};
    }

    @NotNull
    public static final float[] m(@NotNull float[] lhs, @NotNull float[] rhs) {
        t.j(lhs, "lhs");
        t.j(rhs, "rhs");
        float f = rhs[0];
        float f6 = rhs[1];
        float f7 = rhs[2];
        rhs[0] = (lhs[0] * f) + (lhs[3] * f6) + (lhs[6] * f7);
        rhs[1] = (lhs[1] * f) + (lhs[4] * f6) + (lhs[7] * f7);
        rhs[2] = (lhs[2] * f) + (lhs[5] * f6) + (lhs[8] * f7);
        return rhs;
    }

    public static final double p(double d, double d2, double d6, double d7, double d10, double d11) {
        return d >= d10 ? Math.pow((d2 * d) + d6, d11) : d * d7;
    }

    public static final double q(double d, double d2, double d6, double d7, double d10, double d11, double d12, double d13) {
        return d >= d10 ? Math.pow((d2 * d) + d6, d13) + d11 : (d7 * d) + d12;
    }
}
