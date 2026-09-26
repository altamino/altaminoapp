package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.p;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class LongPressTextDragObserverKt$detectDragGesturesWithObserver$5 extends v implements p<PointerInputChange, Offset, l0> {
    final /* synthetic */ TextDragObserver $observer;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LongPressTextDragObserverKt$detectDragGesturesWithObserver$5(TextDragObserver textDragObserver) {
        super(2);
        this.$observer = textDragObserver;
    }

    public final void a(@NotNull PointerInputChange pointerInputChange, long j6) {
        t.j(pointerInputChange, "<anonymous parameter 0>");
        this.$observer.b(j6);
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ l0 invoke(PointerInputChange pointerInputChange, Offset offset) {
        a(pointerInputChange, offset.u());
        return l0.INSTANCE;
    }
}
