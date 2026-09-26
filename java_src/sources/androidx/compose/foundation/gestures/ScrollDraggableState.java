package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.nestedscroll.NestedScrollSource;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes2.dex */
final class ScrollDraggableState implements PointerAwareDraggableState, PointerAwareDragScope {

    @NotNull
    private ScrollScope latestScrollScope;

    @NotNull
    private final State<ScrollingLogic> scrollLogic;

    public final void c(@NotNull ScrollScope scrollScope) {
        t.j(scrollScope, "<set-?>");
        this.latestScrollScope = scrollScope;
    }

    public ScrollDraggableState(@NotNull State<ScrollingLogic> scrollLogic) {
        t.j(scrollLogic, "scrollLogic");
        this.scrollLogic = scrollLogic;
        this.latestScrollScope = ScrollableKt.NoOpScrollScope;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDragScope
    public void a(float f, long j6) {
        ScrollingLogic value = this.scrollLogic.getValue();
        value.a(this.latestScrollScope, value.l(f), Offset.d(j6), NestedScrollSource.Companion.a());
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super PointerAwareDragScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objB = this.scrollLogic.getValue().d().b(mutatePriority, new ScrollDraggableState$drag$2(this, pVar, null), dVar);
        return objB == kotlin.coroutines.intrinsics.d.e() ? objB : l0.INSTANCE;
    }
}
