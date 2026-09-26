package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
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

/* JADX INFO: loaded from: classes5.dex */
final class DefaultScrollableState implements ScrollableState {

    @NotNull
    private final MutableState<Boolean> isScrollingState;

    @NotNull
    private final l<Float, Float> onDelta;

    @NotNull
    private final MutatorMutex scrollMutex;

    @NotNull
    private final ScrollScope scrollScope;

    @NotNull
    public final l<Float, Float> g() {
        return this.onDelta;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultScrollableState(@NotNull l<? super Float, Float> onDelta) {
        t.j(onDelta, "onDelta");
        this.onDelta = onDelta;
        this.scrollScope = new ScrollScope() { // from class: androidx.compose.foundation.gestures.DefaultScrollableState$scrollScope$1
            @Override // androidx.compose.foundation.gestures.ScrollScope
            public float a(float f) {
                return this.this$0.g().invoke(Float.valueOf(f)).floatValue();
            }
        };
        this.scrollMutex = new MutatorMutex();
        this.isScrollingState = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float a(float f) {
        return this.onDelta.invoke(Float.valueOf(f)).floatValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    @Nullable
    public Object b(@NotNull MutatePriority mutatePriority, @NotNull p<? super ScrollScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new DefaultScrollableState$scroll$2(this, mutatePriority, pVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean c() {
        return this.isScrollingState.getValue().booleanValue();
    }
}
