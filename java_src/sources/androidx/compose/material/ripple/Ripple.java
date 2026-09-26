package androidx.compose.material.ripple;

import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.c;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.unit.Dp;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Stable
public abstract class Ripple implements Indication {
    private final boolean bounded;

    @NotNull
    private final State<Color> color;
    private final float radius;

    public /* synthetic */ Ripple(boolean z6, float f, State state, k kVar) {
        this(z6, f, state);
    }

    @Composable
    @NotNull
    public abstract RippleIndicationInstance b(@NotNull InteractionSource interactionSource, boolean z6, float f, @NotNull State<Color> state, @NotNull State<RippleAlpha> state2, @Nullable Composer composer, int i10);

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Ripple)) {
            return false;
        }
        Ripple ripple = (Ripple) obj;
        return this.bounded == ripple.bounded && Dp.i(this.radius, ripple.radius) && t.e(this.color, ripple.color);
    }

    private Ripple(boolean z6, float f, State<Color> state) {
        this.bounded = z6;
        this.radius = f;
        this.color = state;
    }

    @Override // androidx.compose.foundation.Indication
    @Composable
    @NotNull
    public final IndicationInstance a(@NotNull InteractionSource interactionSource, @Nullable Composer composer, int i10) {
        t.j(interactionSource, "interactionSource");
        composer.G(988743187);
        RippleTheme rippleTheme = (RippleTheme) composer.x(RippleThemeKt.d());
        composer.G(-1524341038);
        long jV = this.color.getValue().v() != Color.Companion.f() ? this.color.getValue().v() : rippleTheme.a(composer, 0);
        composer.Q();
        RippleIndicationInstance rippleIndicationInstanceB = b(interactionSource, this.bounded, this.radius, SnapshotStateKt.n(Color.h(jV), composer, 0), SnapshotStateKt.n(rippleTheme.b(composer, 0), composer, 0), composer, (i10 & 14) | ((i10 << 12) & 458752));
        EffectsKt.e(rippleIndicationInstanceB, interactionSource, new Ripple$rememberUpdatedInstance$1(interactionSource, rippleIndicationInstanceB, null), composer, ((i10 << 3) & 112) | 8);
        composer.Q();
        return rippleIndicationInstanceB;
    }

    public int hashCode() {
        return (((c.a(this.bounded) * 31) + Dp.j(this.radius)) * 31) + this.color.hashCode();
    }
}
