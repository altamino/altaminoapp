package androidx.compose.ui.graphics;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.graphics.colorspace.ColorModel;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import androidx.compose.ui.graphics.colorspace.ColorSpaceKt;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.util.MathHelpersKt;
import okhttp3.internal.ws.WebSocketProtocol;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
public final class ColorKt {
    @Stable
    public static final long b(int i10) {
        return Color.i(w7.f0.b(w7.f0.b(i10) << 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float[] h(long j6) {
        return new float[]{Color.s(j6), Color.r(j6), Color.p(j6), Color.o(j6)};
    }

    private static final float k(float f) {
        float f6 = 0.0f;
        if (f > 0.0f) {
            f6 = 1.0f;
            if (f < 1.0f) {
                return f;
            }
        }
        return f6;
    }

    @Stable
    public static final long a(float f, float f6, float f7, float f10, @NotNull ColorSpace colorSpace) {
        kotlin.jvm.internal.t.j(colorSpace, "colorSpace");
        float fE = colorSpace.e(0);
        if (f <= colorSpace.d(0) && fE <= f) {
            float fE2 = colorSpace.e(1);
            if (f6 <= colorSpace.d(1) && fE2 <= f6) {
                float fE3 = colorSpace.e(2);
                if (f7 <= colorSpace.d(2) && fE3 <= f7 && 0.0f <= f10 && f10 <= 1.0f) {
                    if (colorSpace.h()) {
                        return Color.i(w7.f0.b(w7.f0.b(w7.f0.b((((((int) ((f * 255.0f) + 0.5f)) << 16) | (((int) ((f10 * 255.0f) + 0.5f)) << 24)) | (((int) ((f6 * 255.0f) + 0.5f)) << 8)) | ((int) ((f7 * 255.0f) + 0.5f))) & 4294967295L) << 32));
                    }
                    if (colorSpace.b() != 3) {
                        throw new IllegalArgumentException("Color only works with ColorSpaces with 3 components".toString());
                    }
                    int iC = colorSpace.c();
                    if (iC == -1) {
                        throw new IllegalArgumentException("Unknown color space, please use a color space in ColorSpaces".toString());
                    }
                    short sC = Float16.c(f);
                    return Color.i(w7.f0.b(w7.f0.b(w7.f0.b(w7.f0.b(w7.f0.b(w7.f0.b(w7.f0.b(Float16.c(f6)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 32) | w7.f0.b(w7.f0.b(w7.f0.b(sC) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 48)) | w7.f0.b(w7.f0.b(w7.f0.b(Float16.c(f7)) & WebSocketProtocol.PAYLOAD_SHORT_MAX) << 16)) | w7.f0.b(w7.f0.b(w7.f0.b((int) ((Math.max(0.0f, Math.min(f10, 1.0f)) * 1023.0f) + 0.5f)) & 1023) << 6)) | w7.f0.b(w7.f0.b(iC) & 63)));
                }
            }
        }
        throw new IllegalArgumentException(("red = " + f + ", green = " + f6 + ", blue = " + f7 + ", alpha = " + f10 + " outside the range for " + colorSpace).toString());
    }

    @Stable
    public static final long c(int i10, int i11, int i12, int i13) {
        return b(((i10 & 255) << 16) | ((i13 & 255) << 24) | ((i11 & 255) << 8) | (i12 & 255));
    }

    public static /* synthetic */ long e(int i10, int i11, int i12, int i13, int i14, Object obj) {
        if ((i14 & 8) != 0) {
            i13 = 255;
        }
        return c(i10, i11, i12, i13);
    }

    @Stable
    public static final long i(long j6, long j10, float f) {
        ColorSpace colorSpaceP = ColorSpaces.INSTANCE.p();
        long j11 = Color.j(j6, colorSpaceP);
        long j12 = Color.j(j10, colorSpaceP);
        float fO = Color.o(j11);
        float fS = Color.s(j11);
        float fR = Color.r(j11);
        float fP = Color.p(j11);
        float fO2 = Color.o(j12);
        float fS2 = Color.s(j12);
        float fR2 = Color.r(j12);
        float fP2 = Color.p(j12);
        return Color.j(a(MathHelpersKt.a(fS, fS2, f), MathHelpersKt.a(fR, fR2, f), MathHelpersKt.a(fP, fP2, f), MathHelpersKt.a(fO, fO2, f), colorSpaceP), Color.q(j10));
    }

    @Stable
    public static final long d(long j6) {
        return Color.i(w7.f0.b(w7.f0.b(w7.f0.b(j6) & 4294967295L) << 32));
    }

    @Stable
    public static final long g(long j6, long j10) {
        float f;
        float f6;
        long j11 = Color.j(j6, Color.q(j10));
        float fO = Color.o(j10);
        float fO2 = Color.o(j11);
        float f7 = 1.0f - fO2;
        float f10 = (fO * f7) + fO2;
        float fS = Color.s(j11);
        float fS2 = Color.s(j10);
        float f11 = 0.0f;
        if (f10 == 0.0f) {
            f = 0.0f;
        } else {
            f = ((fS * fO2) + ((fS2 * fO) * f7)) / f10;
        }
        float fR = Color.r(j11);
        float fR2 = Color.r(j10);
        if (f10 == 0.0f) {
            f6 = 0.0f;
        } else {
            f6 = ((fR * fO2) + ((fR2 * fO) * f7)) / f10;
        }
        float fP = Color.p(j11);
        float fP2 = Color.p(j10);
        if (f10 != 0.0f) {
            f11 = ((fP * fO2) + ((fP2 * fO) * f7)) / f10;
        }
        return a(f, f6, f11, f10, Color.q(j10));
    }

    @Stable
    public static final float j(long j6) {
        ColorSpace colorSpaceQ = Color.q(j6);
        if (ColorModel.f(colorSpaceQ.f(), ColorModel.Companion.b())) {
            e8.l<Double, Double> lVarL = ((Rgb) colorSpaceQ).l();
            return k((float) ((lVarL.invoke(Double.valueOf(Color.s(j6))).doubleValue() * 0.2126d) + (lVarL.invoke(Double.valueOf(Color.r(j6))).doubleValue() * 0.7152d) + (lVarL.invoke(Double.valueOf(Color.p(j6))).doubleValue() * 0.0722d)));
        }
        throw new IllegalArgumentException(("The specified color must be encoded in an RGB color space. The supplied color space is " + ((Object) ColorModel.i(colorSpaceQ.f()))).toString());
    }

    @Stable
    public static final int l(long j6) {
        ColorSpace colorSpaceQ = Color.q(j6);
        if (colorSpaceQ.h()) {
            return (int) w7.f0.b(j6 >>> 32);
        }
        float[] fArrH = h(j6);
        ColorSpaceKt.i(colorSpaceQ, null, 0, 3, null).a(fArrH);
        return ((int) ((fArrH[2] * 255.0f) + 0.5f)) | (((int) ((fArrH[3] * 255.0f) + 0.5f)) << 24) | (((int) ((fArrH[0] * 255.0f) + 0.5f)) << 16) | (((int) ((fArrH[1] * 255.0f) + 0.5f)) << 8);
    }
}
