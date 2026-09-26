package androidx.compose.material.ripple;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
final class DebugRippleTheme implements RippleTheme {

    @NotNull
    public static final DebugRippleTheme INSTANCE = new DebugRippleTheme();

    private DebugRippleTheme() {
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    public long a(@Nullable Composer composer, int i10) {
        composer.G(2042140174);
        long jB = RippleTheme.Companion.b(Color.Companion.a(), true);
        composer.Q();
        return jB;
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    @NotNull
    public RippleAlpha b(@Nullable Composer composer, int i10) {
        composer.G(-1629816343);
        RippleAlpha rippleAlphaA = RippleTheme.Companion.a(Color.Companion.a(), true);
        composer.Q();
        return rippleAlphaA;
    }
}
