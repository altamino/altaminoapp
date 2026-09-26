package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.p;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1 extends v implements p<PointerInputChange, Float, l0> {
    final /* synthetic */ m0 $overSlop;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DragGestureDetectorKt$detectVerticalDragGestures$5$1$drag$1(m0 m0Var) {
        super(2);
        this.$overSlop = m0Var;
    }

    public final void a(@NotNull PointerInputChange change, float f) {
        t.j(change, "change");
        change.a();
        this.$overSlop.element = f;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange, Float f) {
        a(pointerInputChange, f.floatValue());
        return l0.INSTANCE;
    }
}
