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
public final class ContentAlpha {
    public static final int $stable = 0;

    @NotNull
    public static final ContentAlpha INSTANCE = new ContentAlpha();

    private ContentAlpha() {
    }

    @Composable
    private final float a(float f, float f6, Composer composer, int i10) {
        composer.G(-1528360391);
        long jV = ((Color) composer.x(ContentColorKt.a())).v();
        if (!MaterialTheme.INSTANCE.a(composer, 6).o() ? ColorKt.j(jV) >= 0.5d : ColorKt.j(jV) <= 0.5d) {
            f = f6;
        }
        composer.Q();
        return f;
    }

    @Composable
    public final float b(@Nullable Composer composer, int i10) {
        composer.G(621183615);
        float fA = a(0.38f, 0.38f, composer, ((i10 << 6) & 896) | 54);
        composer.Q();
        return fA;
    }

    @Composable
    public final float c(@Nullable Composer composer, int i10) {
        composer.G(629162431);
        float fA = a(1.0f, 0.87f, composer, ((i10 << 6) & 896) | 54);
        composer.Q();
        return fA;
    }

    @Composable
    public final float d(@Nullable Composer composer, int i10) {
        composer.G(1999054879);
        float fA = a(0.74f, 0.6f, composer, ((i10 << 6) & 896) | 54);
        composer.Q();
        return fA;
    }
}
