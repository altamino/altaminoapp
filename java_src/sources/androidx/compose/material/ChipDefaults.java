package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@StabilityInferred
@ExperimentalMaterialApi
public final class ChipDefaults {
    public static final int $stable = 0;
    public static final float ContentOpacity = 0.87f;
    public static final float LeadingIconOpacity = 0.54f;
    public static final float OutlinedBorderOpacity = 0.12f;

    @NotNull
    public static final ChipDefaults INSTANCE = new ChipDefaults();
    private static final float MinHeight = Dp.f(32);
    private static final float OutlinedBorderSize = Dp.f(1);
    private static final float LeadingIconSize = Dp.f(20);
    private static final float SelectedIconSize = Dp.f(18);

    public final float c() {
        return MinHeight;
    }

    @Composable
    @NotNull
    public final ChipColors a(long j6, long j10, long j11, long j12, long j13, long j14, @Nullable Composer composer, int i10, int i11) {
        long jG;
        long jG2;
        long jL;
        long jL2;
        composer.G(1838505436);
        if ((i11 & 1) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            jG = ColorKt.g(Color.l(materialTheme.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.a(composer, 6).n());
        } else {
            jG = j6;
        }
        long jL3 = (i11 & 2) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long jL4 = (i11 & 4) != 0 ? Color.l(jL3, 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        if ((i11 & 8) != 0) {
            MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
            jG2 = ColorKt.g(Color.l(materialTheme2.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6) * 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme2.a(composer, 6).n());
        } else {
            jG2 = j12;
        }
        if ((i11 & 16) != 0) {
            jL = Color.l(jL3, ContentAlpha.INSTANCE.b(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL = j13;
        }
        if ((i11 & 32) != 0) {
            jL2 = Color.l(jL4, ContentAlpha.INSTANCE.b(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL2 = j14;
        }
        DefaultChipColors defaultChipColors = new DefaultChipColors(jG, jL3, jL4, jG2, jL, jL2, null);
        composer.Q();
        return defaultChipColors;
    }

    @Composable
    @NotNull
    public final SelectableChipColors b(long j6, long j10, long j11, long j12, long j13, long j14, long j15, long j16, long j17, @Nullable Composer composer, int i10, int i11) {
        long jG;
        long jG2;
        long jL;
        long jL2;
        composer.G(830140629);
        if ((i11 & 1) != 0) {
            MaterialTheme materialTheme = MaterialTheme.INSTANCE;
            jG = ColorKt.g(Color.l(materialTheme.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme.a(composer, 6).n());
        } else {
            jG = j6;
        }
        long jL3 = (i11 & 2) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.87f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long jL4 = (i11 & 4) != 0 ? Color.l(jL3, 0.54f, 0.0f, 0.0f, 0.0f, 14, null) : j11;
        if ((i11 & 8) != 0) {
            MaterialTheme materialTheme2 = MaterialTheme.INSTANCE;
            jG2 = ColorKt.g(Color.l(materialTheme2.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6) * 0.12f, 0.0f, 0.0f, 0.0f, 14, null), materialTheme2.a(composer, 6).n());
        } else {
            jG2 = j12;
        }
        if ((i11 & 16) != 0) {
            jL = Color.l(jL3, ContentAlpha.INSTANCE.b(composer, 6) * 0.87f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL = j13;
        }
        if ((i11 & 32) != 0) {
            jL2 = Color.l(jL4, ContentAlpha.INSTANCE.b(composer, 6) * 0.54f, 0.0f, 0.0f, 0.0f, 14, null);
        } else {
            jL2 = j14;
        }
        DefaultSelectableChipColors defaultSelectableChipColors = new DefaultSelectableChipColors(jG, jL3, jL4, jG2, jL, jL2, (i11 & 64) != 0 ? ColorKt.g(Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.12f, 0.0f, 0.0f, 0.0f, 14, null), jG) : j15, (i11 & 128) != 0 ? ColorKt.g(Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), jL3) : j16, (i11 & 256) != 0 ? ColorKt.g(Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.16f, 0.0f, 0.0f, 0.0f, 14, null), jL4) : j17, null);
        composer.Q();
        return defaultSelectableChipColors;
    }

    private ChipDefaults() {
    }
}
