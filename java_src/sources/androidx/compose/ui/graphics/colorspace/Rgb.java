package androidx.compose.ui.graphics.colorspace;

import com.google.firebase.remoteconfig.a;
import e8.l;
import java.util.Arrays;
import kotlin.collections.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.q0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes2.dex */
public final class Rgb extends ColorSpace {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final l<Double, Double> DoubleIdentity = Rgb$Companion$DoubleIdentity$1.INSTANCE;

    @NotNull
    private final l<Double, Double> eotf;

    @NotNull
    private final l<Double, Double> eotfOrig;

    @NotNull
    private final float[] inverseTransform;
    private final boolean isSrgb;
    private final boolean isWideGamut;
    private final float max;
    private final float min;

    @NotNull
    private final l<Double, Double> oetf;

    @NotNull
    private final l<Double, Double> oetfOrig;

    @NotNull
    private final float[] primaries;

    @Nullable
    private final TransferParameters transferParameters;

    @NotNull
    private final float[] transform;

    @NotNull
    private final WhitePoint whitePoint;

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$1, reason: invalid class name */
    static final class AnonymousClass1 extends v implements l<Double, Double> {
        final /* synthetic */ TransferParameters $function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass1(TransferParameters transferParameters) {
            super(1);
            this.$function = transferParameters;
        }

