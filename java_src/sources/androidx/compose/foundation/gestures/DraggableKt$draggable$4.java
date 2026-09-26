package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class DraggableKt$draggable$4 extends v implements l<PointerInputChange, Boolean> {
    public static final DraggableKt$draggable$4 INSTANCE = new DraggableKt$draggable$4();

    DraggableKt$draggable$4() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull PointerInputChange it) {
        t.j(it, "it");
        return Boolean.TRUE;
    }
}
