package androidx.compose.foundation.gestures;

import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$draggable$5 extends v implements e8.a<Boolean> {
    final /* synthetic */ boolean $startDragImmediately;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DraggableKt$draggable$5(boolean z6) {
        super(0);
        this.$startDragImmediately = z6;
    }

    @Override // e8.a
    @NotNull
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke() {
        return Boolean.valueOf(this.$startDragImmediately);
    }
}
