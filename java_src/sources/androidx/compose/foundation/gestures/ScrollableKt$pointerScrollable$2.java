package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import e8.l;
import kotlin.jvm.internal.t;
import kotlin.jvm.internal.v;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes3.dex */
final class ScrollableKt$pointerScrollable$2 extends v implements l<PointerInputChange, Boolean> {
    public static final ScrollableKt$pointerScrollable$2 INSTANCE = new ScrollableKt$pointerScrollable$2();

    ScrollableKt$pointerScrollable$2() {
        super(1);
    }

    @Override // e8.l
    @NotNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final Boolean invoke(@NotNull PointerInputChange down) {
        t.j(down, "down");
        return Boolean.valueOf(!PointerType.h(down.k(), PointerType.Companion.b()));
    }
}
