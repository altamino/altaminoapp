package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import g8.c;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes9.dex */
public final class AndroidRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;

    @NotNull
    private final State<Color> color;

    @NotNull
    private final MutableState invalidateTick$delegate;

    @NotNull
    private final e8.a<l0> onInvalidateRipple;
    private final float radius;

    @NotNull
    private final State<RippleAlpha> rippleAlpha;

    @NotNull
    private final RippleContainer rippleContainer;

    @NotNull
    private final MutableState rippleHostView$delegate;
    private int rippleRadius;
    private long rippleSize;

    public /* synthetic */ AndroidRippleIndicationInstance(boolean z6, float f, State state, State state2, RippleContainer rippleContainer, k kVar) {
        this(z6, f, state, state2, rippleContainer);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
    }

    public final void n() {
        p(null);
    }

    private AndroidRippleIndicationInstance(boolean z6, float f, State<Color> state, State<RippleAlpha> state2, RippleContainer rippleContainer) {
        super(z6, state2);
        this.bounded = z6;
        this.radius = f;
        this.color = state;
        this.rippleAlpha = state2;
        this.rippleContainer = rippleContainer;
        this.rippleHostView$delegate = SnapshotStateKt__SnapshotStateKt.e(null, null, 2, null);
        this.invalidateTick$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.TRUE, null, 2, null);
        this.rippleSize = Size.Companion.b();
        this.rippleRadius = -1;
        this.onInvalidateRipple = new AndroidRippleIndicationInstance$onInvalidateRipple$1(this);
    }

    private final void k() {
        this.rippleContainer.a(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final boolean l() {
        return ((Boolean) this.invalidateTick$delegate.getValue()).booleanValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final RippleHostView m() {
        return (RippleHostView) this.rippleHostView$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void o(boolean z6) {
        this.invalidateTick$delegate.setValue(Boolean.valueOf(z6));
    }

    private final void p(RippleHostView rippleHostView) {
        this.rippleHostView$delegate.setValue(rippleHostView);
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void a(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        this.rippleSize = contentDrawScope.c();
        this.rippleRadius = Float.isNaN(this.radius) ? c.c(RippleAnimationKt.a(contentDrawScope, this.bounded, contentDrawScope.c())) : contentDrawScope.j0(this.radius);
        long jV = this.color.getValue().v();
        float fD = this.rippleAlpha.getValue().d();
        contentDrawScope.Z();
        f(contentDrawScope, this.radius, jV);
        Canvas canvasA = contentDrawScope.T().a();
        l();
        RippleHostView rippleHostViewM = m();
        if (rippleHostViewM != null) {
            rippleHostViewM.f(contentDrawScope.c(), this.rippleRadius, jV, fD);
            rippleHostViewM.draw(AndroidCanvas_androidKt.c(canvasA));
        }
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void e(@NotNull PressInteraction.Press interaction, @NotNull o0 scope) {
        t.j(interaction, "interaction");
        t.j(scope, "scope");
        RippleHostView rippleHostViewB = this.rippleContainer.b(this);
        rippleHostViewB.b(interaction, this.bounded, this.rippleSize, this.rippleRadius, this.color.getValue().v(), this.rippleAlpha.getValue().d(), this.onInvalidateRipple);
        p(rippleHostViewB);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void g(@NotNull PressInteraction.Press interaction) {
        t.j(interaction, "interaction");
        RippleHostView rippleHostViewM = m();
        if (rippleHostViewM != null) {
            rippleHostViewM.e();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        k();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        k();
    }
}
