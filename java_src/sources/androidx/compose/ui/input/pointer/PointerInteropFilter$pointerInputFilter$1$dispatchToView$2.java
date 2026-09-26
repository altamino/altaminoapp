package androidx.compose.ui.input.pointer;

import android.view.MotionEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes3.dex */
final class PointerInteropFilter$pointerInputFilter$1$dispatchToView$2 extends v implements l<MotionEvent, l0> {
    final /* synthetic */ PointerInteropFilter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    PointerInteropFilter$pointerInputFilter$1$dispatchToView$2(PointerInteropFilter pointerInteropFilter) {
        super(1);
        this.this$0 = pointerInteropFilter;
    }

    public final void a(@NotNull MotionEvent motionEvent) {
        t.j(motionEvent, "motionEvent");
        this.this$0.b().invoke(motionEvent);
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(MotionEvent motionEvent) {
        a(motionEvent);
        return l0.INSTANCE;
    }
}
