package androidx.compose.ui.graphics.colorspace;

import j8.o;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
public final class Lab extends ColorSpace {
    private static final float A = 0.008856452f;
    private static final float B = 7.787037f;
    private static final float C = 0.13793103f;

    @NotNull
    public static final Companion Companion = new Companion(null);
    private static final float D = 0.20689656f;

    public static final class Companion {
        public /* synthetic */ Companion(k kVar) {
            this();
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float d(int i10) {
        return i10 == 0 ? 100.0f : 128.0f;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    public float e(int i10) {
        return i10 == 0 ? 0.0f : -128.0f;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Lab(@NotNull String name, int i10) {
        super(name, ColorModel.Companion.a(), i10, null);
        t.j(name, "name");
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] a(@NotNull float[] v5) {
        t.j(v5, "v");
        float f = v5[0];
        Illuminant illuminant = Illuminant.INSTANCE;
        float f6 = f / illuminant.c()[0];
        float f7 = v5[1] / illuminant.c()[1];
        float f10 = v5[2] / illuminant.c()[2];
        float fPow = f6 > A ? (float) Math.pow(f6, 0.33333334f) : (f6 * B) + C;
        float fPow2 = f7 > A ? (float) Math.pow(f7, 0.33333334f) : (f7 * B) + C;
        float fPow3 = f10 > A ? (float) Math.pow(f10, 0.33333334f) : (f10 * B) + C;
        v5[0] = o.m((116.0f * fPow2) - 16.0f, 0.0f, 100.0f);
        v5[1] = o.m((fPow - fPow2) * 500.0f, -128.0f, 128.0f);
        v5[2] = o.m((fPow2 - fPow3) * 200.0f, -128.0f, 128.0f);
        return v5;
    }

    @Override // androidx.compose.ui.graphics.colorspace.ColorSpace
    @NotNull
    public float[] i(@NotNull float[] v5) {
        t.j(v5, "v");
        v5[0] = o.m(v5[0], 0.0f, 100.0f);
        v5[1] = o.m(v5[1], -128.0f, 128.0f);
        float fM = o.m(v5[2], -128.0f, 128.0f);
        v5[2] = fM;
        float f = (v5[0] + 16.0f) / 116.0f;
        float f6 = (v5[1] * 0.002f) + f;
        float f7 = f - (fM * 0.005f);
        float f10 = f6 > D ? f6 * f6 * f6 : (f6 - C) * 0.12841855f;
        float f11 = f > D ? f * f * f : (f - C) * 0.12841855f;
        float f12 = f7 > D ? f7 * f7 * f7 : (f7 - C) * 0.12841855f;
        Illuminant illuminant = Illuminant.INSTANCE;
        v5[0] = f10 * illuminant.c()[0];
        v5[1] = f11 * illuminant.c()[1];
        v5[2] = f12 * illuminant.c()[2];
        return v5;
    }
}
