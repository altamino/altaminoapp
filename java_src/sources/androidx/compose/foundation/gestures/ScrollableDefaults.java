package androidx.compose.foundation.gestures;

import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec_androidKt;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.foundation.AndroidOverscrollKt;
import androidx.compose.foundation.ExperimentalFoundationApi;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class ScrollableDefaults {
    public static final int $stable = 0;

    @NotNull
    public static final ScrollableDefaults INSTANCE = new ScrollableDefaults();

    private ScrollableDefaults() {
    }

    @Composable
    @NotNull
    public final FlingBehavior a(@Nullable Composer composer, int i10) {
        composer.G(1107739818);
        DecayAnimationSpec decayAnimationSpecB = SplineBasedFloatDecayAnimationSpec_androidKt.b(composer, 0);
        composer.G(1157296644);
        boolean zK = composer.k(decayAnimationSpecB);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new DefaultFlingBehavior(decayAnimationSpecB);
            composer.z(objH);
        }
        composer.Q();
        DefaultFlingBehavior defaultFlingBehavior = (DefaultFlingBehavior) objH;
        composer.Q();
        return defaultFlingBehavior;
    }

    @Composable
    @ExperimentalFoundationApi
    @NotNull
    public final OverscrollEffect b(@Nullable Composer composer, int i10) {
        composer.G(1809802212);
        OverscrollEffect overscrollEffectB = AndroidOverscrollKt.b(composer, 0);
        composer.Q();
        return overscrollEffectB;
    }
}
