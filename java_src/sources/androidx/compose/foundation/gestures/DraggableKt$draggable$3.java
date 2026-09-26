package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import e8.p;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$draggable$3 extends v implements p<Composer, Integer, PointerAwareDraggableState> {
    final /* synthetic */ DraggableState $state;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DraggableKt$draggable$3(DraggableState draggableState) {
        super(2);
        this.$state = draggableState;
    }

    @Override // e8.p
    public /* bridge */ /* synthetic */ PointerAwareDraggableState invoke(Composer composer, Integer num) {
        return a(composer, num.intValue());
    }

    @Composable
    @NotNull
    public final PointerAwareDraggableState a(@Nullable Composer composer, int i10) {
        composer.G(830271906);
        DraggableState draggableState = this.$state;
        composer.G(1157296644);
        boolean zK = composer.k(draggableState);
        Object objH = composer.H();
        if (zK || objH == Composer.Companion.a()) {
            objH = new IgnorePointerDraggableState(draggableState);
            composer.z(objH);
        }
        composer.Q();
        IgnorePointerDraggableState ignorePointerDraggableState = (IgnorePointerDraggableState) objH;
        composer.Q();
        return ignorePointerDraggableState;
    }
}
