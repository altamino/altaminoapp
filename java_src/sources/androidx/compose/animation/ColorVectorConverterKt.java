package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector4D;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.colorspace.ColorSpace;
import e8.l;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
public final class ColorVectorConverterKt {

    @NotNull
    private static final l<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> ColorToVector = ColorVectorConverterKt$ColorToVector$1.INSTANCE;

    @NotNull
    private static final float[] M1 = {0.80405736f, 0.026893456f, 0.04586542f, 0.3188387f, 0.9319606f, 0.26299807f, -0.11419419f, 0.05105356f, 0.83999807f};

    @NotNull
    private static final float[] InverseM1 = {1.2485008f, -0.032856926f, -0.057883114f, -0.48331892f, 1.1044513f, -0.3194066f, 0.19910365f, -0.07159331f, 1.202023f};

    @NotNull
    public static final l<ColorSpace, TwoWayConverter<Color, AnimationVector4D>> d(@NotNull Color.Companion companion) {
        t.j(companion, "<this>");
        return ColorToVector;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float e(int i10, float f, float f6, float f7, float[] fArr) {
        return (f * fArr[i10]) + (f6 * fArr[i10 + 3]) + (f7 * fArr[i10 + 6]);
    }
}
