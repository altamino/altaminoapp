package androidx.compose.material;

import androidx.compose.foundation.shape.CornerBasedShape;
import androidx.compose.foundation.shape.CornerSizeKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes7.dex */
@StabilityInferred
public final class BackdropScaffoldDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final BackdropScaffoldDefaults INSTANCE = new BackdropScaffoldDefaults();
    private static final float PeekHeight = Dp.f(56);
    private static final float HeaderHeight = Dp.f(48);
    private static final float FrontLayerElevation = Dp.f(1);

    public final float a() {
        return FrontLayerElevation;
    }

    public final float d() {
        return HeaderHeight;
    }

    public final float e() {
        return PeekHeight;
    }

    private BackdropScaffoldDefaults() {
    }

    @Composable
    public final long b(@Nullable Composer composer, int i10) {
        composer.G(1806270648);
        long jL = Color.l(MaterialTheme.INSTANCE.a(composer, 6).n(), 0.6f, 0.0f, 0.0f, 0.0f, 14, null);
        composer.Q();
        return jL;
    }

    @Composable
    @NotNull
    public final Shape c(@Nullable Composer composer, int i10) {
        composer.G(1580588700);
        float f = 16;
        CornerBasedShape cornerBasedShapeD = CornerBasedShape.d(MaterialTheme.INSTANCE.b(composer, 6).a(), CornerSizeKt.b(Dp.f(f)), CornerSizeKt.b(Dp.f(f)), null, null, 12, null);
        composer.Q();
        return cornerBasedShapeD;
    }
}
