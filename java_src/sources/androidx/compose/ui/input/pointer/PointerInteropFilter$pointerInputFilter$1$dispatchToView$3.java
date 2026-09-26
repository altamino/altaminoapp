package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class PointerInteropFilter$pointerInputFilter$1$dispatchToView$3 extends v implements l<MotionEvent, l0> {
    final /* synthetic */ PointerInteropFilter$pointerInputFilter$1 this$0;
    final /* synthetic */ PointerInteropFilter this$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PointerInteropFilter$pointerInputFilter$1$dispatchToView$3(PointerInteropFilter$pointerInputFilter$1 pointerInteropFilter$pointerInputFilter$1, PointerInteropFilter pointerInteropFilter) {
        super(1);
        this.this$0 = pointerInteropFilter$pointerInputFilter$1;
        this.this$1 = pointerInteropFilter;
    }

    public final void a(@NotNull MotionEvent motionEvent) {
        t.j(motionEvent, "motionEvent");
        if (motionEvent.getActionMasked() != 0) {
            this.this$1.b().invoke(motionEvent);
        } else {
            this.this$0.state = this.this$1.b().invoke(motionEvent).booleanValue() ? PointerInteropFilter.DispatchToViewState.Dispatching : PointerInteropFilter.DispatchToViewState.NotDispatching;
        }
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(MotionEvent motionEvent) {
        a(motionEvent);
        return l0.INSTANCE;
    }
}
