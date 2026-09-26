package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.internal.StabilityInferred;
import kotlin.jvm.internal.t;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes11.dex */
@StabilityInferred
public final class AnimationResult<T, V extends AnimationVector> {
    public static final int $stable = 0;

    @NotNull
    private final AnimationEndReason endReason;

    @NotNull
    private final AnimationState<T, V> endState;

    @NotNull
    public final AnimationEndReason a() {
        return this.endReason;
    }

    @NotNull
    public final AnimationState<T, V> b() {
        return this.endState;
    }

    public AnimationResult(@NotNull AnimationState<T, V> endState, @NotNull AnimationEndReason endReason) {
        t.j(endState, "endState");
        t.j(endReason, "endReason");
        this.endState = endState;
        this.endReason = endReason;
    }

    @NotNull
    public String toString() {
        return "AnimationResult(endReason=" + this.endReason + ", endState=" + this.endState + ')';
    }
}
