package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.MutatorMutex;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import e8.p;
import e8.q;
import kotlin.coroutines.d;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import w7.l0;

/* JADX INFO: loaded from: classes.dex */
final class DefaultTransformableState implements TransformableState {

    @NotNull
    private final MutableState<Boolean> isTransformingState;

    @NotNull
    private final q<Float, Offset, Float, l0> onTransformation;

    @NotNull
    private final MutatorMutex transformMutex;

    @NotNull
    private final TransformScope transformScope;

    @NotNull
    public final q<Float, Offset, Float, l0> e() {
        return this.onTransformation;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public DefaultTransformableState(@NotNull q<? super Float, ? super Offset, ? super Float, l0> onTransformation) {
        t.j(onTransformation, "onTransformation");
        this.onTransformation = onTransformation;
        this.transformScope = new TransformScope() { // from class: androidx.compose.foundation.gestures.DefaultTransformableState$transformScope$1
            @Override // androidx.compose.foundation.gestures.TransformScope
            public void a(float f, long j6, float f6) {
                this.this$0.e().invoke(Float.valueOf(f), Offset.d(j6), Float.valueOf(f6));
            }
        };
        this.transformMutex = new MutatorMutex();
        this.isTransformingState = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);
    }

    @Override // androidx.compose.foundation.gestures.TransformableState
    @Nullable
    public Object a(@NotNull MutatePriority mutatePriority, @NotNull p<? super TransformScope, ? super d<? super l0>, ? extends Object> pVar, @NotNull d<? super l0> dVar) {
        Object objF = p0.f(new DefaultTransformableState$transform$2(this, mutatePriority, pVar, null), dVar);
        return objF == kotlin.coroutines.intrinsics.d.e() ? objF : l0.INSTANCE;
    }
}
