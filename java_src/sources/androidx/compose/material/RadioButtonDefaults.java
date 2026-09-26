package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class RadioButtonDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final RadioButtonDefaults INSTANCE = new RadioButtonDefaults();

    @Composable
    @NotNull
    public final RadioButtonColors a(long j6, long j10, long j11, @Nullable Composer composer, int i10, int i11) {
        composer.G(1370708026);
        long jL = (i11 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).l() : j6;
        long jL2 = (i11 & 2) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long jL3 = (i11 & 4) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j11;
        Color colorH = Color.h(jL);
        Color colorH2 = Color.h(jL2);
        Color colorH3 = Color.h(jL3);
        composer.G(1618982084);
        boolean zK = composer.k(colorH) | composer.k(colorH2) | composer.k(colorH3);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DefaultRadioButtonColors(jL, jL2, jL3, null);
            composer.z(objH);
        }
        composer.Q();
        DefaultRadioButtonColors defaultRadioButtonColors = (DefaultRadioButtonColors) objH;
        composer.Q();
        return defaultRadioButtonColors;
    }

    private RadioButtonDefaults() {
    }
}
