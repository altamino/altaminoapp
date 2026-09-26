package androidx.compose.material;

import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.l;
import e8.p;
import kotlin.jvm.internal.k0;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1 extends v implements l<PointerInputChange, l0> {
    final /* synthetic */ k0 $draggingStart;
    final /* synthetic */ boolean $isRtl;
    final /* synthetic */ State<p<Boolean, Float, l0>> $onDrag;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    SliderKt$rangeSliderPressDragModifier$1$1$1$1$finishInteraction$success$1(State<? extends p<? super Boolean, ? super Float, l0>> state, k0 k0Var, boolean z6) {
        super(1);
        this.$onDrag = state;
        this.$draggingStart = k0Var;
        this.$isRtl = z6;
    }

    public final void a(@NotNull PointerInputChange it) {
        t.j(it, "it");
        float fM = Offset.m(PointerEventKt.g(it));
        p<Boolean, Float, l0> value = this.$onDrag.getValue();
        Boolean boolValueOf = Boolean.valueOf(this.$draggingStart.element);
        if (this.$isRtl) {
            fM = -fM;
        }
        value.invoke(boolValueOf, Float.valueOf(fM));
    }

    @Override // e8.l
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange) {
        a(pointerInputChange);
        return l0.INSTANCE;
    }
}