        @NotNull
        public final Double a(double d) {
            return Double.valueOf(ColorSpaceKt.n(d, this.$function.a(), this.$function.b(), this.$function.c(), this.$function.d(), this.$function.g()));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$2, reason: invalid class name */
    static final class AnonymousClass2 extends v implements l<Double, Double> {
        final /* synthetic */ TransferParameters $function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass2(TransferParameters transferParameters) {
            super(1);
            this.$function = transferParameters;
        }

        @NotNull
        public final Double a(double d) {
            return Double.valueOf(ColorSpaceKt.o(d, this.$function.a(), this.$function.b(), this.$function.c(), this.$function.d(), this.$function.e(), this.$function.f(), this.$function.g()));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$3, reason: invalid class name */
    static final class AnonymousClass3 extends v implements l<Double, Double> {
        final /* synthetic */ TransferParameters $function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass3(TransferParameters transferParameters) {
            super(1);
            this.$function = transferParameters;
        }

        @NotNull
        public final Double a(double d) {
            return Double.valueOf(ColorSpaceKt.p(d, this.$function.a(), this.$function.b(), this.$function.c(), this.$function.d(), this.$function.g()));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$4, reason: invalid class name */
    static final class AnonymousClass4 extends v implements l<Double, Double> {
        final /* synthetic */ TransferParameters $function;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass4(TransferParameters transferParameters) {
            super(1);
            this.$function = transferParameters;
        }

        @NotNull
        public final Double a(double d) {
            return Double.valueOf(ColorSpaceKt.q(d, this.$function.a(), this.$function.b(), this.$function.c(), this.$function.d(), this.$function.e(), this.$function.f(), this.$function.g()));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$5, reason: invalid class name */
    static final class AnonymousClass5 extends v implements l<Double, Double> {
        final /* synthetic */ double $gamma;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass5(double d) {
            super(1);
            this.$gamma = d;
        }

        @NotNull
        public final Double a(double d) {
            if (d < a.DEFAULT_VALUE_FOR_DOUBLE) {
                d = 0.0d;
            }
            return Double.valueOf(Math.pow(d, 1.0d / this.$gamma));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    /* JADX INFO: renamed from: androidx.compose.ui.graphics.colorspace.Rgb$6, reason: invalid class name */
    static final class AnonymousClass6 extends v implements l<Double, Double> {
        final /* synthetic */ double $gamma;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        AnonymousClass6(double d) {
            super(1);
            this.$gamma = d;
        }

        @NotNull
        public final Double a(double d) {
            if (d < a.DEFAULT_VALUE_FOR_DOUBLE) {
                d = 0.0d;
            }
            return Double.valueOf(Math.pow(d, this.$gamma));
        }

        @Override // e8.l
        public /* bridge */ /* synthetic */ Double invoke(Double d) {
            return a(d.doubleValue());
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private final float f(float[] fArr) {
            float f = fArr[0];
            float f6 = fArr[1];
            float f7 = fArr[2];
            float f10 = fArr[3];
            float f11 = fArr[4];
            float f12 = fArr[5];
            float f13 = ((((((f * f10) + (f6 * f11)) + (f7 * f12)) - (f10 * f11)) - (f6 * f7)) - (f * f12)) * 0.5f;
            return f13 < 0.0f ? -f13 : f13;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final WhitePoint i(float[] fArr) {
            float[] fArrM = ColorSpaceKt.m(fArr, new float[]{1.0f, 1.0f, 1.0f});
            float f = fArrM[0];
            float f6 = fArrM[1];
            float f7 = f + f6 + fArrM[2];
            return new WhitePoint(f / f7, f6 / f7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] j(float[] fArr, WhitePoint whitePoint) {
            float f = fArr[0];
            float f6 = fArr[1];
            float f7 = fArr[2];
            float f10 = fArr[3];
            float f11 = fArr[4];
            float f12 = fArr[5];
            float fA = whitePoint.a();
            float fB = whitePoint.b();
            float f13 = 1;
            float f14 = (f13 - f) / f6;
            float f15 = (f13 - f7) / f10;
            float f16 = (f13 - f11) / f12;
            float f17 = (f13 - fA) / fB;
            float f18 = f / f6;
            float f19 = (f7 / f10) - f18;
            float f20 = (fA / fB) - f18;
            float f21 = f15 - f14;
            float f22 = (f11 / f12) - f18;
            float f23 = (((f17 - f14) * f19) - (f20 * f21)) / (((f16 - f14) * f19) - (f21 * f22));
            float f24 = (f20 - (f22 * f23)) / f19;
            float f25 = (1.0f - f24) - f23;
            float f26 = f25 / f6;
            float f27 = f24 / f10;
            float f28 = f23 / f12;
            return new float[]{f26 * f, f25, f26 * ((1.0f - f) - f6), f27 * f7, f24, f27 * ((1.0f - f7) - f10), f28 * f11, f23, f28 * ((1.0f - f11) - f12)};
        }

        private final boolean k(float[] fArr, float[] fArr2) {
            float f = fArr[0] - fArr2[0];
            float f6 = fArr[1] - fArr2[1];
            float[] fArr3 = {f, f6, fArr[2] - fArr2[2], fArr[3] - fArr2[3], fArr[4] - fArr2[4], fArr[5] - fArr2[5]};
            return l(f, f6, fArr2[0] - fArr2[4], fArr2[1] - fArr2[5]) >= 0.0f && l(fArr2[0] - fArr2[2], fArr2[1] - fArr2[3], fArr3[0], fArr3[1]) >= 0.0f && l(fArr3[2], fArr3[3], fArr2[2] - fArr2[0], fArr2[3] - fArr2[1]) >= 0.0f && l(fArr2[2] - fArr2[4], fArr2[3] - fArr2[5], fArr3[2], fArr3[3]) >= 0.0f && l(fArr3[4], fArr3[5], fArr2[4] - fArr2[2], fArr2[5] - fArr2[3]) >= 0.0f && l(fArr2[4] - fArr2[0], fArr2[5] - fArr2[1], fArr3[4], fArr3[5]) >= 0.0f;
        }

        private final float l(float f, float f6, float f7, float f10) {
            return (f * f10) - (f6 * f7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean m(float[] fArr, WhitePoint whitePoint, l<? super Double, Double> lVar, l<? super Double, Double> lVar2, float f, float f6, int i10) {
            if (i10 == 0) {
                return true;
            }
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if (!ColorSpaceKt.g(fArr, colorSpaces.t()) || !ColorSpaceKt.f(whitePoint, Illuminant.INSTANCE.e()) || f != 0.0f || f6 != 1.0f) {
                return false;
            }
            Rgb rgbS = colorSpaces.s();
            for (double d = a.DEFAULT_VALUE_FOR_DOUBLE; d <= 1.0d; d += 0.00392156862745098d) {
                if (!g(d, lVar, rgbS.p()) || !g(d, lVar2, rgbS.m())) {
                    return false;
                }
            }
            return true;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final float[] o(float[] fArr) {
            float[] fArr2 = new float[6];
            if (fArr.length == 9) {
                float f = fArr[0];
                float f6 = fArr[1];
                float f7 = f + f6 + fArr[2];
                fArr2[0] = f / f7;
                fArr2[1] = f6 / f7;
                float f10 = fArr[3];
                float f11 = fArr[4];
                float f12 = f10 + f11 + fArr[5];
                fArr2[2] = f10 / f12;
                fArr2[3] = f11 / f12;
                float f13 = fArr[6];
                float f14 = fArr[7];
                float f15 = f13 + f14 + fArr[8];
                fArr2[4] = f13 / f15;
                fArr2[5] = f14 / f15;
            } else {
                o.k(fArr, fArr2, 0, 0, 6, 6, null);
            }
            return fArr2;
        }

        private Companion() {
        }

        @NotNull
        public final float[] h(@NotNull float[] toXYZ) {
            t.j(toXYZ, "toXYZ");
            float[] fArrM = ColorSpaceKt.m(toXYZ, new float[]{1.0f, 0.0f, 0.0f});
            float[] fArrM2 = ColorSpaceKt.m(toXYZ, new float[]{0.0f, 1.0f, 0.0f});
            float[] fArrM3 = ColorSpaceKt.m(toXYZ, new float[]{0.0f, 0.0f, 1.0f});
            float f = fArrM[0];
            float f6 = fArrM[1];
            float f7 = f + f6 + fArrM[2];
            float f10 = fArrM2[0] + fArrM2[1] + fArrM2[2];
            float f11 = fArrM3[0] + fArrM3[1] + fArrM3[2];
            return new float[]{f / f7, f6 / f7, fArrM2[0] / f10, fArrM2[1] / f10, fArrM3[0] / f11, fArrM3[1] / f11};
        }

        private final boolean g(double d, l<? super Double, Double> lVar, l<? super Double, Double> lVar2) {
            if (Math.abs(lVar.invoke(Double.valueOf(d)).doubleValue() - lVar2.invoke(Double.valueOf(d)).doubleValue()) <= 0.001d) {
                return true;
            }
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final boolean n(float[] fArr, float f, float f6) {
            float f7 = f(fArr);
            ColorSpaces colorSpaces = ColorSpaces.INSTANCE;
            if ((f7 / f(colorSpaces.o()) > 0.9f && k(fArr, colorSpaces.t())) || (f < 0.0f && f6 > 1.0f)) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @Nullable float[] fArr, @NotNull l<? super Double, Double> oetf, @NotNull l<? super Double, Double> eotf, float f, float f6, @Nullable TransferParameters transferParameters, int i10) {
        super(name, ColorModel.Companion.b(), i10, null);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
        t.j(oetf, "oetf");
        t.j(eotf, "eotf");
        this.whitePoint = whitePoint;
        this.min = f;
        this.max = f6;
        this.transferParameters = transferParameters;
        this.oetfOrig = oetf;
        this.oetf = new Rgb$oetf$1(this);
        this.eotfOrig = eotf;
        this.eotf = new Rgb$eotf$1(this);
        if (primaries.length != 6 && primaries.length != 9) {
            throw new IllegalArgumentException("The color space's primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ");
        }
        if (f >= f6) {
            throw new IllegalArgumentException("Invalid range: min=" + f + ", max=" + f6 + "; min must be strictly < max");
        }
        Companion companion = Companion;
        float[] fArrO = companion.o(primaries);
        this.primaries = fArrO;
        if (fArr == null) {
            this.transform = companion.j(fArrO, whitePoint);
        } else {
            if (fArr.length != 9) {
                throw new IllegalArgumentException("Transform must have 9 entries! Has " + fArr.length);
            }
            this.transform = fArr;
        }
        this.inverseTransform = ColorSpaceKt.j(this.transform);
        this.isWideGamut = companion.n(fArrO, f, f6);
        this.isSrgb = companion.m(fArrO, whitePoint, oetf, eotf, f, f6, i10);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float d(int i10) {
        return this.max;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float e(int i10) {
        return this.min;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !t.e(q0.b(Rgb.class), q0.b(obj.getClass())) || !super.equals(obj)) {
            return false;
        }
        Rgb rgb = (Rgb) obj;
        if (Float.compare(rgb.min, this.min) != 0 || Float.compare(rgb.max, this.max) != 0 || !t.e(this.whitePoint, rgb.whitePoint) || !Arrays.equals(this.primaries, rgb.primaries)) {
            return false;
        }
        TransferParameters transferParameters = this.transferParameters;
        if (transferParameters != null) {
            return t.e(transferParameters, rgb.transferParameters);
        }
        if (rgb.transferParameters == null) {
            return true;
        }
        if (t.e(this.oetfOrig, rgb.oetfOrig)) {
            return t.e(this.eotfOrig, rgb.eotfOrig);
        }
        return false;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public boolean h() {
        return this.isSrgb;
    }

    @NotNull
    public final l<Double, Double> l() {
        return this.eotf;
    }

    @NotNull
    public final l<Double, Double> m() {
        return this.eotfOrig;
    }

    @NotNull
    public final float[] n() {
        return this.inverseTransform;
    }

    @NotNull
    public final l<Double, Double> o() {
        return this.oetf;
    }

    @NotNull
    public final l<Double, Double> p() {
        return this.oetfOrig;
    }

    @NotNull
    public final float[] q() {
        return this.transform;
    }

    @NotNull
    public final WhitePoint r() {
        return this.whitePoint;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] a(@NotNull float[] v5) {
        t.j(v5, "v");
        ColorSpaceKt.m(this.inverseTransform, v5);
        v5[0] = (float) this.oetf.invoke(Double.valueOf(v5[0])).doubleValue();
        v5[1] = (float) this.oetf.invoke(Double.valueOf(v5[1])).doubleValue();
        v5[2] = (float) this.oetf.invoke(Double.valueOf(v5[2])).doubleValue();
        return v5;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] i(@NotNull float[] v5) {
        t.j(v5, "v");
        v5[0] = (float) this.eotf.invoke(Double.valueOf(v5[0])).doubleValue();
        v5[1] = (float) this.eotf.invoke(Double.valueOf(v5[1])).doubleValue();
        v5[2] = (float) this.eotf.invoke(Double.valueOf(v5[2])).doubleValue();
        return ColorSpaceKt.m(this.transform, v5);
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public int hashCode() {
        int iFloatToIntBits;
        int iFloatToIntBits2;
        int iHashCode = ((((super.hashCode() * 31) + this.whitePoint.hashCode()) * 31) + Arrays.hashCode(this.primaries)) * 31;
        float f = this.min;
        int iHashCode2 = 0;
        if (f == 0.0f) {
            iFloatToIntBits = 0;
        } else {
            iFloatToIntBits = Float.floatToIntBits(f);
        }
        int i10 = (iHashCode + iFloatToIntBits) * 31;
        float f6 = this.max;
        if (f6 == 0.0f) {
            iFloatToIntBits2 = 0;
        } else {
            iFloatToIntBits2 = Float.floatToIntBits(f6);
        }
        int i11 = (i10 + iFloatToIntBits2) * 31;
        TransferParameters transferParameters = this.transferParameters;
        if (transferParameters != null) {
            iHashCode2 = transferParameters.hashCode();
        }
        int i12 = i11 + iHashCode2;
        if (this.transferParameters == null) {
            return (((i12 * 31) + this.oetfOrig.hashCode()) * 31) + this.eotfOrig.hashCode();
        }
        return i12;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(@NotNull String name, @NotNull float[] toXYZ, @NotNull l<? super Double, Double> oetf, @NotNull l<? super Double, Double> eotf) {
        t.j(name, "name");
        t.j(toXYZ, "toXYZ");
        t.j(oetf, "oetf");
        t.j(eotf, "eotf");
        Companion companion = Companion;
        this(name, companion.h(toXYZ), companion.i(toXYZ), null, oetf, eotf, 0.0f, 1.0f, null, -1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull l<? super Double, Double> oetf, @NotNull l<? super Double, Double> eotf, float f, float f6) {
        this(name, primaries, whitePoint, null, oetf, eotf, f, f6, null, -1);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
        t.j(oetf, "oetf");
        t.j(eotf, "eotf");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(@NotNull String name, @NotNull float[] toXYZ, @NotNull TransferParameters function) {
        t.j(name, "name");
        t.j(toXYZ, "toXYZ");
        t.j(function, "function");
        Companion companion = Companion;
        this(name, companion.h(toXYZ), companion.i(toXYZ), function, -1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull TransferParameters function) {
        this(name, primaries, whitePoint, function, -1);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
        t.j(function, "function");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, @NotNull TransferParameters function, int i10) {
        this(name, primaries, whitePoint, null, (function.e() == a.DEFAULT_VALUE_FOR_DOUBLE && function.f() == a.DEFAULT_VALUE_FOR_DOUBLE) ? new AnonymousClass1(function) : new AnonymousClass2(function), (function.e() == a.DEFAULT_VALUE_FOR_DOUBLE && function.f() == a.DEFAULT_VALUE_FOR_DOUBLE) ? new AnonymousClass3(function) : new AnonymousClass4(function), 0.0f, 1.0f, function, i10);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
        t.j(function, "function");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Rgb(@NotNull String name, @NotNull float[] toXYZ, double d) {
        t.j(name, "name");
        t.j(toXYZ, "toXYZ");
        Companion companion = Companion;
        this(name, companion.h(toXYZ), companion.i(toXYZ), d, 0.0f, 1.0f, -1);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, double d) {
        this(name, primaries, whitePoint, d, 0.0f, 1.0f, -1);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull String name, @NotNull float[] primaries, @NotNull WhitePoint whitePoint, double d, float f, float f6, int i10) {
        this(name, primaries, whitePoint, null, d == 1.0d ? DoubleIdentity : new AnonymousClass5(d), d == 1.0d ? DoubleIdentity : new AnonymousClass6(d), f, f6, new TransferParameters(d, 1.0d, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, a.DEFAULT_VALUE_FOR_DOUBLE, 96, null), i10);
        t.j(name, "name");
        t.j(primaries, "primaries");
        t.j(whitePoint, "whitePoint");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Rgb(@NotNull Rgb colorSpace, @NotNull float[] transform, @NotNull WhitePoint whitePoint) {
        this(colorSpace.g(), colorSpace.primaries, whitePoint, transform, colorSpace.oetfOrig, colorSpace.eotfOrig, colorSpace.min, colorSpace.max, colorSpace.transferParameters, -1);
        t.j(colorSpace, "colorSpace");
        t.j(transform, "transform");
        t.j(whitePoint, "whitePoint");
    }
}
