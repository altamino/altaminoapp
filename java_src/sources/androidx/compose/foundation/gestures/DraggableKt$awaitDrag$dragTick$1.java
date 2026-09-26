package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.util.VelocityTracker;
import androidx.compose.ui.input.pointer.util.VelocityTrackerKt;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import kotlinx.coroutines.channels.u;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$awaitDrag$dragTick$1 extends v implements l<PointerInputChange, l0> {
    final /* synthetic */ u<DragEvent> $channel;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ boolean $reverseDirection;
    final /* synthetic */ VelocityTracker $velocityTracker;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    DraggableKt$awaitDrag$dragTick$1(VelocityTracker velocityTracker, Orientation orientation, u<? super DragEvent> uVar, boolean z6) {
        super(1);
        this.$velocityTracker = velocityTracker;
        this.$orientation = orientation;
        this.$channel = uVar;
        this.$reverseDirection = z6;
    }

    public final void a(@NotNull PointerInputChange event) {
        t.j(event, "event");
        VelocityTrackerKt.b(this.$velocityTracker, event);
        float fL = DraggableKt.l(PointerEventKt.g(event), this.$orientation);
        event.a();
        u<DragEvent> uVar = this.$channel;
        if (this.$reverseDirection) {
            fL *= -1;
        }
        uVar.p(new DragEvent.DragDelta(fL, event.f(), null));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange) {
        a(pointerInputChange);
        return l0.INSTANCE;
    }
}
