package androidx.compose.ui.input.rotary;

import androidx.compose.ui.input.focus.FocusAwareEvent;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes5.dex */
final class RotaryInputModifierKt$focusAwareCallback$1 extends v implements l<FocusAwareEvent, Boolean> {
    final /* synthetic */ l<RotaryScrollEvent, Boolean> $this_focusAwareCallback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    RotaryInputModifierKt$focusAwareCallback$1(l<? super RotaryScrollEvent, Boolean> lVar) {
        super(1);
        this.$this_focusAwareCallback = lVar;
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull FocusAwareEvent e) {
        t.j(e, "e");
        if (e instanceof RotaryScrollEvent) {
            return this.$this_focusAwareCallback.invoke(e);
        }
        throw new IllegalStateException("FocusAwareEvent is dispatched to the wrong FocusAwareParent.".toString());
    }
}
