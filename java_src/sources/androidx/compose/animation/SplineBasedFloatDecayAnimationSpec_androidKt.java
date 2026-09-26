package androidx.compose.animation;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.DecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes6.dex */
public final class SplineBasedFloatDecayAnimationSpec_androidKt {
    private static final float platformFlingScrollFriction = ViewConfiguration.getScrollFriction();

    public static final float a() {
        return platformFlingScrollFriction;
    }

    @Composable
    @NotNull
    public static final <T> DecayAnimationSpec<T> b(@Nullable Composer composer, int i10) {
        composer.G(904445851);
        Density density = (Density) composer.x(CompositionLocalsKt.e());
        Float fValueOf = Float.valueOf(density.getDensity());
        composer.G(1157296644);
        boolean zK = composer.k(fValueOf);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = DecayAnimationSpecKt.a(new SplineBasedFloatDecayAnimationSpec(density));
            composer.z(objH);
        }
        composer.Q();
        DecayAnimationSpec<T> decayAnimationSpec = (DecayAnimationSpec) objH;
        composer.Q();
        return decayAnimationSpec;
    }
}
