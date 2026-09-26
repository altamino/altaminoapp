package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes5.dex */
final class IgnorePointerDraggableState implements PointerAwareDraggableState, PointerAwareDragScope {

    @Nullable
    private DragScope latestConsumptionScope;

    @NotNull
    private final DraggableState origin;

    public final void c(@Nullable DragScope dragScope) {
        this.latestConsumptionScope = dragScope;
    }

    public IgnorePointerDraggableState(@NotNull DraggableState origin) {
        t.j(origin, "origin");
        this.origin = origin;
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDragScope
    public void a(float f, long j6) {
        DragScope dragScope = this.latestConsumptionScope;
        if (dragScope != null) {
            dragScope.a(f);
        }
    }

    @Override // androidx.compose.foundation.gestures.PointerAwareDraggableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super PointerAwareDragScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objB = this.origin.b(mutatePriority, new IgnorePointerDraggableState$drag$2(this, pVar, null), dVar);
        return objB == kotlin.coroutines.intrinsics.d.e() ? objB : l0.INSTANCE;
    }
}
