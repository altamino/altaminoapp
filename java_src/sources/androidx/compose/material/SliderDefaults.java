package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class SliderDefaults {
    public static final int $stable = 0;
    public static final float DisabledActiveTrackAlpha = 0.32f;
    public static final float DisabledInactiveTrackAlpha = 0.12f;
    public static final float DisabledTickAlpha = 0.12f;

    @NotNull
    public static final SliderDefaults INSTANCE = new SliderDefaults();
    public static final float InactiveTrackAlpha = 0.24f;
    public static final float TickAlpha = 0.54f;

    @Composable
    @NotNull
    public final SliderColors a(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, long j18, @Nullable Composer composer, int i10, int i11, int i12) {
        long jG;
        composer.G(436017687);
        long j19 = (i12 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j6;
        if ((i12 & 2) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            jG = ColorKt.g(Color.l(materialTheme.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), materialTheme.a(composer, 6).n());
        } else {
            jG = j10;
        }
        long j20 = (i12 & 4) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).j() : j11;
        long jL = (i12 & 8) != 0 ? Color.l(j20, 0.24f, 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long jL2 = (i12 & 16) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.32f, 0.0f, 0.0f, 0.0f, 14, null) : j13;
        long jL3 = (i12 & 32) != 0 ? Color.l(jL2, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j14;
        long jL4 = (i12 & 64) != 0 ? Color.l(ColorsKt.b(j20, composer, (i10 >> 6) & 14), 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j15;
        DefaultSliderColors defaultSliderColors = new DefaultSliderColors(j19, jG, j20, jL, jL2, jL3, jL4, (i12 & 128) != 0 ? Color.l(j20, 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j16, (i12 & 256) != 0 ? Color.l(jL4, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j17, (i12 & 512) != 0 ? Color.l(jL3, 0.12f, 0.0f, 0.0f, 0.0f, 14, null) : j18, null);
        composer.Q();
        return defaultSliderColors;
    }

    private SliderDefaults() {
    }
}
