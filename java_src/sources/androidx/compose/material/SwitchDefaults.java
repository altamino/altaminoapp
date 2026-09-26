package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class SwitchDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final SwitchDefaults INSTANCE = new SwitchDefaults();

    @Composable
    @NotNull
    public final SwitchColors a(long j6, long j10, float f, long j11, long j12, float f6, long j13, long j14, long j15, long j16, @Nullable Composer composer, int i10, int i11, int i12) {
        long jG;
        long jG2;
        int i13;
        long jG3;
        long jG4;
        composer.G(-1032127534);
        long jM = (i12 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).m() : j6;
        long j17 = (i12 & 2) != 0 ? jM : j10;
        float f7 = (i12 & 4) != 0 ? 0.54f : f;
        long jN = (i12 & 8) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).n() : j11;
        long jI = (i12 & 16) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).i() : j12;
        float f10 = (i12 & 32) != 0 ? 0.38f : f6;
        if ((i12 & 64) != 0) {
            jG = ColorKt.g(Color.l(jM, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.a(composer, 6).n());
        } else {
            jG = j13;
        }
        if ((i12 & 128) != 0) {
            jG2 = ColorKt.g(Color.l(j17, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.a(composer, 6).n());
        } else {
            jG2 = j14;
        }
        if ((i12 & 256) != 0) {
            i13 = 6;
            jG3 = ColorKt.g(Color.l(jN, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.a(composer, 6).n());
        } else {
            i13 = 6;
            jG3 = j15;
        }
        if ((i12 & 512) != 0) {
            jG4 = ColorKt.g(Color.l(jI, ContentAlpha.INSTANCE.b(composer, i13), 0.0f, 0.0f, 0.0f, 14, null), MaterialTheme.INSTANCE.a(composer, 6).n());
        } else {
            jG4 = j16;
        }
        DefaultSwitchColors defaultSwitchColors = new DefaultSwitchColors(jM, Color.l(j17, f7, 0.0f, 0.0f, 0.0f, 14, null), jN, Color.l(jI, f10, 0.0f, 0.0f, 0.0f, 14, null), jG, Color.l(jG2, f7, 0.0f, 0.0f, 0.0f, 14, null), jG3, Color.l(jG4, f10, 0.0f, 0.0f, 0.0f, 14, null), null);
        composer.Q();
        return defaultSwitchColors;
    }

    private SwitchDefaults() {
    }
}
