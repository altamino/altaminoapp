package androidx.compose.material.ripple;

import androidx.compose.foundation.IndicationInstance;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.State;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes8.dex */
public abstract class RippleIndicationInstance implements IndicationInstance {

    @NotNull
    private final StateLayer stateLayer;

    public abstract void e(@NotNull PressInteraction.Press press, @NotNull o0 o0Var);

    public abstract void g(@NotNull PressInteraction.Press press);

    public RippleIndicationInstance(boolean z6, @NotNull State<RippleAlpha> rippleAlpha) {
        t.j(rippleAlpha, "rippleAlpha");
        this.stateLayer = new StateLayer(z6, rippleAlpha);
    }

    public final void f(@NotNull DrawScope drawStateLayer, float f, long j6) {
        t.j(drawStateLayer, "$this$drawStateLayer");
        this.stateLayer.b(drawStateLayer, f, j6);
    }

    public final void h(@NotNull Interaction interaction, @NotNull o0 scope) {
        t.j(interaction, "interaction");
        t.j(scope, "scope");
        this.stateLayer.c(interaction, scope);
    }
}
