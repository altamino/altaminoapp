package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes4.dex */
final class DefaultDraggableState implements DraggableState {

    @NotNull
    private final DragScope dragScope;

    @NotNull
    private final l<Float, l0> onDelta;

    @NotNull
    private final MutatorMutex scrollMutex;

    @NotNull
    public final l<Float, l0> e() {
        return this.onDelta;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultDraggableState(@NotNull l<? super Float, l0> onDelta) {
        t.j(onDelta, "onDelta");
        this.onDelta = onDelta;
        this.dragScope = new DragScope() { // from class: androidx.compose.foundation.gestures.DefaultDraggableState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void a(float f) {
                this.this$0.e().invoke(Float.valueOf(f));
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void a(float f) {
        this.onDelta.invoke(Float.valueOf(f));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super DragScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new DefaultDraggableState$drag$2(this, mutatePriority, pVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }
}
