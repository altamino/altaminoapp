package androidx.compose.material.ripple;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.material.TextFieldImplKt;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class RippleKt {

    @NotNull
    private static final TweenSpec<Float> DefaultTweenSpec = new TweenSpec<>(15, 0, EasingKt.b(), 2, null);

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec<Float> c(Interaction interaction) {
        if (interaction instanceof HoverInteraction.Enter) {
            return DefaultTweenSpec;
        }
        if (interaction instanceof FocusInteraction.Focus) {
            return new TweenSpec(45, 0, EasingKt.b(), 2, null);
        }
        return interaction instanceof DragInteraction.Start ? new TweenSpec(45, 0, EasingKt.b(), 2, null) : DefaultTweenSpec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final AnimationSpec<Float> d(Interaction interaction) {
        if (interaction instanceof HoverInteraction.Enter) {
            return DefaultTweenSpec;
        }
        if (interaction instanceof FocusInteraction.Focus) {
            return DefaultTweenSpec;
        }
        return interaction instanceof DragInteraction.Start ? new TweenSpec(TextFieldImplKt.AnimationDuration, 0, EasingKt.b(), 2, null) : DefaultTweenSpec;
    }

    @Composable
    @NotNull
    public static final Indication e(boolean z6, float f, long j6, @Nullable Composer composer, int i10, int i11) {
        composer.G(1635163520);
        if ((i11 & 1) != 0) {
            z6 = true;
        }
        if ((i11 & 2) != 0) {
            f = Dp.Companion.b();
        }
        if ((i11 & 4) != 0) {
            j6 = Color.Companion.f();
        }
        State stateN = SnapshotStateKt.n(Color.h(j6), composer, (i10 >> 6) & 14);
        Boolean boolValueOf = Boolean.valueOf(z6);
        Dp dpC = Dp.c(f);
        composer.G(-3686552);
        boolean zK = composer.k(boolValueOf) | composer.k(dpC);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new PlatformRipple(z6, f, stateN, null);
            composer.z(objH);
        }
        composer.Q();
        PlatformRipple platformRipple = (PlatformRipple) objH;
        composer.Q();
        return platformRipple;
    }
}
