package androidx.compose.material;

import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material.ripple.RippleTheme;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Immutable;
import androidx.compose.ui.graphics.Color;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
@Immutable
final class MaterialRippleTheme implements RippleTheme {

    @NotNull
    public static final MaterialRippleTheme INSTANCE = new MaterialRippleTheme();

    private MaterialRippleTheme() {
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    public long a(@Nullable Composer composer, int i10) {
        composer.G(550536719);
        long jB = RippleTheme.Companion.b(((Color) composer.x(ContentColorKt.a())).v(), MaterialTheme.INSTANCE.a(composer, 6).o());
        composer.Q();
        return jB;
    }

    @Override // androidx.compose.material.ripple.RippleTheme
    @Composable
    @NotNull
    public RippleAlpha b(@Nullable Composer composer, int i10) {
        composer.G(-1419762518);
        RippleAlpha rippleAlphaA = RippleTheme.Companion.a(((Color) composer.x(ContentColorKt.a())).v(), MaterialTheme.INSTANCE.a(composer, 6).o());
        composer.Q();
        return rippleAlphaA;
    }
}
