package androidx.compose.material;

import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
public final class MaterialTextSelectionColorsKt {
    private static final float DefaultSelectionBackgroundAlpha = 0.4f;
    private static final float DesiredContrastRatio = 4.5f;
    private static final float MinimumSelectionBackgroundAlpha = 0.2f;

    private static final float a(long j6, long j10, long j11) {
        float f = 0.2f;
        float f6 = 0.4f;
        float f7 = 0.4f;
        for (int i10 = 0; i10 < 7; i10++) {
            float fC = (c(j6, f6, j10, j11) / DesiredContrastRatio) - 1.0f;
            if (0.0f <= fC && fC <= 0.01f) {
                break;
            }
            if (fC < 0.0f) {
                f7 = f6;
            } else {
                f = f6;
            }
            f6 = (f7 + f) / 2.0f;
        }
        return f6;
    }

    private static final float c(long j6, float f, long j10, long j11) {
        long jG = ColorKt.g(Color.l(j6, f, 0.0f, 0.0f, 0.0f, 14, null), j11);
        return b(ColorKt.g(j10, jG), jG);
    }

    @Composable
    @NotNull
    public static final TextSelectionColors e(@NotNull Colors colors, @Nullable Composer composer, int i10) {
        t.j(colors, "colors");
        composer.G(-721696685);
        long j6 = colors.j();
        long jC = colors.c();
        composer.G(35572910);
        long jA = ColorsKt.a(colors, jC);
        if (jA == Color.Companion.f()) {
            jA = ((Color) composer.x(ContentColorKt.a())).v();
        }
        long j10 = jA;
        composer.Q();
        long jL = Color.l(j10, ContentAlpha.INSTANCE.d(composer, 6), 0.0f, 0.0f, 0.0f, 14, null);
        Color colorH = Color.h(j6);
        Color colorH2 = Color.h(jC);
        Color colorH3 = Color.h(jL);
        composer.G(1618982084);
        boolean zK = composer.k(colorH) | composer.k(colorH2) | composer.k(colorH3);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new TextSelectionColors(colors.j(), d(j6, jL, jC), null);
            composer.z(objH);
        }
        composer.Q();
        TextSelectionColors textSelectionColors = (TextSelectionColors) objH;
        composer.Q();
        return textSelectionColors;
    }

    public static final float b(long j6, long j10) {
        float fJ = ColorKt.j(j6) + 0.05f;
        float fJ2 = ColorKt.j(j10) + 0.05f;
        return Math.max(fJ, fJ2) / Math.min(fJ, fJ2);
    }

    public static final long d(long j6, long j10, long j11) {
        float fA;
        float fC = c(j6, DefaultSelectionBackgroundAlpha, j10, j11);
        float fC2 = c(j6, 0.2f, j10, j11);
        if (fC >= DesiredContrastRatio) {
            fA = DefaultSelectionBackgroundAlpha;
        } else if (fC2 < DesiredContrastRatio) {
            fA = 0.2f;
        } else {
            fA = a(j6, j10, j11);
        }
        return Color.l(j6, fA, 0.0f, 0.0f, 0.0f, 14, null);
    }
}
