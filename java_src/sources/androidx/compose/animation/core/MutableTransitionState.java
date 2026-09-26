package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.runtime.internal.StabilityInferred;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes10.dex */
@StabilityInferred
public final class MutableTransitionState<S> {
    public static final int $stable = 0;

    @NotNull
    private final MutableState currentState$delegate;

    @NotNull
    private final MutableState isRunning$delegate = SnapshotStateKt__SnapshotStateKt.e(Boolean.FALSE, null, 2, null);

    @NotNull
    private final MutableState targetState$delegate;

    public final S a() {
        return (S) this.currentState$delegate.getValue();
    }

    public final S b() {
        return (S) this.targetState$delegate.getValue();
    }

    public final void c(S s) {
        this.currentState$delegate.setValue(s);
    }

    public final void d(boolean z6) {
        this.isRunning$delegate.setValue(Boolean.valueOf(z6));
    }

    public final void e(S s) {
        this.targetState$delegate.setValue(s);
    }

    public MutableTransitionState(S s) {
        this.currentState$delegate = SnapshotStateKt__SnapshotStateKt.e(s, null, 2, null);
        this.targetState$delegate = SnapshotStateKt__SnapshotStateKt.e(s, null, 2, null);
    }
}
