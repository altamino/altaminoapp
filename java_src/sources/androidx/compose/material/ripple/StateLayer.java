package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.foundation.interaction.DragInteraction;
import androidx.compose.foundation.interaction.FocusInteraction;
import androidx.compose.foundation.interaction.HoverInteraction;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.ClipOp;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.DrawContext;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.d0;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes8.dex */
final class StateLayer {

    @NotNull
    private final Animatable<Float, AnimationVector1D> animatedAlpha;
    private final boolean bounded;

    @Nullable
    private Interaction currentInteraction;

    @NotNull
    private final List<Interaction> interactions;

    @NotNull
    private final State<RippleAlpha> rippleAlpha;

    public StateLayer(boolean z6, @NotNull State<RippleAlpha> rippleAlpha) {
        t.j(rippleAlpha, "rippleAlpha");
        this.bounded = z6;
        this.rippleAlpha = rippleAlpha;
        this.animatedAlpha = AnimatableKt.b(0.0f, 0.0f, 2, null);
        this.interactions = new ArrayList();
    }

    public final void b(@NotNull DrawScope drawStateLayer, float f, long j6) {
        t.j(drawStateLayer, "$this$drawStateLayer");
        float fA = Float.isNaN(f) ? RippleAnimationKt.a(drawStateLayer, this.bounded, drawStateLayer.c()) : drawStateLayer.H0(f);
        float fFloatValue = this.animatedAlpha.n().floatValue();
        if (fFloatValue > 0.0f) {
            long jL = Color.l(j6, fFloatValue, 0.0f, 0.0f, 0.0f, 14, null);
            if (!this.bounded) {
                androidx.compose.ui.graphics.drawscope.a.e(drawStateLayer, jL, fA, 0L, 0.0f, null, null, 0, 124, null);
                return;
            }
            float fI = Size.i(drawStateLayer.c());
            float fG = Size.g(drawStateLayer.c());
            int iB = ClipOp.Companion.b();
            DrawContext drawContextT = drawStateLayer.T();
            long jC = drawContextT.c();
            drawContextT.a().r();
            drawContextT.d().a(0.0f, 0.0f, fI, fG, iB);
            androidx.compose.ui.graphics.drawscope.a.e(drawStateLayer, jL, fA, 0L, 0.0f, null, null, 0, 124, null);
            drawContextT.a().n();
            drawContextT.b(jC);
        }
    }

    public final void c(@NotNull Interaction interaction, @NotNull o0 scope) {
        float fA;
        t.j(interaction, "interaction");
        t.j(scope, "scope");
        boolean z6 = interaction instanceof HoverInteraction.Enter;
        if (z6) {
            this.interactions.add(interaction);
        } else if (interaction instanceof HoverInteraction.Exit) {
            this.interactions.remove(((HoverInteraction.Exit) interaction).a());
        } else if (interaction instanceof FocusInteraction.Focus) {
            this.interactions.add(interaction);
        } else if (interaction instanceof FocusInteraction.Unfocus) {
            this.interactions.remove(((FocusInteraction.Unfocus) interaction).a());
        } else if (interaction instanceof DragInteraction.Start) {
            this.interactions.add(interaction);
        } else if (interaction instanceof DragInteraction.Stop) {
            this.interactions.remove(((DragInteraction.Stop) interaction).a());
        } else if (!(interaction instanceof DragInteraction.Cancel)) {
            return;
        } else {
            this.interactions.remove(((DragInteraction.Cancel) interaction).a());
        }
        Interaction interaction2 = (Interaction) d0.w0(this.interactions);
        if (t.e(this.currentInteraction, interaction2)) {
            return;
        }
        if (interaction2 != null) {
            if (z6) {
                fA = this.rippleAlpha.getValue().c();
            } else if (interaction instanceof FocusInteraction.Focus) {
                fA = this.rippleAlpha.getValue().b();
            } else {
                fA = interaction instanceof DragInteraction.Start ? this.rippleAlpha.getValue().a() : 0.0f;
            }
            k.d(scope, null, null, new StateLayer$handleInteraction$1(this, fA, RippleKt.c(interaction2), null), 3, null);
        } else {
            k.d(scope, null, null, new StateLayer$handleInteraction$2(this, RippleKt.d(this.currentInteraction), null), 3, null);
        }
        this.currentInteraction = interaction2;
    }
}
