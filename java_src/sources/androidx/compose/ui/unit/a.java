package androidx.compose.ui.unit;

import androidx.compose.runtime.Stable;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.geometry.SizeKt;
import g8.c;

/* JADX INFO: loaded from: classes7.dex */
public final /* synthetic */ class a {
    @Stable
    public static float e(Density density, int i10) {
        return Dp.f(i10 / density.getDensity());
    }

    @Stable
    public static long f(Density density, long j6) {
        return j6 != Size.Companion.a() ? DpKt.b(density.P(Size.i(j6)), density.P(Size.g(j6))) : DpSize.Companion.a();
    }

    @Stable
    public static long i(Density density, long j6) {
        return j6 != DpSize.Companion.a() ? SizeKt.a(density.H0(DpSize.h(j6)), density.H0(DpSize.g(j6))) : Size.Companion.a();
    }

    @Stable
    public static int a(Density density, long j6) {
        return c.c(density.p0(j6));
    }

    @Stable
    public static int b(Density density, float f) {
        float fH0 = density.H0(f);
        if (!Float.isInfinite(fH0)) {
            return c.c(fH0);
        }
        return Integer.MAX_VALUE;
    }

    @Stable
    public static float c(Density density, long j6) {
        if (TextUnitType.g(TextUnit.g(j6), TextUnitType.Companion.b())) {
            return Dp.f(TextUnit.h(j6) * density.E0());
        }
        throw new IllegalStateException("Only Sp can convert to Px".toString());
    }

    @Stable
    public static float d(Density density, float f) {
        return Dp.f(f / density.getDensity());
    }

    @Stable
    public static float g(Density density, long j6) {
        if (TextUnitType.g(TextUnit.g(j6), TextUnitType.Companion.b())) {
            return TextUnit.h(j6) * density.E0() * density.getDensity();
        }
        throw new IllegalStateException("Only Sp can convert to Px".toString());
    }

    @Stable
    public static float h(Density density, float f) {
        return f * density.getDensity();
    }
}
