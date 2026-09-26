package androidx.compose.ui.graphics.colorspace;

import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class Oklab extends ColorSpace {

    @NotNull
    public static final Companion Companion = new Companion(null);

    @NotNull
    private static final float[] InverseM1;

    @NotNull
    private static final float[] InverseM2;

    @NotNull
    private static final float[] M1;

    @NotNull
    private static final float[] M2;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float d(int i10) {
        return i10 == 0 ? 1.0f : 0.5f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float e(int i10) {
        return i10 == 0 ? 0.0f : -0.5f;
    }

    static {
        float[] fArrB = Adaptation.Companion.a().b();
        Illuminant illuminant = Illuminant.INSTANCE;
        float[] fArrK = ColorSpaceKt.k(new float[]{0.818933f, 0.032984544f, 0.0482003f, 0.36186674f, 0.9293119f, 0.26436627f, -0.12885971f, 0.03614564f, 0.6338517f}, ColorSpaceKt.e(fArrB, illuminant.b().c(), illuminant.e().c()));
        M1 = fArrK;
        float[] fArr = {0.21045426f, 1.9779985f, 0.025904037f, 0.7936178f, -2.4285922f, 0.78277177f, -0.004072047f, 0.4505937f, -0.80867577f};
        M2 = fArr;
        InverseM1 = ColorSpaceKt.j(fArrK);
        InverseM2 = ColorSpaceKt.j(fArr);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Oklab(@NotNull String name, int i10) {
        super(name, ColorModel.Companion.a(), i10, null);
        t.j(name, "name");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] a(@NotNull float[] v5) {
        t.j(v5, "v");
        ColorSpaceKt.m(M1, v5);
        double d = 0.33333334f;
        v5[0] = Math.signum(v5[0]) * ((float) Math.pow(Math.abs(v5[0]), d));
        v5[1] = Math.signum(v5[1]) * ((float) Math.pow(Math.abs(v5[1]), d));
        v5[2] = Math.signum(v5[2]) * ((float) Math.pow(Math.abs(v5[2]), d));
        ColorSpaceKt.m(M2, v5);
        return v5;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] i(@NotNull float[] v5) {
        t.j(v5, "v");
        v5[0] = o.m(v5[0], 0.0f, 1.0f);
        v5[1] = o.m(v5[1], -0.5f, 0.5f);
        v5[2] = o.m(v5[2], -0.5f, 0.5f);
        ColorSpaceKt.m(InverseM2, v5);
        float f = v5[0];
        v5[0] = f * f * f;
        float f6 = v5[1];
        v5[1] = f6 * f6 * f6;
        float f7 = v5[2];
        v5[2] = f7 * f7 * f7;
        ColorSpaceKt.m(InverseM1, v5);
        return v5;
    }
}
