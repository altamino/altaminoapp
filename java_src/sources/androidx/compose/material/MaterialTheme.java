package androidx.compose.material;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ReadOnlyComposable;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class MaterialTheme {
    public static final int $stable = 0;

    @NotNull
    public static final MaterialTheme INSTANCE = new MaterialTheme();

    private MaterialTheme() {
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Colors a(@Nullable Composer composer, int i10) {
        return (Colors) composer.x(ColorsKt.e());
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Shapes b(@Nullable Composer composer, int i10) {
        return (Shapes) composer.x(ShapesKt.a());
    }

    @Composable
    @ReadOnlyComposable
    @NotNull
    public final Typography c(@Nullable Composer composer, int i10) {
        return (Typography) composer.x(TypographyKt.b());
    }
}
