package androidx.compose.ui.graphics.colorspace;

import e8.l;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes6.dex */
final class ColorSpaces$ExtendedSrgb$2 extends v implements l<Double, Double> {
    public static final ColorSpaces$ExtendedSrgb$2 INSTANCE = new ColorSpaces$ExtendedSrgb$2();

    ColorSpaces$ExtendedSrgb$2() {
        super(1);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ Double invoke(Double d) {
        return a(d.doubleValue());
    }

    @NotNull
    public final Double a(double d) {
        return Double.valueOf(ColorSpaceKt.b(d, 0.9478672985781991d, 0.05213270142180095d, 0.07739938080495357d, 0.04045d, 2.4d));
    }
}
