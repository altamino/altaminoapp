package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
final class ScrollableKt$pointerScrollable$1 extends v implements p<Composer, Integer, PointerAwareDraggableState> {
    final /* synthetic */ ScrollDraggableState $draggableState;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ScrollableKt$pointerScrollable$1(ScrollDraggableState scrollDraggableState) {
        super(2);
        this.$draggableState = scrollDraggableState;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ PointerAwareDraggableState invoke(Composer composer, Integer num) {
        return a(composer, num.intValue());
    }

    @Composable
    @NotNull
    public final PointerAwareDraggableState a(@Nullable Composer composer, int i10) {
        composer.G(498671830);
        ScrollDraggableState scrollDraggableState = this.$draggableState;
        composer.Q();
        return scrollDraggableState;
    }
}
