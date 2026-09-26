package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import e8.l;
import e8.p;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes6.dex */
final class SliderDraggableState implements DraggableState {

    @NotNull
    private final DragScope dragScope;

    @NotNull
    private final MutableState isDragging$delegate;

    @NotNull
    private final l<Float, l0> onDelta;

    @NotNull
    private final MutatorMutex scrollMutex;

    @NotNull
    public final l<Float, l0> f() {
        return this.onDelta;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SliderDraggableState(@NotNull l<? super Float, l0> onDelta) {
        t.j(onDelta, "onDelta");
        this.onDelta = onDelta;
        this.isDragging$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
        this.dragScope = new DragScope() { // from class: androidx.compose.material.SliderDraggableState$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public void a(float f) {
                this.this$0.f().invoke(Float.valueOf(f));
            }
        };
        this.scrollMutex = new MutatorMutex();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h(boolean z6) {
        this.isDragging$delegate.setValue(Boolean.valueOf(z6));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public void a(float f) {
        this.onDelta.invoke(Float.valueOf(f));
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super DragScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new SliderDraggableState$drag$2(this, mutatePriority, pVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g() {
        return ((Boolean) this.isDragging$delegate.getValue()).booleanValue();
    }
}
