package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class FloatingActionButtonDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final FloatingActionButtonDefaults INSTANCE = new FloatingActionButtonDefaults();

    private FloatingActionButtonDefaults() {
    }

    @Composable
    @NotNull
    public final FloatingActionButtonElevation a(float f, float f6, float f7, float f10, @Nullable Composer composer, int i10, int i11) {
        composer.G(380403812);
        if ((i11 & 1) != 0) {
            f = Dp.f(6);
        }
        float f11 = f;
        if ((i11 & 2) != 0) {
            f6 = Dp.f(12);
        }
        float f12 = f6;
        if ((i11 & 4) != 0) {
            f7 = Dp.f(8);
        }
        float f13 = f7;
        if ((i11 & 8) != 0) {
            f10 = Dp.f(8);
        }
        float f14 = f10;
        Object[] objArr = {Dp.c(f11), Dp.c(f12), Dp.c(f13), Dp.c(f14)};
        composer.G(-568225417);
        boolean zK = false;
        for (int i12 = 0; i12 < 4; i12++) {
            zK |= composer.k(objArr[i12]);
        }
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DefaultFloatingActionButtonElevation(f11, f12, f13, f14, null);
            composer.z(objH);
        }
        composer.Q();
        DefaultFloatingActionButtonElevation defaultFloatingActionButtonElevation = (DefaultFloatingActionButtonElevation) objH;
        composer.Q();
        return defaultFloatingActionButtonElevation;
    }
}
