package androidx.compose.animation;

import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@ExperimentalAnimationApi
public final class AnimatedVisibilityScopeImpl implements AnimatedVisibilityScope {

    @NotNull
    private final MutableState<IntSize> targetSize;

    @NotNull
    private Transition<EnterExitState> transition;

    @Override // androidx.compose.animation.AnimatedVisibilityScope
    @NotNull
    public Transition<EnterExitState> a() {
        return this.transition;
    }

    @NotNull
    public final MutableState<IntSize> b() {
        return this.targetSize;
    }

    public AnimatedVisibilityScopeImpl(@NotNull Transition<EnterExitState> transition) {
        t.j(transition, "transition");
        this.transition = transition;
        this.targetSize = SnapshotStateKt__SnapshotStateKt.e(IntSize.b(IntSize.Companion.a()), null, 2, null);
    }
}
