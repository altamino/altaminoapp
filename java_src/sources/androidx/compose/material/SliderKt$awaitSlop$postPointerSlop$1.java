package androidx.compose.material;

import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.p;
import kotlin.jvm.internal.m0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$awaitSlop$postPointerSlop$1 extends v implements p<PointerInputChange, Float, l0> {
    final /* synthetic */ m0 $initialDelta;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SliderKt$awaitSlop$postPointerSlop$1(m0 m0Var) {
        super(2);
        this.$initialDelta = m0Var;
    }

    public final void a(@NotNull PointerInputChange pointerInput, float f) {
        t.j(pointerInput, "pointerInput");
        pointerInput.a();
        this.$initialDelta.element = f;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange, Float f) {
        a(pointerInputChange, f.floatValue());
        return l0.INSTANCE;
    }
}
