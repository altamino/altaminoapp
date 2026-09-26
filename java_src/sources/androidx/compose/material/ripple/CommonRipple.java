package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Stable;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.Color;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Stable
public final class CommonRipple extends Ripple {
    public /* synthetic */ CommonRipple(boolean z6, float f, State state, k kVar) {
        this(z6, f, state);
    }

    private CommonRipple(boolean z6, float f, State<Color> state) {
        super(z6, f, state, null);
    }

    @Override // androidx.compose.material.ripple.Ripple
    @Composable
    @NotNull
    public RippleIndicationInstance b(@NotNull InteractionSource interactionSource, boolean z6, float f, @NotNull State<Color> color, @NotNull State<RippleAlpha> rippleAlpha, @Nullable Composer composer, int i10) {
        t.j(interactionSource, "interactionSource");
        t.j(color, "color");
        t.j(rippleAlpha, "rippleAlpha");
        composer.G(-1768051227);
        composer.G(-3686552);
        boolean zK = composer.k(interactionSource) | composer.k(this);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new CommonRippleIndicationInstance(z6, f, color, rippleAlpha, null);
            composer.z(objH);
        }
        composer.Q();
        CommonRippleIndicationInstance commonRippleIndicationInstance = (CommonRippleIndicationInstance) objH;
        composer.Q();
        return commonRippleIndicationInstance;
    }
}
