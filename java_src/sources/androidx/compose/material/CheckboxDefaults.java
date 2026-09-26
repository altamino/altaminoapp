package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes5.dex */
@StabilityInferred
public final class CheckboxDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final CheckboxDefaults INSTANCE = new CheckboxDefaults();

    @Composable
    @NotNull
    public final CheckboxColors a(long j6, long j10, long j11, long j12, long j13, @Nullable Composer composer, int i10, int i11) {
        composer.G(469524104);
        long jL = (i11 & 1) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).l() : j6;
        long jL2 = (i11 & 2) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null) : j10;
        long jN = (i11 & 4) != 0 ? MaterialTheme.INSTANCE.a(composer, 6).n() : j11;
        long jL3 = (i11 & 8) != 0 ? Color.l(MaterialTheme.INSTANCE.a(composer, 6).i(), ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j12;
        long jL4 = (i11 & 16) != 0 ? Color.l(jL, ContentAlpha.INSTANCE.b(composer, 6), 0.0f, 0.0f, 0.0f, 14, null) : j13;
        Object[] objArr = {Color.h(jL), Color.h(jL2), Color.h(jN), Color.h(jL3), Color.h(jL4)};
        composer.G(-568225417);
        boolean zK = false;
        for (int i12 = 0; i12 < 5; i12++) {
            zK |= composer.k(objArr[i12]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DefaultCheckboxColors(jN, Color.l(jN, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), jL, Color.l(jL, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), jL3, Color.l(jL3, 0.0f, 0.0f, 0.0f, 0.0f, 14, null), jL4, jL, jL2, jL3, jL4, null);
            composer.z(objH);
        }
        composer.Q();
        DefaultCheckboxColors defaultCheckboxColors = (DefaultCheckboxColors) objH;
        composer.Q();
        return defaultCheckboxColors;
    }

    private CheckboxDefaults() {
    }
}
