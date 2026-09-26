package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.ui.unit.Dp;
import kotlin.coroutines.d;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes8.dex */
public final class ElevationKt {

    @NotNull
    private static final TweenSpec<Dp> DefaultIncomingSpec = new TweenSpec<>(120, 0, EasingKt.a(), 2, null);

    @NotNull
    private static final TweenSpec<Dp> DefaultOutgoingSpec = new TweenSpec<>(TextFieldImplKt.AnimationDuration, 0, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2, null);

    @NotNull
    private static final TweenSpec<Dp> HoveredOutgoingSpec = new TweenSpec<>(120, 0, new CubicBezierEasing(0.4f, 0.0f, 0.6f, 1.0f), 2, null);

    @Nullable
    public static final Object d(@NotNull Animatable<Dp, ?> animatable, float f, @Nullable Interaction interaction, @Nullable Interaction interaction2, @NotNull d<? super l0> dVar) {
        AnimationSpec<Dp> animationSpecB;
        if (interaction2 != null) {
            animationSpecB = ElevationDefaults.INSTANCE.a(interaction2);
        } else {
            animationSpecB = interaction != null ? ElevationDefaults.INSTANCE.b(interaction) : null;
        }
        AnimationSpec<Dp> animationSpec = animationSpecB;
        if (animationSpec != null) {
            Object objF = Animatable.f(animatable, Dp.c(f), animationSpec, null, null, dVar, 12, null);
            return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
        }
        Object objU = animatable.u(Dp.c(f), dVar);
        return objU == kotlin.coroutines.intrinsics.d.e() ? objU : l0.INSTANCE;
    }
}
