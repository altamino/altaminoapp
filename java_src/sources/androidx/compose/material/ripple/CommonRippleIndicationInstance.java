package androidx.compose.material.ripple;

import androidx.compose.foundation.interaction.PressInteraction;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.snapshots.SnapshotStateMap;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.k;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
public final class CommonRippleIndicationInstance extends RippleIndicationInstance implements RememberObserver {
    private final boolean bounded;

    @NotNull
    private final State<Color> color;
    private final float radius;

    @NotNull
    private final State<RippleAlpha> rippleAlpha;

    @NotNull
    private final SnapshotStateMap<PressInteraction.Press, RippleAnimation> ripples;

    public /* synthetic */ CommonRippleIndicationInstance(boolean z6, float f, State state, State state2, k kVar) {
        this(z6, f, state, state2);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void b() {
    }

    private CommonRippleIndicationInstance(boolean z6, float f, State<Color> state, State<RippleAlpha> state2) {
        super(z6, state2);
        this.bounded = z6;
        this.radius = f;
        this.color = state;
        this.rippleAlpha = state2;
        this.ripples = SnapshotStateKt.f();
    }

    private final void j(DrawScope drawScope, long j6) {
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            RippleAnimation value = it.next().getValue();
            float fD = this.rippleAlpha.getValue().d();
            if (fD != 0.0f) {
                value.e(drawScope, Color.l(j6, fD, 0.0f, 0.0f, 0.0f, 14, null));
            }
        }
    }

    @Override // androidx.compose.foundation.IndicationInstance
    public void a(@NotNull ContentDrawScope contentDrawScope) {
        t.j(contentDrawScope, "<this>");
        long jV = this.color.getValue().v();
        contentDrawScope.Z();
        f(contentDrawScope, this.radius, jV);
        j(contentDrawScope, jV);
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void c() {
        this.ripples.clear();
    }

    @Override // androidx.compose.runtime.RememberObserver
    public void d() {
        this.ripples.clear();
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void e(@NotNull PressInteraction.Press interaction, @NotNull o0 scope) {
        t.j(interaction, "interaction");
        t.j(scope, "scope");
        Iterator<Map.Entry<PressInteraction.Press, RippleAnimation>> it = this.ripples.entrySet().iterator();
        while (it.hasNext()) {
            it.next().getValue().h();
        }
        RippleAnimation rippleAnimation = new RippleAnimation(this.bounded ? Offset.d(interaction.a()) : null, this.radius, this.bounded, null);
        this.ripples.put(interaction, rippleAnimation);
        kotlinx.coroutines.k.d(scope, null, null, new CommonRippleIndicationInstance$addRipple$2(rippleAnimation, this, interaction, null), 3, null);
    }

    @Override // androidx.compose.material.ripple.RippleIndicationInstance
    public void g(@NotNull PressInteraction.Press interaction) {
        t.j(interaction, "interaction");
        RippleAnimation rippleAnimation = this.ripples.get(interaction);
        if (rippleAnimation != null) {
            rippleAnimation.h();
        }
    }
}
