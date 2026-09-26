package androidx.lifecycle.compose;

import androidx.compose.runtime.Composable;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import kotlin.coroutines.h;
import kotlin.jvm.internal.t;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.flow.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
public final class FlowExtKt {
    @Composable
    @NotNull
    public static final <T> State<T> a(@NotNull g<? extends T> gVar, T t5, @NotNull Lifecycle lifecycle, @Nullable Lifecycle.State state, @Nullable kotlin.coroutines.g gVar2, @Nullable Composer composer, int i10, int i11) {
        t.j(gVar, "<this>");
        t.j(lifecycle, "lifecycle");
        composer.G(1977777920);
        if ((i11 & 4) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 8) != 0) {
            gVar2 = h.INSTANCE;
        }
        kotlin.coroutines.g gVar3 = gVar2;
        Object[] objArr = {gVar, lifecycle, state2, gVar3};
        FlowExtKt$collectAsStateWithLifecycle$1 flowExtKt$collectAsStateWithLifecycle$1 = new FlowExtKt$collectAsStateWithLifecycle$1(lifecycle, state2, gVar3, gVar, null);
        int i12 = i10 >> 3;
        State<T> stateL = SnapshotStateKt.l(t5, objArr, flowExtKt$collectAsStateWithLifecycle$1, composer, (i12 & 14) | (i12 & 8) | 576);
        composer.Q();
        return stateL;
    }

    @Composable
    @NotNull
    public static final <T> State<T> b(@NotNull l0<? extends T> l0Var, @Nullable LifecycleOwner lifecycleOwner, @Nullable Lifecycle.State state, @Nullable kotlin.coroutines.g gVar, @Nullable Composer composer, int i10, int i11) {
        t.j(l0Var, "<this>");
        composer.G(743249048);
        if ((i11 & 1) != 0) {
            lifecycleOwner = (LifecycleOwner) composer.x(AndroidCompositionLocals_androidKt.i());
        }
        if ((i11 & 2) != 0) {
            state = Lifecycle.State.STARTED;
        }
        Lifecycle.State state2 = state;
        if ((i11 & 4) != 0) {
            gVar = h.INSTANCE;
        }
        State<T> stateA = a(l0Var, l0Var.getValue(), lifecycleOwner.getLifecycle(), state2, gVar, composer, ((i10 << 3) & 7168) | 33288, 0);
        composer.Q();
        return stateA;
    }
}
