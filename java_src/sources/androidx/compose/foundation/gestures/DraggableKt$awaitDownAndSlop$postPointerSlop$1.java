package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import e8.p;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$awaitDownAndSlop$postPointerSlop$1 extends v implements p<PointerInputChange, Float, l0> {
    final /* synthetic */ m0 $initialDelta;
    final /* synthetic */ VelocityTracker $velocityTracker;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DraggableKt$awaitDownAndSlop$postPointerSlop$1(VelocityTracker velocityTracker, m0 m0Var) {
        super(2);
        this.$velocityTracker = velocityTracker;
        this.$initialDelta = m0Var;
    }

    public final void a(@NotNull PointerInputChange event, float f) {
        t.j(event, "event");
        VelocityTrackerKt.b(this.$velocityTracker, event);
        event.a();
        this.$initialDelta.element = f;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange, Float f) {
        a(pointerInputChange, f.floatValue());
        return l0.INSTANCE;
    }
}
